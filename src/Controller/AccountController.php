<?php
//https://www.youtube.com/watch?v=zDIDiSP766Y
namespace App\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use App\Entity\User;

class AccountController extends AbstractController
{
    /**
     * @Route("/reset", name="reset")
     */
    public function reset(Request $request, UserPasswordEncoderInterface $passEncoder)
    {
        $form = $this->createFormBuilder()
            ->add("oldPassword", PasswordType::class,[
                'mapped' => false,
                'attr' => [
                    'class' => 'form-control'
                ]
            ])
        	->add("plainPassword", RepeatedType::class, [
        		'type' => PasswordType::class,
        		'required' => true,
        		'first_options' => [
        			'label' => 'Password',
        			'attr' => [
	        			'class' => 'form-control'
	        		]
        		],
        		'second_options' => [
        			'label' => 'Confirm Password',
        			'attr' => [
	        			'class' => 'form-control'
	        		]
        		],
        	])
        	->add('submit', SubmitType::class, [
        		'attr' => [
        			'class' => 'btn btn-lg btn-primary mt-3'
        		]
        	])
        	->getForm();

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()) {
        	$data = $form->getData();

        	$user = $this->getUser();
        	$user->setPassword(
        		$passEncoder->encodePassword($user, $data['plainPassword'])
        	);
        	$em = $this->getDoctrine()->getManager();
        	$em->persist($user);
        	$em->flush();

        	return $this->redirectToRoute('app_login');
        }
        
        return $this->render('register/index.html.twig', [
        	'form' => $form->createView()
        ]);
    }
}

<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use App\Entity\User;

class RegisterController extends AbstractController
{
    /**
     * @Route("/register", name="register")
     */
    public function register(Request $request, UserPasswordEncoderInterface $passEncoder)
    {
        $form = $this->createFormBuilder()
        	->add("username", null, [
        		'attr' => [
        			'class' => 'form-control'
        		]
        	])
        	->add("password", RepeatedType::class, [
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
        	->add('register', SubmitType::class, [
        		'attr' => [
        			'class' => 'btn btn-lg btn-primary mt-3'
        		]
        	])
        	->getForm();

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()) {
        	$data = $form->getData();

        	$user = new User();
        	$user->setUsername($data['username']);
        	$user->setPassword(
        		$passEncoder->encodePassword($user, $data['password'])
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

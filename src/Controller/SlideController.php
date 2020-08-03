<?php
	namespace App\Controller;

	use App\Entity\Slide;
	use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
	
	class SlideController extends AbstractController {

		public function slide() {
			$em = $this->getDoctrine()->getManager();
			$slides = $em->getRepository(Slide::class)->findAll();
			return $this->render('inc/slide.html.twig', ['slides' => $slides]);
		}
	}
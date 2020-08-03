<?php
	namespace App\Controller;
	use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

	class ErrorController extends AbstractController {
    public function show($exception)
    {
      return $this->render('bundles/TwigBundle/Exception/loi.html.twig', array(
        'code'=>$exception->getStatusCode(),
        'message' => $exception->getMessage()
      ));
    }
  }
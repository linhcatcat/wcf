<?php
  	namespace App\Controller;

  	use App\Entity\Article;
  	use App\Repository\ArticleRepository;
  	use Symfony\Component\HttpFoundation\Response;
  	use Symfony\Component\HttpFoundation\Request;
  	use Symfony\Component\Routing\Annotation\Route;
  	use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
  	use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
  	use Knp\Component\Pager\PaginatorInterface;

  	use Symfony\Component\Form\Extension\Core\Type\TextType;
  	use Symfony\Component\Form\Extension\Core\Type\TextareaType;
  	use Symfony\Component\Form\Extension\Core\Type\SubmitType;
  	use FOS\CKEditorBundle\Form\Type\CKEditorType;
  	use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
  	use Symfony\Component\HttpKernel\Profiler\Profiler;

	class ArticleController extends AbstractController {

		/**
	     * @Route("/test/{page}", name="article_list1", defaults={"page"=1})
	     */
	    public function list(ArticleRepository $repository, PaginatorInterface $paginator, $page)
	    {
	        $pagination = $paginator->paginate(
	            $repository->findAll(),
            	$page,
            	10
	        );

	        return $this->render('articles/list.html.twig', [
	            'pagination' => $pagination
	        ]);
	    }

	    /**
		* @Route("/send-mail", name="send_mail")
		* @Method({"GET"})
		*/
	    public function sendEmail(\Swift_Mailer $mailer)
		{
		    $message = (new \Swift_Message('Hello Email'))
		        ->setFrom('trancatlinh@gmail.com')
		        ->setTo('trancatlinh@gmail.com')
		        ->setBody('You should see me from the profiler!');
		    $mailer->send($message);

		    $resp = new Response();
			$resp->setStatusCode(200);
			$resp->setContent(json_encode(array('content' => ['hee' => 123], 'message' => 'Update menu successfully!')));
			return $resp;
		}

		/**
		* @Route("/article", name="article_list")
		* @Method({"GET"})
		*/
	    public function index(): Response
	    {
	        $articles = $this->getDoctrine()->getRepository(Article::class)->findAll();

	        return $this->render('articles/index.html.twig', array('articles' => $articles));
	    }

	    /**
	     * @Route("/article/new", name="new_article")
	     * Method({"POST"})
	     */
	    public function new(Request $request) {
	      $article = new Article();

	      $form = $this->createFormBuilder($article)
	        ->add('title', TextType::class, array('attr' => array('class' => 'form-control')))
	        ->add('body', CKEditorType::class, array(
	        	'config' => ['uiColor'=>'#e2e2e2', 'toolbar'=>'full', 'required'=>true, 'filebrowserBrowseRoute'=> 'elfinder', 'filebrowserBrowseRouteParameters'=> []],
	          	'required' => false,
	          	'attr' => array('class' => 'form-control')
	        ))
	        ->add('save', SubmitType::class, array(
	          'label' => 'Create',
	          'attr' => array('class' => 'btn btn-primary mt-3')
	        ))
	        ->getForm();

	      $form->handleRequest($request);

	      if($form->isSubmitted() && $form->isValid()) {
	        $article = $form->getData();

	        $entityManager = $this->getDoctrine()->getManager();
	        $entityManager->persist($article);
	        $entityManager->flush();

	        return $this->redirectToRoute('article_list');
	      }

	      return $this->render('articles/new.html.twig', array(
	        'form' => $form->createView()
	      ));
	    }

	    /**
	     * @Route("/article/edit/{id}", name="edit_article")
	     * Method({"GET", "POST"})
	     */
	    public function edit(Request $request, $id) {
	      	$article = new Article();
	      	$article = $this->getDoctrine()->getRepository(Article::class)->find($id);
			if (!$article) {
	      		//return $this->redirectToRoute('_preview_error', ['code'=>404]);
	      		//throw new HttpException(404, "Trang không tồn tại");
	      		throw $this->createNotFoundException('Sản phẩm không tồn tại');
	  		}

	      $form = $this->createFormBuilder($article)
	        ->add('title', TextType::class, array('attr' => array('class' => 'form-control')))
	        ->add('body', TextareaType::class, array(
	          'required' => false,
	          'attr' => array('class' => 'form-control')
	        ))
	        ->add('save', SubmitType::class, array(
	          'label' => 'Update',
	          'attr' => array('class' => 'btn btn-primary mt-3')
	        ))
	        ->getForm();

	      $form->handleRequest($request);

	      if($form->isSubmitted() && $form->isValid()) {

	        $entityManager = $this->getDoctrine()->getManager();
	        $entityManager->flush();

	        return $this->redirectToRoute('article_list');
	      }

	      return $this->render('articles/edit.html.twig', array(
	        'form' => $form->createView()
	      ));
	    }

	    /**
		* @Route("/article/save")
		*/
		public function save() {
			$entityManager = $this->getDoctrine()->getManager();

			$article = New Article();
			$article->setTitle("Article Two");
			$article->setBody("This is the body for article Two");

			$entityManager->persist($article);
			$entityManager->flush();

			return new Response('Saved an article with the id of '.$article->getId());
		}

		/**
	     * @Route("/article/{id}", name="article_show")
	     */
	    public function show($id) {
	      	$article = $this->getDoctrine()->getRepository(Article::class)->find($id);
	      	if (!$article) {
	      		//return $this->redirectToRoute('_preview_error', ['code'=>404]);
	      		//throw $this->createNotFoundException('Sản phẩm không tồn tại');
	      		throw new NotFoundHttpException('Sorry not existing!');
	  		}
	      	return $this->render('articles/show.html.twig', array('article' => $article));
	    }

	    /**
	     * @Route("/article/delete/{id}")
	     * @Method({"DELETE"})
	     */
	    public function delete(Request $request, $id) {
	      	$article = $this->getDoctrine()->getRepository(Article::class)->find($id);

	      	if (!$article) {
	      		return $this->redirectToRoute('_preview_error', ['code'=>404]);
	  		}

	      	$entityManager = $this->getDoctrine()->getManager();
	      	$entityManager->remove($article);
	      	$entityManager->flush();

	      	$response = new Response();
	      	$response->setStatusCode(200);
	      	$response->setContent(json_encode(array('success' => true, 'message' => 'Delete successfully')));

	      return $response;
	    }

	    /**
	     * @Route("/profile", name="app_profile")
	     */
	    public function profile(Profiler $profiler) {
	    	$tokens = $profiler->find('', '', 1, '', '', '');
	    	$profile = $profiler->loadProfile($tokens[0]['token']);
	       var_dump($tokens);
	       var_dump($profile);
	       exit;

	      
	      $response->setStatusCode(200);
	      $response->setContent(json_encode(array('success' => true, 'message' => 'Delete successfully')));

	      return $response;
	    }
	}
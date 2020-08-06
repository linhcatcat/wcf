<?php
	namespace App\Controller;

	use App\Entity\Intro;
	use App\Entity\ProductBlock;
	use App\Entity\Category;
	use App\Entity\Product;
	use App\Entity\Distribution;
	use App\Entity\Contact;
	use App\Entity\Notice;
	use App\Entity\ContactBlock;
	use App\Entity\NutritionInformation;
	use Symfony\Component\HttpFoundation\Response;
	use Symfony\Component\HttpFoundation\Request;
	use Symfony\Component\Routing\Annotation\Route;
	use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
	use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
	use Knp\Component\Pager\PaginatorInterface;

	use Symfony\Component\Form\Extension\Core\Type\TextType;
	use Symfony\Component\Form\Extension\Core\Type\TextareaType;
	use Symfony\Component\Form\Extension\Core\Type\SubmitType;
	use Symfony\Component\Form\Extension\Core\Type\EmailType;
	use FOS\CKEditorBundle\Form\Type\CKEditorType;
	use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
	use Symfony\Component\HttpKernel\Profiler\Profiler;

	class HomeController extends AbstractController {
		/**
		* @Route("/", name="home_page")
		* @Method({"GET"})
		*/
		public function home(): Response
		{
			$em = $this->getDoctrine()->getManager();
			$qb = $em->createQueryBuilder();

			$intro = $qb->select('i')
				->from(Intro::class,'i')
				->setFirstResult(0)
				->setMaxResults(1)
				->getQuery()
				->getOneOrNullResult();

			$product = $qb->select('pb')
				->from(ProductBlock::class,'pb')
				->setFirstResult(0)
				->setMaxResults(1)
				->getQuery()
				->getOneOrNullResult();

			$categories = $qb->select('c')
				->from(Category::class,'c')
				->setFirstResult(0)
				->setMaxResults(3)
				->getQuery()
				->getResult();

			$distribution = $qb->select('d')
				->from(Distribution::class,'d')
				->setFirstResult(0)
				->setMaxResults(1)
				->getQuery()
				->getOneOrNullResult();

			$notice = $qb->select('n')
				->from(Notice::class,'n')
				->andWhere('n.active = :active')
				->setParameter('active', true)
				->orderBy('n.createdAt', 'DESC')
				->setFirstResult(0)
				->setMaxResults(1)
				->getQuery()
				->getOneOrNullResult();

			$nutritions = $em->getRepository(NutritionInformation::class)->findAll();

			return $this->render('home/home.html.twig', [
				'intro' => $intro, 
				'product' => $product,
				'categories' => $categories,
				'distribution' => $distribution,
				'notice' => $notice,
				'nutritions' => $nutritions
			]);
		}

		public function productByCategory(Request $req) {
			$categoryId = $req->get('categoryId');
			$em = $this->getDoctrine()->getManager();
			$qb = $em->createQueryBuilder();
			$products = $qb->select('p')
				->from(Product::class,'p')
				->andWhere('p.category = :category')
				->setParameter('category', $categoryId)
				->setFirstResult(0)
				->setMaxResults(3)
				->getQuery()
				->getResult();
			return $this->render('home/product.html.twig', ['products' => $products]);
		}

		/**
		* @Route("/gioi-thieu", name="intro_page")
		* @Method({"GET"})
		*/
		public function intro(): Response
		{
			$em = $this->getDoctrine()->getManager();
			$qb = $em->createQueryBuilder();

			$intro = $qb->select('i')
				->from(Intro::class,'i')
				->setFirstResult(0)
				->setMaxResults(1)
				->getQuery()
				->getOneOrNullResult();

			return $this->render('home/intro.html.twig', ['intro' => $intro]);
		}

		/**
		* @Route("/he-thong-phan-phoi", name="distribution_page")
		* @Method({"GET"})
		*/
		public function distribution(): Response
		{
			$em = $this->getDoctrine()->getManager();
			$qb = $em->createQueryBuilder();

			$intro = $qb->select('i')
				->from(Distribution::class,'i')
				->setFirstResult(0)
				->setMaxResults(1)
				->getQuery()
				->getOneOrNullResult();

			return $this->render('home/intro.html.twig', ['intro' => $intro]);
		}

		/**
		* @Route("/lien-he", name="contact_page")
		* @Method({"POST"})
		*/
		public function contact(Request $request, \Swift_Mailer $mailer)
		{
			$contact = new Contact();

			$form = $this->createFormBuilder($contact)
			->add('name', TextType::class, array('required' => true, 'label' => 'Tên','attr' => array('class' => 'form-control')))
			->add('email', EmailType::class, array('required' => true, 'label' => 'Email','attr' => array('class' => 'form-control')))
			->add('subject', TextType::class, array('required' => true, 'label' => 'Tiêu đề','attr' => array('class' => 'form-control')))
			->add('content', TextareaType::class, array('required' => true, 'label' => 'Nội dung','attr' => array('class' => 'form-control')))
			->add('save', SubmitType::class, array(
				'label' => 'Gởi',
				'attr' => array('class' => 'btn btn-primary mt-3')
			))
			->getForm();

			$form->handleRequest($request);

			if($form->isSubmitted() && $form->isValid()) {
				$contact = $form->getData();

				$entityManager = $this->getDoctrine()->getManager();
				$entityManager->persist($contact);
				$entityManager->flush();

				$message = (new \Swift_Message($contact->getSubject()))
		        	->setFrom($contact->getEmail())
		        	->setTo('trancatlinh@gmail.com')
		        	->setBody($contact->getContent());
		    	$mailer->send($message);

				$this->addFlash('success', 'Bạn đã liên hệ thành công!');

				return $this->redirectToRoute('contact_page');
			}

			$em = $this->getDoctrine()->getManager();
			$qb = $em->createQueryBuilder();

			$ct = $qb->select('n')
				->from(ContactBlock::class,'n')
				->setFirstResult(0)
				->setMaxResults(1)
				->getQuery()
				->getOneOrNullResult();

			return $this->render('home/contact.html.twig', array(
				'form' => $form->createView(),
				'contact' => $ct
			));
		}
	}
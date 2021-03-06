<?php
	namespace App\Controller;

	use App\Entity\MenuFooter;
	use App\Entity\Youtube;
	use Symfony\Component\HttpFoundation\Response;
	use Symfony\Component\HttpFoundation\Request;
	use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
	use Symfony\Component\Routing\Annotation\Route;
	use function Symfony\Component\String\u;
	
	class MenuFooterController extends AbstractController {
		public function menuFooter(Request $req) {
			$currentPath = $req->get('currentPath');
			$em = $this->getDoctrine()->getManager();
			$qb = $em->createQueryBuilder();

 			$menus = $qb->select('m')
				->from(MenuFooter::class,'m')
				->where($qb->expr()->isNull('m.parent'))
				->orderBy('m.sort', 'ASC')
				->setFirstResult(0)
   				->setMaxResults(3)
				->getQuery()
				->getResult();

			$default = $qb->select('d')
				->from(Youtube::class,'d')
				->andWhere('d.active = :active')
				->setParameter('active', true)
				->setFirstResult(0)
				->setMaxResults(1)
				->getQuery()
				->getOneOrNullResult();

			$youtube = null;

			$youtubes = $em->getRepository(Youtube::class)->findAll();
			foreach ($youtubes as $y) {
    			if(u($currentPath)->containsAny(u($y->getLink())->split("*"))) {
    				$youtube = $y;
    			}
			}

			

			return $this->render('inc/menu_footer.html.twig', [
				'menus' => $menus,
				'youtube' => $youtube,
				'default' => $default
			]);
		}

		public function menuFooterSub(Request $req) {
			$parentId = $req->get('parentId');
			$col = $req->get('col');
			$em = $this->getDoctrine()->getManager();
			$subMenus = $em->getRepository(MenuFooter::class)->getSubMenu($parentId);
			return $this->render('inc/menu_footer_sub.html.twig', ['subMenus' => $subMenus, 'col' => $col]);
		}

		public function adminMenuFooter() {
			$em = $this->getDoctrine()->getManager();
			$menus = $em->getRepository(MenuFooter::class)->getAllMenu();
			return $this->render('inc/admin_menu_footer.html.twig', ['menus' => $menus]);
		}

		/**
		 * @Route("/admin-menu-footer", name="update_menu_footer")
		 * Method({"POST"})
		 */
		public function adminMenuFooterUpdate(Request $request) {
			$resp = new Response();
			$reqContent = $request->getContent();
			$reqJson = json_decode($reqContent);
			$entityManager = $this->getDoctrine()->getManager();
			foreach ($reqJson as $k => $m) {
				$menu = new MenuFooter();
				$menu = $this->getDoctrine()->getRepository(MenuFooter::class)->find($m->id);
				if (!$menu) {
					$resp->setStatusCode(300);
					$resp->setContent(json_encode(array('content' => null, 'message' => 'Update menu faild!')));
				}
				$menu->setSort($k);
				$menu->setCheckParent(false);
				$menu->setParent(null);
				if (isset($m->children)) {
					$menu->setCheckParent(true);
				}
	        	$entityManager->flush();

	        	if (isset($m->children)) {
	        		foreach ($m->children as $k1 => $m1) {
	        			$menu1 = new MenuFooter();
						$menu1 = $this->getDoctrine()->getRepository(MenuFooter::class)->find($m1->id);
						if (!$menu1) {
							$resp->setStatusCode(300);
							$resp->setContent(json_encode(array('content' => null, 'message' => 'Update menu faild!')));
						}
						$menu1->setSort($k1);
						$menu1->setParent($menu);
			        	$entityManager->flush();
	        		}
	        	}
			}
			
			$resp->setStatusCode(200);
			$resp->setContent(json_encode(array('content' => $reqJson, 'message' => 'Update menu successfully!')));
			return $resp;
		}
	}
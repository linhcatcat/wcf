<?php
	namespace App\Controller;

	use App\Entity\Menu;
	use Symfony\Component\HttpFoundation\Response;
	use Symfony\Component\HttpFoundation\Request;
	use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
	use Symfony\Component\Routing\Annotation\Route;
	
	class MenuController extends AbstractController {

		public function menu(Request $req) {
			$currentPath = $req->get('currentPath');
			$em = $this->getDoctrine()->getManager();
			$menus = $em->getRepository(Menu::class)->getAllMenu();

			return $this->render('inc/navbar.html.twig', ['menus' => $menus, 'currentPath' => $currentPath]);
		}

		private function checkParents($menus) {
			$ms = $menus;
			foreach ($ms as $key => $menu) {
				if ($this->checkParent($menu, $menus)) {
					$menus[$key]->setCheckParent(true);
				}
			}
			return $menus;
		}

		private function checkParent($menu, $menus) {
			foreach ($menus as $key => $m) {
				if ($menu->getId() != null && $m->getParent() != null && $menu->getId() == $m->getParent()->getId()) {
					return true;
				}
			}
			return false;
		}

		public function adminMenu() {
			$em = $this->getDoctrine()->getManager();
			$menus = $em->getRepository(Menu::class)->getAllMenu();
			return $this->render('inc/admin_menu.html.twig', ['menus' => $menus]);
		}

		/**
		 * @Route("/admin-menu", name="update_menu")
		 * Method({"POST"})
		 */
		public function adminMenuUpdate(Request $request) {
			$resp = new Response();
			$reqContent = $request->getContent();
			$reqJson = json_decode($reqContent);
			$entityManager = $this->getDoctrine()->getManager();
			foreach ($reqJson as $k => $m) {
				$menu = new Menu();
				$menu = $this->getDoctrine()->getRepository(Menu::class)->find($m->id);
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
	        			$menu1 = new Menu();
						$menu1 = $this->getDoctrine()->getRepository(Menu::class)->find($m1->id);
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
<?php

namespace App\Controller;

use App\Entity\Notice;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;

class NoticeController extends AbstractController
{

    /**
     * @Route("/thong-bao/{page}", name="notice_list", defaults={"page"=1})
     */
    public function list(PaginatorInterface $paginator, $page)
    {
        $notices = $this->getDoctrine()->getRepository(Notice::class)->findAll();

        $pagination = $paginator->paginate(
            $notices,
            $page,
            5
        );
        return $this->render('notice/list.html.twig', [
            'notices' => $pagination,
        ]);
    }

    /**
     * @Route("/thong-bao/chi-tiet/{id}/{title}", name="notice_detail")
     */
    public function detail($id) {
        $notice = $this->getDoctrine()->getRepository(Notice::class)->find($id);
        if (!$notice) {
            throw new NotFoundHttpException('Sorry not existing!');
        }
        return $this->render('notice/detail.html.twig', array('notice' => $notice));
    }
}

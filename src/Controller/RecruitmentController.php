<?php

namespace App\Controller;

use App\Entity\Recruitment;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;

class RecruitmentController extends AbstractController
{
    /**
     * @Route("/tuyen-dung/{page}", name="recruitment_list", defaults={"page"=1})
     */
    public function list(PaginatorInterface $paginator, $page)
    {
        $recruitments = $this->getDoctrine()->getRepository(Recruitment::class)->findAll();

        $pagination = $paginator->paginate(
            $recruitments,
            $page,
            5
        );
        return $this->render('recruitment/list.html.twig', [
            'recruitments' => $pagination,
        ]);
    }

    /**
     * @Route("/tuyen-dung/{id}/{title}", name="recruitment_detail")
     */
    public function detail($id) {
        $recruitment = $this->getDoctrine()->getRepository(Recruitment::class)->find($id);
        if (!$recruitment) {
            //return $this->redirectToRoute('_preview_error', ['code'=>404]);
            //throw $this->createNotFoundException('Sản phẩm không tồn tại');
            throw new NotFoundHttpException('Sorry not existing!');
        }
        return $this->render('recruitment/detail.html.twig', array('recruitment' => $recruitment));
    }

    public function relate(Request $req) {
        $recruitmentId = $req->get('recruitmentId');
        $em = $this->getDoctrine()->getManager();
        $qb = $em->createQueryBuilder();
        $recruitments = $qb->select('r')
            ->from(Recruitment::class,'r')
            ->andWhere('r.id != :id')
            ->setParameter('id', $recruitmentId)
            ->orderBy('r.createdAt', 'DESC')
            ->setFirstResult(0)
            ->setMaxResults(3)
            ->getQuery()
            ->getResult();
        return $this->render('recruitment/relate.html.twig', ['recruitments' => $recruitments]);
    }
}
<?php

namespace App\Controller;

use App\Entity\NutritionInformation;
use App\Entity\NutritionCategory;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;

class NutritionController extends AbstractController
{
    /**
     * @Route("/thong-tin-dinh-duong/{page}", name="nutrition_list", defaults={"page"=1})
     */
    public function list(PaginatorInterface $paginator, $page)
    {
        $nutritions = $this->getDoctrine()->getRepository(NutritionInformation::class)->findAll();

        $pagination = $paginator->paginate(
            $nutritions,
            $page,
            5
        );
        return $this->render('nutrition/list.html.twig', [
            'nutritions' => $pagination,
        ]);
    }


    
    /**
     * @Route("/thong-tin-dinh-duong/danh-muc/{id}/{title}/{page}", name="nutrition_cate", defaults={"page"=1})
     */
    public function cate(PaginatorInterface $paginator, $id, $title, $page)
    {
        $em = $this->getDoctrine()->getManager();
        $qb = $em->createQueryBuilder();
        $nutritions = $qb->select('n')
            ->from(NutritionInformation::class,'n')
            ->andWhere('n.category = :category')
            ->setParameter('category', $id)
            ->getQuery()
            ->getResult();

        $pagination = $paginator->paginate(
            $nutritions,
            $page,
            3
        );

        $category = $this->getDoctrine()->getRepository(NutritionCategory::class)->find($id);
        return $this->render('nutrition/cate.html.twig', [
            'nutritions' => $pagination, 'category' => $category
        ]);
    }

    /**
     * @Route("/thong-tin-dinh-duong/chi-tiet/{id}/{title}", name="nutrition_detail")
     */
    public function detail($id) {
        $nutrition = $this->getDoctrine()->getRepository(NutritionInformation::class)->find($id);
        if (!$nutrition) {
            //return $this->redirectToRoute('_preview_error', ['code'=>404]);
            //throw $this->createNotFoundException('Sản phẩm không tồn tại');
            throw new NotFoundHttpException('Sorry not existing!');
        }
        return $this->render('nutrition/detail.html.twig', array('nutrition' => $nutrition));
    }

    public function nutritionByCategory(Request $req) {
        $categoryId = $req->get('categoryId');
        $nutritionId = $req->get('nutritionId');
        $em = $this->getDoctrine()->getManager();
        $qb = $em->createQueryBuilder();
        $nutritions = $qb->select('n')
            ->from(NutritionInformation::class,'n')
            ->andWhere('n.category = :category')
            ->setParameter('category', $categoryId)
            ->andWhere('n.id != :id')
            ->setParameter('id', $nutritionId)
            ->setFirstResult(0)
            ->setMaxResults(3)
            ->getQuery()
            ->getResult();
        return $this->render('nutrition/nutrition-category.html.twig', ['nutritions' => $nutritions]);
    }
}

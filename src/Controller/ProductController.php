<?php

namespace App\Controller;

use App\Entity\Product;
use App\Entity\Category;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;

class ProductController extends AbstractController
{
    /**
     * @Route("/san-pham1", name="product")
     */
    public function index()
    {
    	$products = $this->getDoctrine()->getRepository(Product::class)->findAll();
        return $this->render('product/index.html.twig', [
            'products' => $products,
        ]);
    }

    /**
     * @Route("/san-pham/{page}", name="product_list", defaults={"page"=1})
     */
    public function list(PaginatorInterface $paginator, $page)
    {
        $products = $this->getDoctrine()->getRepository(Product::class)->findAll();

        $pagination = $paginator->paginate(
            $products,
            $page,
            5
        );
        return $this->render('product/list.html.twig', [
            'products' => $pagination,
        ]);
    }


    
    /**
     * @Route("/san-pham/danh-muc/{id}/{title}/{page}", name="product_cate", defaults={"page"=1})
     */
    public function cate(PaginatorInterface $paginator, $id, $title, $page)
    {
        $em = $this->getDoctrine()->getManager();
        $qb = $em->createQueryBuilder();
        $products = $qb->select('p')
            ->from(Product::class,'p')
            ->andWhere('p.category = :category')
            ->setParameter('category', $id)
            ->getQuery()
            ->getResult();

        $pagination = $paginator->paginate(
            $products,
            $page,
            3
        );

        $category = $this->getDoctrine()->getRepository(Category::class)->find($id);
        return $this->render('product/cate.html.twig', [
            'products' => $pagination, 'category' => $category
        ]);
    }

    /**
     * @Route("/san-pham/chi-tiet/{id}/{title}", name="product_detail")
     */
    public function detail($id) {
        $product = $this->getDoctrine()->getRepository(Product::class)->find($id);
        if (!$product) {
            //return $this->redirectToRoute('_preview_error', ['code'=>404]);
            //throw $this->createNotFoundException('Sản phẩm không tồn tại');
            throw new NotFoundHttpException('Sorry not existing!');
        }
        return $this->render('product/detail.html.twig', array('product' => $product));
    }

    public function productByCategory(Request $req) {
        $categoryId = $req->get('categoryId');
        $productId = $req->get('productId');
        $em = $this->getDoctrine()->getManager();
        $qb = $em->createQueryBuilder();
        $products = $qb->select('p')
            ->from(Product::class,'p')
            ->andWhere('p.category = :category')
            ->setParameter('category', $categoryId)
            ->andWhere('p.id != :id')
            ->setParameter('id', $productId)
            ->setFirstResult(0)
            ->setMaxResults(3)
            ->getQuery()
            ->getResult();
        return $this->render('product/product-category.html.twig', ['products' => $products]);
    }
}

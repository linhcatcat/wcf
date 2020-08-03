<?php

namespace App\Repository;

use App\Entity\MenuFooter;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method MenuFooter|null find($id, $lockMode = null, $lockVersion = null)
 * @method MenuFooter|null findOneBy(array $criteria, array $orderBy = null)
 * @method MenuFooter[]    findAll()
 * @method MenuFooter[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MenuFooterRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, MenuFooter::class);
    }

    public function getAllMenu() { 
        $qb = $this->createQueryBuilder('m')
            ->orderBy('m.sort', 'ASC');
        return $qb->getQuery()->getResult();
    }

    public function getSubMenu($id) { 
        $qb = $this->createQueryBuilder('m')
            ->andWhere('m.parent = :parent')
            ->setParameter('parent', $id)
            ->orderBy('m.sort', 'ASC');
        return $qb->getQuery()->getResult();
    }

    // /**
    //  * @return MenuFooter[] Returns an array of MenuFooter objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?MenuFooter
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

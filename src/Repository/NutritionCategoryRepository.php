<?php

namespace App\Repository;

use App\Entity\NutritionCategory;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method NutritionCategory|null find($id, $lockMode = null, $lockVersion = null)
 * @method NutritionCategory|null findOneBy(array $criteria, array $orderBy = null)
 * @method NutritionCategory[]    findAll()
 * @method NutritionCategory[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class NutritionCategoryRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, NutritionCategory::class);
    }

    // /**
    //  * @return NutritionCategory[] Returns an array of NutritionCategory objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('n')
            ->andWhere('n.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('n.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?NutritionCategory
    {
        return $this->createQueryBuilder('n')
            ->andWhere('n.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

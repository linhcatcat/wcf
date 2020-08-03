<?php

namespace App\Repository;

use App\Entity\ContactBlock;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ContactBlock|null find($id, $lockMode = null, $lockVersion = null)
 * @method ContactBlock|null findOneBy(array $criteria, array $orderBy = null)
 * @method ContactBlock[]    findAll()
 * @method ContactBlock[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ContactBlockRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ContactBlock::class);
    }

    // /**
    //  * @return ContactBlock[] Returns an array of ContactBlock objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?ContactBlock
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

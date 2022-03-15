<?php

namespace App\Repository;

use App\Classe\Search;
use App\Entity\Mission;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\OptimisticLockException;
use Doctrine\ORM\ORMException;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Mission|null find($id, $lockMode = null, $lockVersion = null)
 * @method Mission|null findOneBy(array $criteria, array $orderBy = null)
 * @method Mission[]    findAll()
 * @method Mission[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MissionRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Mission::class);
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function add(Mission $entity, bool $flush = true): void
    {
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function remove(Mission $entity, bool $flush = true): void
    {
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }
    /**
     * @param Search $search
     * Requète qui permet de récupérer les missions en fonction de la recherche de l'utilisateur
     * @return Mission[]
     */
    public function findWithSearch(Search $search){
        $query = $this
            ->createQueryBuilder('m') //m=table mission
            ->select('t', 'm') //t=typeMission m=mission
            ->join('m.typeMission', 't'); //jointure entre les types de ma mission et ma table typeMission

        if(!empty($search->types)) {
            $query = $query
                ->andWhere('t.id IN (:types)')
                ->setParameter('types', $search->types);
        }

        if(!empty($search->string)) {
            $query = $query
                ->andWhere('m.titre LIKE :string')
                ->setParameter('string', "%{$search->string}%");
        }

        return $query->getQuery()->getResult();
    }
    // /**
    //  * @return Mission[] Returns an array of Mission objects
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
    public function findOneBySomeField($value): ?Mission
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

<?php

namespace App\Repository;

use App\Entity\Offer;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Offer|null find($id, $lockMode = null, $lockVersion = null)
 * @method Offer|null findOneBy(array $criteria, array $orderBy = null)
 * @method Offer[]    findAll()
 * @method Offer[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class OfferRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Offer::class);
    }

    /**
     * Overwritten the method findAll to includes sort and direction instead do it in ArrayCollection.
     *
     * @param string|null $sort
     * @param string|null $direction
     * @return array|null
     */
    public function findAll(?string $sort = null, ?string $direction = null): ?array
    {
        return $this->findBy([], [$sort => $direction]);
    }
}

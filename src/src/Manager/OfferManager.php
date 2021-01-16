<?php

namespace App\Manager;

use App\Repository\OfferRepository;

class OfferManager 
{
    private $repo;

    public function __construct(OfferRepository $repo)
    {
        $this->repo = $repo;
    }

    public function getOffers(?string $sort = null, ?string $direction = null): ?array
    {
        return $this->repo->findAll($sort, $direction);
    }

    public function getOffer(int $offer_id): \App\Entity\Offer
    {
        return $this->repo->find($offer_id);
    }
}
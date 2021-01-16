<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use App\Manager\OfferManager;

class OfferController extends AbstractController
{
    private $manager;

    public function __construct(OfferManager $manager)
    {
        $this->manager = $manager;
    }

    #[Route('/offer', name: 'get_offers')]
    public function cgetAction(Request $request): Response
    {
        $sort = $request->query->get('sort') ?? null;
        $direction = $request->query->get('direction') ?? null;

        $this->manager->getOffers($sort, $direction);

        return $this->render('offer/index.html.twig', [
            'controller_name' => 'OfferController',
        ]);
    }

    #[Route('/offer/{offer_id}', name: 'get_offer')]
    public function getAction(Request $request, int $offer_id)
    {
        $this->manager->getOffer($offer_id);
    }
}

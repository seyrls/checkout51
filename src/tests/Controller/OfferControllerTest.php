<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class OfferControllerTest extends WebTestCase
{
   
    public function testGetOffers()
    {
        $client = static::createClient();

        $client->request('GET', '/offer?output=json');

        $this->assertEquals(200, $client->getResponse()->getStatusCode());
    }

    public function testGetOffer()
    {
        $client = static::createClient();

        $client->request('GET', '/offer/40200');

        $this->assertEquals(200, $client->getResponse()->getStatusCode());
    }

    public function testGetOfferJsonOutput()
    {
        $client = static::createClient();

        $client->request('GET', '/offer/40200?output=json');

        $this->assertTrue($client->getResponse()->headers->contains(
            'Content-Type', 'application/json'
        ));        
    }

    public function testGetOffersSorted()
    {
        $client = static::createClient();

        $client->request('GET', '/offer?sort=name&direction=asc');

        $this->assertEquals(200, $client->getResponse()->getStatusCode());
    }

    public function testGetInvalidOffer()
    {
        $client = static::createClient();

        $client->request('GET', '/offer/12345678');

        $this->assertEquals(404, $client->getResponse()->getStatusCode());
    }
}
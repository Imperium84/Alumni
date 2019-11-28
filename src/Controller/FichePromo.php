<?php


namespace App\Controller;
use App\Entity\Promotion;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class FichePromo extends AbstractController
{
    /**
     * @Route("template/FichePromo/{id}", name="fichePromo.index")
     */
    function index(Promotion $promo, Request $request)
    {
        return $this->render("fichePromo.html.twig", ['promo' => $promo]);
    }
}
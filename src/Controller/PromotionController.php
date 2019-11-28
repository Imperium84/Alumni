<?php


namespace App\Controller;


use App\Entity\Promotion;
use App\Repository\PromotionRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class PromotionController extends AbstractController
{

    /**
     * @Route("/promotions", name="promotions.index")
     */
    public function index(PromotionRepository $promoRepo)
    {
        $promotions = $promoRepo->findAll();
//        dd($promotions);

        return $this->render("promotions.html.twig",
            [
                'promotions' => $promotions
            ]);
    }

}
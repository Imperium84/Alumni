<?php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
//use App\Controller\AvatarController;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="index")
     */
    public function index()
    {
        return $this->render("home.html.twig");
    }

    /**
     * @Route("/requete", name="requetes")
     */
    public function requete($uploadDir)
    {
        return new Response("tocard");
    }



}
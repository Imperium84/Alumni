<?php


namespace App\Controller\Admin;


use App\Entity\Degree;
use App\Entity\Promotion;
use App\Entity\Year;
use App\Form\DegreeFormType;
use App\Form\PromotionFormType;
use App\Form\YearFormType;
use App\Repository\DegreeRepository;
use App\Repository\PromotionRepository;
use App\Repository\YearRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class AdminController extends AbstractController
{
    /**
     * @Route("/admin", name="admin.index")
     */
    function index(Request $request, DegreeRepository $degreeRepo, YearRepository $yearRepo,
                   PromotionRepository $promoRepo)
    {
        $degrees = $degreeRepo->findAll();
        $years = $yearRepo->findAll();
        $promotions = $promoRepo->findAll();
//        dd($promotions);

        $manager = $this->getDoctrine()->getManager();

        //Formations
        $form = $this->createForm(DegreeFormType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid())
        {
            $degrees = $form->getData();
            $manager->persist($degrees);
            $manager->flush();

            $this->addFlash('success', "La formation a été créée avec succès");
            return $this->redirectToRoute('admin.index', [
                '_fragment' => "formations"
            ]);
        }

        //Années
        $formYears = $this->createForm(YearFormType::class);
        $formYears->handleRequest($request);

        if ($formYears->isSubmitted() && $formYears->isValid())
        {
            $years = $formYears->getData();
            $manager->persist($years);
            $manager->flush();

            $this->addFlash('success', "L'année a été ajoutée avec succès");
            return $this->redirectToRoute('admin.index', [
                '_fragment' => "annees"
            ]);
        }

        //Promotions
        $formPromo = $this->createForm(PromotionFormType::class);
        $formPromo->handleRequest($request);

        if ($formPromo->isSubmitted() && $formPromo->isValid())
        {
            $promotions = $formPromo->getData();
            $manager->persist($promotions);
            $manager->flush();

            $this->addFlash('success', "La promotion a été ajoutée avec succès");
            return $this->redirectToRoute('admin.index', [
                '_fragment' => "promotions"
            ]);
        }


        return $this->render('admin/index.html.twig',
            [
                'degrees'=>$degrees,
                'years'=>$years,
                'promotions' => $promotions,
                'form' => $form->createView(),
                'formYears' => $formYears->createView(),
                'formPromo' => $formPromo->createView()
            ]);
    }

    /**
     * @Route("/admin/degree/{id}/edit", name="admin.degree.edit")
     */
    public function edit(Request $request, Degree $degrees)
    {
        $form = $this->createForm(DegreeFormType::class, $degrees);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid())
        {
            $degrees = $form->getData();
            $manager = $this->getDoctrine()->getManager();
            $manager->flush();

            $this->addFlash('success', "La formation a été mis à jour avec succès");
            return $this->redirectToRoute('admin.index', [
                '_fragment' => "formations"
            ]);
        }

        return $this->render('admin/Edit/degreeEdit.html.twig',
            ["form" => $form->createView()]);
    }

    /**
     * @Route("/admin/years/{id}/editYear", name="admin.year.editYear")
     */
    public function editYear(Request $request, Year $years)
    {
        $formYears = $this->createForm(YearFormType::class, $years);
        $formYears->handleRequest($request);

        if ($formYears->isSubmitted() && $formYears->isValid())
        {
            $years = $formYears->getData();
            $manager = $this->getDoctrine()->getManager();
            $manager->flush();

            $this->addFlash('success', "L'année a été mis à jour avec succès");
            return $this->redirectToRoute('admin.index', [
                '_fragment' => "annees"
            ]);
        }

        return $this->render('admin/Edit/yearsEdit.html.twig',
            ["formYears" => $formYears->createView()]);
    }

    /**
     * @Route("/admin/promotions/{id}/editPromotions", name="admin.promotions.editPromotions")
     */
    public function editPromotions(Request $request, Promotion $promo)
    {
        $formPromo = $this->createForm(PromotionFormType::class, $promo);
        $formPromo->handleRequest($request);

        if ($formPromo->isSubmitted() && $formPromo->isValid())
        {
            $promo = $formPromo->getData();
            $manager = $this->getDoctrine()->getManager();
            $manager->flush();

            $this->addFlash('success', "La promotion a été mis à jour avec succès");
            return $this->redirectToRoute('admin.index', [
                '_fragment' => "promotions"
            ]);
        }

        return $this->render('admin/Edit/promoEdit.html.twig',
            ["formPromo" => $formPromo->createView()]);
    }

    /**
     * @Route("/admin/degree/{id}/delete", name="admin.degree.delete")
     */
    public function delete(Degree $degrees)
    {


        $manager = $this->getDoctrine()->getManager();
        $manager->remove($degrees);
        $manager->flush();

        $this->addFlash('success', "La formation a été correctement supprimée");
        return $this->redirectToRoute('admin.index', [
            '_fragment' => "degree"
        ]);

        $id = 'Degree-'.$degrees->getId();
        return $this->json($id);
    }

    /**
     * @Route("/admin/years/{id}/delete", name="admin.year.delete")
     */
    public function deleteYears(Year $years)
    {
        $manager = $this->getDoctrine()->getManager();
        $manager->remove($years);
        $manager->flush();

        $this->addFlash('success', "L'année a été correctement supprimée");
        return $this->redirectToRoute('admin.index', [
            '_fragment' => "years"
        ]);
    }

    /**
     * @Route("/admin/promo/{id}/delete", name="admin.promo.delete")
     */
    public function deletePromo(Promotion $promo)
    {
        $manager = $this->getDoctrine()->getManager();
        $manager->remove($promo);
        $manager->flush();

        $this->addFlash('success', "La promotion a été correctement supprimée");
        return $this->redirectToRoute('admin.index', [
            '_fragment' => "promotions"
        ]);
    }

}
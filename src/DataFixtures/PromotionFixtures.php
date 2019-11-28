<?php

namespace App\DataFixtures;

use App\Entity\Promotion;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;

class PromotionFixtures extends BaseFixtures implements DependentFixtureInterface
{
    public function getDependencies()
    {
        // TODO: Implement getDependencies() method.
        return array(
            DegreeFixtures::class,
            YearFixtures::class
        );
    }

    public function load(ObjectManager $manager)
    {
        // $product = new Product();
        // $manager->persist($product);
        $degrees = $this->entityReferences("Degree");
        $years = $this->entityReferences("Year");
        $compteur = 0;

        $infoCompletementaires = [
            "Lorem ipsum dolor sit amet. ",
            "Cras faucibus ante sit amet. ",
            "Neque porro quisquam est qui dolorem ",
            "quia dolor sit amet, consectetur, adipisci velit..."
        ];

        foreach($degrees as $degree)
        {
            foreach($years as $year)
            {
                $randomYear = rand(2000, 2030);

                $dateDebut = new \DateTime("03/09/".$randomYear);
                $dateFin = new \DateTime("04/06/".strval($randomYear+1));

                $promotion = new Promotion();

                $promotion->setDegree($degree);
                $promotion->setYear($year);
                $promotion->setStartDate($dateDebut);
                $promotion->setEndDate($dateFin);

                $randomTexte = rand(0, count($infoCompletementaires)-1);
                $promotion->setNotes($infoCompletementaires[$randomTexte]);

                $this->addReference("Promotion_".$compteur, $promotion);
                $manager->persist($promotion);
                $compteur++;
            }
        }

        $manager->flush();
    }

}

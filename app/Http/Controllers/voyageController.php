<?php

// Nom fichier : voyageController
// Auteur : Samuel GASSAMA
// Date : 08 Décembre 2021
// Version : 1.5 (Final version)


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\voyage;
use App\Models\categorie;

class voyageController extends Controller
{

    //Méthode pour afficher tous les voyages 

    public function gererVoyages()
    {

        $tousLesVoyages = voyage::all();
        return view('gererVoyages')->with("tousLesVoyages", $tousLesVoyages);
    }
    
    // Méthode pour afficher les voyages et les éléments liés par rapport à l'id


    public function afficherVoyages($id){

        //
        $unVoyage = voyage::find($id);
        $lesVoyages = $unVoyage->lesVoyages;
        $saCategorie =$unVoyage->saCategorie;

        return view('gererVoyages')-> with('saCategorie', $saCategorie);

    }
        
}
    
    




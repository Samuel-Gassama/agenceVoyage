<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\voyage;
use App\Models\categorie;

class voyageController extends Controller
{
    // Méthode pour afficher les voyages 

    public function gererVoyages()
    {

        $tousLesVoyages = voyage::all();
        return view('gererVoyages')->with("tousLesVoyages", $tousLesVoyages);
    }

    public function afficherVoyages($id){

        //
        $unVoyage = voyage::find($id);
        $lesVoyages = $unVoyage->lesVoyages;
        $saCategorie =$unVoyage->saCategorie;

        return view('afficherVoyages')-> with('unVoyage', $unVoyage)
                                      -> with('saCategorie', $saCategorie);

    }


}


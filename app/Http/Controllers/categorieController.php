<?php

// <!-- Nom fichier : categorieController
// Auteur : Samuel GASSAMA
// Date : 08 Décembre 2021
// Version : 1.5 (Final version)
//  -->

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\categorie;

class categorieController extends Controller
{
    //
    
    public function afficherCategorie(){

        $lesCategories = categorie::all();
        
    }
}

<?php

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

<?php


// Nom fichier : clientController
// Auteur : Samuel GASSAMA
// Date : 08 Décembre 2021
// Version : 1.5 (Final version)

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\client;
use App\Models\region;
use Illuminate\Contracts\Session\Session;
use Symfony\Component\HttpFoundation\RateLimiter\RequestRateLimiterInterface;

class adminController extends Controller
{


    public function admin(){

        return view('pageAdmin');
    }

    public function afficherClients(){
        
        $tousLesClients = client::all();
        return view('pageAdmin')->with('tousLesClients', $tousLesClients);
    }

   
}
    

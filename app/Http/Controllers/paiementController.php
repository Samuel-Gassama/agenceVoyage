<?php

// <!-- Nom fichier : paiementController
// Auteur : Samuel GASSAMA
// Date : 08 Décembre 2021
// Version : 1.5 (Final version)
//  -->

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\categorie;
use App\Models\paiement;
use App\Models\vente;

use DateTime;


class paiementController extends Controller
{
    //
    
    public function paiement(){

        return view('paiement');
    
    }


    public function valider(){


        $panier = session()->get('panier', []);
        $client = session()->get('client', []);

        foreach($panier as $UnPanier){
            $nouvelleVente = new Vente();
            $date = new DateTime();
            $nouvelleVente->timestamps = false;
            $nouvelleVente->voyage_id= $UnPanier["voyage_id"];
            $nouvelleVente->nbVoyageurs = $UnPanier["nbVoyageurs"];
            $nouvelleVente->client_id = $client["id"];
            $nouvelleVente->dateVente = $date;
            $nouvelleVente->save(); 
        }
        

        $dernierId= $nouvelleVente->id;

        foreach($panier as $UnPanier){
            $date = new DateTime();
            $nouveauPaiement = new Paiement();
            $nouveauPaiement->timestamps = false;
            $nouveauPaiement->montantPaiement = $UnPanier['prix'] * $UnPanier["nbVoyageurs"];
            $nouveauPaiement->datePaiement = $date;
            $nouveauPaiement->vente_id = $dernierId;
            $nouveauPaiement->save();

        }

        $panier = session()->flush('panier', []);

       // return redirect('/')->with('message', 'Commande validé avec succès');
       return redirect('/');
    }   
}

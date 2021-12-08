<?php

// Nom fichier : panierController
// Auteur : Samuel GASSAMA
// Date : 08 Décembre 2021
// Version : 1.5 (Final version)
 

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\vente;
use App\Models\voyage;
use App\Models\Paiement;
use DateTime;

 
class panierController extends Controller
{


    public function panier(){

        $panier = session()->get('panier', []);

        return view('panier');
    }

    
    // Fonction pour ajouter un voyage au panier 

    public function ajoutPanier($id){

        $leVoyage = voyage::findOrFail($id);
        
        $panier = session()->get('panier', []); // Met le voyage choisit dans le panier 
       

            $panier[$id] = [
                "nomVoyage" => $leVoyage->nomVoyage,
                "prix" => $leVoyage->prix,
                "quantite" => 1,
                "nbVoyageurs" => 1,
            
            ];
        
        session()->put('panier', $panier);

        return redirect ('panier')->with('succès', 'Le voyage à bien été ajouter au panier !');
    
        }

        // Fonction pour supprimer un voyage du panier 
    public function supprimerVoyage(Request $request)
    {
        $panier = session()->get('panier', []);

        if($request->id) {
            $panier = session()->get('panier');
            if(isset($panier[$request->id])) {
                unset($panier[$request->id]);
                session()->put('panier', $panier);
            }
            session()->flash('success', 'Product removed successfully');
            return redirect()->back();

        }
    }

    // Méthode pour mettre à jour le panier 

    public function update(Request $request)
    {
        if($request->id && $request->quantity){
            $panier = session()->get('panier');
            $panier[$request->id]["quantite"] = $request->quantity;
            session()->put('panier', $panier);
            session()->flash('succès', 'Panier modifié avec succès');
        }
    }
 
    // Méthode pour ajouter un voyageur au voyage dans le panier 

    public function ajouterVoyageurs($id)
    {
        $panier = session()->get('panier', []);

        if(isset($panier[$id])) {
            $panier[$id]['nbVoyageurs']++;
            session()->put('panier', $panier);
            return redirect()->back();
        }
    }

    // Méthode pour enlever un voyageur au voyage dans le panier 

    public function enleverVoyageurs($id, Request $request)
    {
        $panier = session()->get('panier', []);

        if(isset($panier[$id])) {
            $panier[$id]['nbVoyageurs']--;
            session()->put('panier', $panier);
            return redirect()->back();
        }
    }

    // Méthode pour augmenter la quantité d'un voyage dans le panier

    public function ajouterQuantite($id, Request $request)
    {
        $panier = session()->get('panier', []);

        if(isset($panier[$id])) {
            $panier[$id]['quantite']++;
            session()->put('panier', $panier);
            return redirect()->back();
        }
    }


    // Méthode pour baisser la quantité d'un voyage dans le panier

    public function enleverQuantite($id)
    {
        $panier = session()->get('panier', []);

        if(isset($panier[$id])) {
            $panier[$id]['quantite']--;
            session()->put('panier', $panier);
            return redirect()->back();
        }
    }
//Fonction pour valider la commande qui est dans le panier 
public function valider(){

        dd('ici');
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



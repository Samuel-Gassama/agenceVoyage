<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\voyage;


class panierController extends Controller
{


    public function panier(){

        return view('panier');
    }

    

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

    public function enleverQuantite($id, Request $request)
    {
        $panier = session()->get('panier', []);

        if(isset($panier[$id])) {
            $panier[$id]['quantite']--;
            session()->put('panier', $panier);
            return redirect()->back();
        }
    }

    public function validerCommande(){

        
    }
}



<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\voyage;


class panierController extends Controller
{


    public function panier(){

        return view('panier');
    }

    //

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

    public function AjouterVoyageurs($id, Request $request)
    {
        if(isset($panier[$id])) {
            $panier[$id]['nbVoyageurs']++;
            session()->put('cart', $panier);
            return redirect()->back()->with('success', 'Voyageur ajouté avec succès');
        }
    }


    public function enleverVoyageurs($id, Request $request)
    {
        if(isset($panier[$id])) {
            $panier[$id]['nbVoyageurs']--;
            session()->put('cart', $panier);
            return redirect()->back()->with('success', 'Voyageur retiré avec succès');
        }
    }
}



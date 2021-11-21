<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\voyage;


class panierController extends Controller
{


    public function panier(){

        $voyage = voyage::all();
        return view('panier')->with('voyage',$voyage);
    }

    //

    public function ajoutPanier($id){

        $leVoyage = voyage::findOrFail($id);
        
        $panier = session()->get('panier', []);
       

            $panier[$id] = [
                "nom" => $leVoyage->nomVoyage,
                "quantity" => 1,
                "price" => $leVoyage->prix,
                "quantitePersonne" => 1,

            
            ];
        
        session()->put('panier', $panier);
        return redirect()->back()->with('succès', 'Le voyage à bien été ajouter au panier !');
    
        }

    // Méthode pour mettre à jour le panier 

    public function update(Request $request)
    {
        if($request->id && $request->quantity){
            $panier = session()->get('panier');
            $panier[$request->id]["quantité"] = $request->quantity;
            session()->put('panier', $panier);
            session()->flash('succès', 'Panier modifié avec succès');
        }
    }

}


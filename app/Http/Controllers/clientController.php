<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\client;
use App\Models\region;
use Illuminate\Contracts\Session\Session;
use Symfony\Component\HttpFoundation\RateLimiter\RequestRateLimiterInterface;

class clientController extends Controller
{


    // fonction qui retourne la page de création de compte 

    public function register(){

        return view ('/register');
    }


    // fonction qui retourne la page de connexion 

    public function login(){

        return view('/login');
    
    }

    


    // Fonction de création de compte client 

    public function creerClient(Request $request){

    $nvClient = new Client();
    $request->validate([

        'prenom' => ['required', 'alpha', 'min:1', 'max:20' ],    // requis, de 3 à 20 carac.
        'nom'=> ['required', 'alpha', 'min:1', 'max:20'],     // requis, numérique entre 1 et 999
        'genre' => ['required',  'alpha', 'min:1', 'max:10'],      // requis, de 10 à 200 carac.
        'courriel'=> ['required', 'min:1'],
        'telephone'=> ['required', 'min:1', 'max:10'],
        'adresse'=> ['required','min:1', 'max:50'],
        'ville'=> ['required','min:1', 'max:20'],
        'motdepasse'=> ['required', 'numeric']

    ]);

    $nvClient->prenom = $request->input('prenom');
    $nvClient->nom = $request->input('nom');
    $nvClient->genre = $request->input('genre');
    $nvClient->courriel = $request->input('courriel');
    $nvClient->telephone = $request->input('telephone');
    $nvClient->adresse = $request->input('adresse');
    $nvClient->ville = $request->input('ville');
    $nvClient->motdepasse = $request->input('motdepasse');
    $nvClient->timestamps = false;
    $nvClient->role = 'client';
    $nvClient->save();

    return redirect('/login')->with('message', 'Votre compte à été crée !');
}


// Fonction de connexion a un compte

public function connexion(Request $request){

    session()->get('client', []);

    $fields = $request->validate([
        'courriel' => 'required|string|email',
        'motdepasse' => 'required|string|numeric'
    ]);



    if($client = Client::where('motdepasse', $fields['motdepasse'])->where('courriel', $fields['courriel'])->get()){

        $dataClient = [
            'id' => $client[0]->id,
            'prenom' => $client[0]->prenom,
            'nom' => $client[0]->nom
        ];

        session()->put('client', $dataClient);
        return redirect('/')->with('message','Vous êtes connecté');

        }

    }


    // Fonction de déconnexion

    public function logout(request $request){

        session()->get('client');

        $request->session()->flush();
        return redirect()->back();
    }

    

}
    

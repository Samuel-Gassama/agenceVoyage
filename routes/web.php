<?php

use App\Http\Controllers\adminController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\voyageController;
use App\Http\Controllers\panierController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\clientController;
use App\Http\Controllers\paiementController;



/*
|--------------------------------------------------------------------------
| ROUTES ACCUEIL
|--------------------------------------------------------------------------
*/
/*
|--------------------------------------------------------------------------
| ROUTES COMMANDE
|--------------------------------------------------------------------------
*/


Route::get('/valider',
        [paiementController::class, 'valider'])->name('valider');


Route::get('/paiement',
        [paiementController::class, 'paiement'])->name('paiement');




/*
|--------------------------------------------------------------------------
| ROUTES AFFICHAGE VOYAGES
|--------------------------------------------------------------------------
*/

Route::get('/', 
        [voyageController::class, 'gererVoyages'])->name('gerer.voyages');

 Route::get('/voyages/{id}', 
        [voyageController::class, 'afficherVoyages'])->name('afficher.voyages');

/*
|--------------------------------------------------------------------------
| ROUTES PANIER
|--------------------------------------------------------------------------
*/

Route::get('/panier', 
        [panierController::class, 'panier'])->name('panier');

 Route::get('/ajoutPanier/{id}', 
        [panierController::class, 'ajoutPanier'])->name('ajout.panier');

Route::get('/supprimerVoyage/{id}',
        [panierController::class, 'supprimerVoyage'])-> name('supprimer.voyage');

/*
|--------------------------------------------------------------------------
| ROUTES PANIER | NOMBREVOYAGEURS
|--------------------------------------------------------------------------
*/

Route::get('/ajoutVoyageurs/{id}', 
        [panierController::class, 'ajouterVoyageurs'])->name('ajouter.voyageurs');

 Route::get('/enleverVoyageurs/{id}', 
        [panierController::class, 'enleverVoyageurs'])->name('enlever.voyageurs');

/*
|--------------------------------------------------------------------------
| ROUTES PANIER | QUANTITE VOYAGES
|--------------------------------------------------------------------------
*/

Route::get('/ajoutQuantite/{id}', 
        [panierController::class, 'ajouterQuantite'])->name('ajouter.quantite');

 Route::get('/enleverQuantite/{id}', 
        [panierController::class, 'enleverQuantite'])->name('enlever.quantite');

/*
|--------------------------------------------------------------------------
| ROUTES CONNEXION
|--------------------------------------------------------------------------
*/

Route::get('/register', 
        [clientController::class, 'register']);


Route::post('creerClient',
        [clientController::class, 'creerClient']);

Route::get('/login',
        [clientController::class, 'login']);

Route::get('/logout',
        [clientController::class, 'logout']);


Route::post('connexion',
        [clientController::class, 'connexion']);



/*
|--------------------------------------------------------------------------
| ROUTES ADMIN
|--------------------------------------------------------------------------
*/


Route::get('admin',
        [adminController::class, 'admin'])-> name('admin');
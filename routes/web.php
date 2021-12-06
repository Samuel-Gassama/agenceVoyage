<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\voyageController;
use App\Http\Controllers\panierController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\LoginController;




/*
|--------------------------------------------------------------------------
| ROUTES ACCUEIL
|--------------------------------------------------------------------------
*/



/*
|--------------------------------------------------------------------------
| ROUTES VOYAGES
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
| ROUTES NOMBREVOYAGEURS
|--------------------------------------------------------------------------
*/

Route::get('/ajoutVoyageurs/{id}', 
        [panierController::class, 'ajouterVoyageurs'])->name('ajouter.voyageurs');

 Route::get('/enleverVoyageurs/{id}', 
        [panierController::class, 'enleverVoyageurs'])->name('enlever.voyageurs');

/*
|--------------------------------------------------------------------------
| ROUTES QUANTITE
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

Route::get('/home',
        [HomeController::class, 'index']);
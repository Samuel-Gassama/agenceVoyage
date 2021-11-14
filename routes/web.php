<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\voyageController;



/*
|--------------------------------------------------------------------------
| ROUTES ACCUEIL
|--------------------------------------------------------------------------
*/


Route::get('/', [voyageController::class,'listeVoyage'])->name('liste.voyage');

/*
|--------------------------------------------------------------------------
| ROUTES VOYAGES
|--------------------------------------------------------------------------
*/

Route::get('/voyages', 
        [voyageController::class, 'gererVoyages'])->name('gerer.voyages');

 Route::get('/voyages/{id}', 
        [voyageController::class, 'afficherVoyages'])->name('afficher.voyages');

/*
|--------------------------------------------------------------------------
| ROUTES PANIER
|--------------------------------------------------------------------------
*/

Route::get('/panier', 
        [voyageController::class, 'panier'])->name('afficher.panier');

 Route::get('/ajouterPanier', 
        [voyageController::class, 'ajoutPanier'])->name('ajouter.panier');
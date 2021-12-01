<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\voyageController;
use App\Http\Controllers\panierController;



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



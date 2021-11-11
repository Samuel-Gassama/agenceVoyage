<!-- AFFICHAGE DES VOYAGES    -->
<!-- Développé par Samuel GASSAMA    -->
<!-- Octobre 2021                   -->
<!--                                -->
@extends('template')

@section('titre')
Voyages disponibles
@endSection

@section('contenu')
<html>
<div class="container">
    <h1>Voyages disponibles </h1>
    @foreach ($tousLesVoyages as $unVoyage)
    <div style="height:20vh;width:650px;border: 1px solid silver;" class="row align-items-center">
        <div class="col-5">
            <a href="./voyages/{{ $unVoyage->id }}">{{$unVoyage->nomVoyage}}</a>
        </div>


                <!-- Affichage du prix dans la liste des voyages -->

        <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-sm leading-5">
            Prix : ${{ number_format($unVoyage->prix) }}
        </td>
        <br>
                <!-- Affichage de la date du voyage-->

        <td class="px-4 py-4 whitespace-no-wrap border-b border-gray-500 text-sm leading-5">
            Date : {{$unVoyage->dateDebut}}
        </td>
        <br>
                <!-- Affichage de la duree du voyage -->

        <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-sm leading-5">
            Durée : {{$unVoyage->duree}} jours
        </td>
        <br>
                        <!-- Affichage de la ville -->

        <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-500 text-sm leading-5">
            Ville : {{$unVoyage->ville}}
        </td>

        <!-- Bouton ajout au panier  -->
        <div class="col-5">
            <a title='Ajouter au panier' class='btn btn-primary btn-sm' href="">Ajouter au Panier</a>
        </div>


    </div>
    @endforeach
    @endsection
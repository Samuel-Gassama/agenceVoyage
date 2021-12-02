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

<div class="topnav">
  <a class="active" href='/'>Accueil</a>
  <a href="#news">Connexion</a>
  <a href="#contact">Contact</a>
  <a href="#about">À propos</a>
</div>

<table class="table table-bordered table-responsive-lg table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Nom  du voyages</th>
                <th scope="col">Prix</th>
                <th scope="col" >Date de début</th> 
                <th scope="col">Durée en jours</th>
                <th scope="col">Ville</th>
                <th scope="col">Catégorie</th>
                <th>
                <a  class="btn btn-info btn-lg" href="/panier">Panier
                <span class="glyphicon glyphicon-shopping-cart"></span> 
                </a> 
            </th>

            </tr>
            </thead>
        <tbody>
        @foreach ($tousLesVoyages as $unVoyage)
                <tr>
                    <td>{{ $unVoyage->nomVoyage }}</td>
                    <td>{{ number_format($unVoyage->prix)}}$</td>
                    <td>{{ $unVoyage->dateDebut }}</td>
                    <td>{{ $unVoyage->duree }}</td>
                    <td>{{ $unVoyage->ville }}</td>
                    <td>{{ $unVoyage->categorie }}</td>

                    <td>  <div class="col-5">
                     <a title='Ajouter au panier' class='btn btn-primary btn-sm' href="{{ route('ajout.panier', $unVoyage->id) }}">Ajouter au Panier</a>
                     </div>
                </tr>
            @endforeach
        </tbody>
    </table>
    </div>
    @endsection


    <style>
h1 {text-align: center;}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
</style>
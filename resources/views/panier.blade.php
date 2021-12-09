
<!-- Nom fichier : panier.blade.php
Auteur : Samuel GASSAMA
Date : 08 Décembre 2021
Version : 1.5 (Final version) -->




@extends('template')
@section('titre')
Panier
@endSection

@section('contenu')

<DOCTYPE HTML>


<head>
    <h1>Panier</h1>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
<div class="topnav">
  <a class="active" href='/'>Accueil</a>
  

  @if(session('client'))
  <a  href="{{ url('/logout') }}" >Se deconnecter</a>
  @else
  <a  href='/register' >Créer compte</a>
  <a  href='/login' >Connexion</a>

  @endif
</div>

@if(session('client'))
Statut : Connecté 
@endif


<table class="table table-bordered table-responsive-lg table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Nom  du voyages</th>
                <th scope="col">Prix</th>
                <th scope="col">Nombre de voyageurs</th>
                <th scope="col" >Quantité</th> 
                <th> </th>
            </th>

            </tr>
            </thead>
        <tbody>
        @if(session('panier'))
            @foreach(session('panier') as $id => $article)
        <tr>
            <td>{{$article['nomVoyage']}}</td>
            
            <td>{{$article['prix']}}</td>

            <td>{{$article['nbVoyageurs']}} 
            <button type="button" class="btn btn-default btn-lg"><a class="glyphicon glyphicon-plus-sign" href ="{{route('ajouter.voyageurs', $id)}}"></a></button> 
            <button type="button" class="btn btn-default btn-lg"> <a class="glyphicon glyphicon-minus-sign" href="{{route('enlever.voyageurs',$id)}}"></a></button>
            </td>
            
            <td>{{$article['quantite']}}
            <button type="button" class="btn btn-default btn-lg"><a class="glyphicon glyphicon-plus-sign" href ="{{route('ajouter.quantite', $id)}}"></a></button> 
            <button type="button" class="btn btn-default btn-lg"> <a class="glyphicon glyphicon-minus-sign" href="{{route('enlever.quantite',$id)}}"></a></button>
            </td>

            <td>
            <button type="button" class="btn btn-default btn-lg"> <a class="glyphicon glyphicon-minus-sign" href="{{route ('supprimer.voyage',$id)}}"></a>  Supprimer</button>

            </td>


        </tr>
        @endforeach
    @endif
        
        </tbody>
    </table>
    <button type="submit" class="btn btn-default btn-lg"><a href="{{url('paiement')}}">Aller au paiement</a></button>     <!-- cette route fait buguer tout mon site -->

</body>

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
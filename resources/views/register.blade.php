
<!-- Nom fichier : register.blade.php
Auteur : Samuel GASSAMA
Date : 08 Décembre 2021
Version : 1.5 (Final version) -->

@extends('template')
@section('contenu')
<div class="topnav">
  <a class="active" href='/'>Accueil</a>
  

  @if(session('client'))
  <a  href="{{ url('/logout') }}" >Se deconnecter</a>
  @else
  <a  href='/register' >Créer compte</a>
  <a  href='/login' >Connexion</a>
  @endif
</div>

<h2>Création d'un compte</h2>
    <form method="POST" action="creerClient">
    {{ csrf_field() }} 

    <div class="form-control">
                <label class="col-sm-2 col-form-label">Nom</label>
                <input class="col-sm-1" name="nom" class="form-control-plaintext"  type="text" placeholder="Nom" value="{{ old('nom') }}" />
    </div> 

    <div class="form-control">
                <label class="col-sm-2 col-form-label">Prenom</label>
                <input class="col-sm-1" name="prenom" class="form-control-plaintext" type="text" placeholder="Prenom" value="{{ old('prenom') }}" />
    </div>
<div class="form-control">
                <label class="col-sm-2 col-form-label">Sexe</label>
                <input class="col-sm-1" name="genre" class="form-control-plaintext" type="text" placeholder="Sexe" value="{{ old('genre') }}" />
    </div> 
    <div class="form-control">
                <label class="col-sm-2 col-form-label">E-Mail</label>
                <input class="col-sm-1" name="courriel" class="form-control-plaintext" type="text" placeholder="E-mail" value="{{ old('courriel') }}" />
    </div> 
    <div class="form-control">
                <label class="col-sm-2 col-form-label">Téléphone</label>
                <input class="col-sm-1" name="telephone" class="form-control-plaintext" type="text" placeholder="telephone" value="{{ old('telephone') }}" />
    </div> 
    <div class="form-control">
                <label class="col-sm-2 col-form-label">Adresse</label>
                <input class="col-sm-1"name="adresse" class="form-control-plaintext" type="text" placeholder="adresse" value="{{ old('adresse') }}" />
    </div> 
    <div class="form-control">
                <label class="col-sm-2 col-form-label">Ville</label>
                <input class="col-sm-1" name="ville" class="form-control-plaintext" type="text" placeholder="ville" value="{{ old('ville') }}" />
    </div>
    <div class="form-control">
                <label class="col-sm-2 col-form-label">Mot de passe</label>
                <input class="col-sm-1" name="motdepasse" class="form-control-plaintext" type="text" 
placeholder="motdepasse" 
                    value="{{ old('motdepasse') }}" />
    </div> 
        <button type="submit">Créer</button>
    </form>
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
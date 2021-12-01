
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


<table class="table table-bordered table-responsive-lg table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Nom  du voyages</th>
                <th scope="col">Prix</th>
                <th scope="col">Nombre de voyageurs</th>
                <th scope="col" >Quantité</th> 
            </th>

            </tr>
            </thead>
        <tbody>
        @if(session('panier'))
            @foreach(session('panier') as $id => $article)
        <tr>
            <td>{{$article['nomVoyage']}}</td>
            
            <td>{{$article['prix']}}</td>

            <td>{{$article['nbVoyageurs']}} <button type="button" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-plus-sign"></span></button> 
            <button type="button" class="btn btn-default btn-lg"> <span class="glyphicon glyphicon-minus-sign"></span></button>  </td>
            
            <td>{{$article['quantite']}} <button type="button" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-plus-sign"></span></button> 
            <button type="button" class="btn btn-default btn-lg"> <span class="glyphicon glyphicon-minus-sign"></span></button> </td> 


        </tr>
        @endforeach
    @endif
        
        </tbody>
    </table>
    <button type="button" class="btn btn-default btn-lg"> Valider ma commande <span class=""></span></button> </td> 
<body>
 
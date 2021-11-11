<!doctype html>
<html lang="fr">
    <head>
        <title>Détails du voyages</title>
    </head>
    <body>
    <div style ="height:60vh;width:900px;border: 2px solid silver;" class="row align-items-center"> 
             <div class="col-4">
                Le voyage est {{$unVoyage->nomVoyage}}
            </div></br>
            <div class="col-4">
                Le voyage se situe à  {{$unVoyage->ville}}
            </div></br>
            <div class="col-4">
                La duree du voyage est de {{$unVoyage->duree}} jours
            </div></br>
            <div class="col-4">
                Le prix du voyage est de {{$unVoyage->prix}}$
            </div></br>
            <div class="col-4">
                Le voyage débute en {{$unVoyage->dateDebut}}
            </div></br>
            <div class="col-4">
                La catégorie du voyage est {{$saCategorie->categorie}}
            </div></br>

     </body>
</html>
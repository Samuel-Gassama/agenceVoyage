<!-- TEMPLATE APPLICATION BLOG    -->
<!-- Développé par Yvon Gosselin    -->
<!-- Octobre 2021                   -->
<!--                                -->
<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('titre')</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
 </head>
<body>
    <!-- Retour confirmation de réception OK -->
    @if (session('message'))  
    <div class="alert alert-info">  
        <strong>  
        {{ session('message') }}  
        </strong>  
    </div>  
    @endif
    <!-- Affichage des Erreurs de saisie -->
    @if ($errors->any())  
    <div class="alert alert-danger">  
        <strong>  
            Oups. Nous n'avons pas pu enregistrer votre demande pour la raison suivante :  
        </strong>  
        <ul class="list-unstyled">  
        @foreach ($errors->all() as $error)  
            <li>{{ $error }}</li>  
        @endforeach  
        </ul>  
    </div>  
    @endif  
	@yield('contenu')
</body>
</html>
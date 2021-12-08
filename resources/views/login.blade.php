@extends('app')

<div class="topnav">
  <a class="active" href='/'>Accueil</a>
  

  @if(session('client'))
  <a  href="{{ url('/logout') }}" >Se deconnecter</a>
  @else
  <a  href='/register' >Créer compte</a>
  @endif
</div>

@section('content')
<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <h3 class="card-header text-center">Login</h3>
                    <div class="card-body">
                        <form method="POST" action="connexion">
                            @csrf
                            <div class="form-group mb-3">
                                <input type="text" placeholder="courriel" id="courriel" class="form-control" name="courriel" required
                                    autofocus>
                                @if ($errors->has('courriel'))
                                <span class="text-danger">{{ $errors->first('courriel') }}</span>
                                @endif
                            </div>

                            <div class="form-group mb-3">
                                <input type="password" placeholder="motdepasse" id="password" class="form-control" name="motdepasse" required>
                                @if ($errors->has('motdepasse'))
                                <span class="text-danger">{{ $errors->first('motdepasse') }}</span>
                                @endif
                            </div>

                            <div class="form-group mb-3">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember"> Remember Me
                                    </label>
                                </div>
                            </div>

                            <div class="d-grid mx-auto">
                                <button type="submit" class="btn btn-dark btn-block">Signin</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
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
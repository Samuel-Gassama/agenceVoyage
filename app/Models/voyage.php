<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class voyage extends Model
{
        protected $table = 'voyage' ;
        public $incrementing = true;

        public function saCategorie(){

            return $this->belongsTo('App\Models\categorie','categorie_id'); // Méthode pour récuperer une clé étrangère, editeur_id dans la table jeu qui fait réference à la table editeur
        }
    }

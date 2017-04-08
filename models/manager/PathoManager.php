<?php

require("models/database/ConnexionDb.php");
require("models/Patho.php");

class PathoManager {

    public function getAll(){

        $db = new ConnexionDb;

        $sql = 'SELECT * FROM patho';
        $listePatho = array();
        $result = $db->requete($sql);
        foreach ($result as $row) {
            $patho = new Patho($row['mer'], $row['type'], $row['desc']);
            array_push($listePatho, $patho);
        }
        return $listePatho;
    }
}

?>
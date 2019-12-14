<?php
    class Template{
        
        public function head(){
            include("../../template/head.php");
        }

        public function js(){
            include("../../template/js.php");
        }

        public function sidebar(){
            include("../../template/sidebar.php");
        }

        public function topbar(){
            include("../../template/topbar.php");
        }

        public function login(){
            require_once("../../library/encryption.php");
            $encryption = new Encryption("login");
            $information = $encryption->decrypt("Crypt#IPHmIuxzjAM0Za7mXM13lk42jFpyphj4#26S6VQWK2zHOG6B6tyLeFHkGrVMDbL68esGYyrv7fbU+A9zTKGXnrMf4qZUrhSj6M5XY1PnXYSWZIJ8DwXhvGrfwbTXJ+WUvXC7Ik8N1Qz30cfr163c553h40IXwBQwP2Eg98E3/jfEtp66MtGw=#7b0a0d5db0162dbc3850f371edc092342fff8031");
            $data = array(
                "information" => $information
            );
            return $data;
        }
    }
?>
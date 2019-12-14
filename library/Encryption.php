<?php
    class Encryption{
        private $data;
        public function __construct($for = ""){
            if($for == "sidebar" || $for == "login"){
                require_once("../../third_party/Crypt.php");
            }
            else{
                require_once("../third_party/Crypt.php");
            }
            $this->data = new Crypt();
        }

        public function encrypt($text, $key = "BayoeHedayahMelandy"){
            $this->data->SetKey($key);
            $this->data->setData($text);
            return $this->data->encrypt();
        }

        public function decrypt($text, $key = "BayoeHedayahMelandy"){
            $this->data->SetKey($key);
            $this->data->setData($text);
            return $this->data->decrypt();
        }
    }
?>
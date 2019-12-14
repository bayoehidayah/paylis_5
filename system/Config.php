<?php  
    ob_start();
    session_start();
    class Config{
        private $host;
        private $user;
        private $pass;
        private $db;

        function __construct($for = ""){
            ini_set("memory_limit", "1024M");
        }

        function connect_to_server(){
            $this->host = "localhost";
            $this->user = "root";
            $this->pass = "";
            $this->db = "paylis";

            $try_connect = mysql_connect($this->host, $this->user, $this->pass);
            $select_db = mysql_select_db($this->db);
            if($try_connect && $select_db){
                $result = "success";
            }
            else{
                $result = "failed";
            }
            
            return $result;
        }
    }
?>
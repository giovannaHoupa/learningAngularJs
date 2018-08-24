<?php

class M_login extends CI_Model {

    public function logar($dados){

        $user = $dados['userLogin'];
        $senha = $dados['userPassword'];

        if($user && $senha){
            $params = array("login"=>$user, "senha"=>$senha);

            $this->db->where($params);

            return $this->db->get('tbl_usuarios');

        }

    }
}
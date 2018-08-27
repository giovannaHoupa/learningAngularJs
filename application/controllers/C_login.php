<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class C_login extends CI_Controller {

    public function logar(){

        $dados = $this->input->post();
        if($this->sessao->logar($dados)){
            $this->session->set_userdata(Sessao::$nomeSessao, true);
            echo json_encode(['sucesso'=>true]);
        }else{
            echo json_encode(['sucesso'=>false]);
        }
    }

    public function sair(){
        $this->sessao->sair();
    }
}
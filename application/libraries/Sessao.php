<?php

defined('BASEPATH') OR exit('No direct script access allowed');


class Sessao{

    public static $nomeSessao = "logado";
    public $permitidas = ['Login/index'];

    public function logar($dados){
        $CI = &get_instance();

        $CI->load->model('M_login');

        $result = $CI->M_login->logar($dados);

        if($result->num_rows() > 0){
            return true;
        }else{
            return false;
        }

    }

    public function verificarSessao(){

        $CI = & get_instance();

        if(empty($CI->session->userdata('logado'))){

            if(!in_array($CI->uri->uri_string(), $this->permitidas)){
                redirect('Login/index/', 'refresh');
            }

        }

    }

    public function sair(){
        session_destroy();
        redirect('Login/index/', 'refresh');
    }

}
<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class C_usuario extends CI_Controller{

    public function index(){
        $this->load->view('cadastroUsuario');
    }

    public function cadastrar(){
        $this->load->model('m_usuario');
        $data = $this->input->post();
        $this->m_usuario->cadastrarUsuario($data);
    }
}
<?php

class M_usuario extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {

    }

    public function cadastrarUsuario($data){
        $data['nome_usuario'] = $this->input->post('nome_usuario');
        $data['login'] = $this->input->post('login');
        $data['senha'] = $this->input->post('senha');

        if ($this->db->insert('tbl_usuarios', $data)) {
            echo "Dados Inseridos com Sucesso!";
        } else {
            echo "Não foi possível cadastrar os dados";
        }
    }
}
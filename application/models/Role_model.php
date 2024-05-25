<?php

    class Role_model extends CI_Model
    {
        public function __contruct()
        {
            $this->load->database();

        }

        public function get_roles($roleid = FALSE)
        {
            if($roleid === FALSE)
            {
                $query = $this->db->get('role');
                return $query->result_array();
            }
            
            $query = $this->db->get_where('role', array('roleid' => $roleid));
            return $query->row_array();
        }

        public function add_role()
        {
            $roleid = url_title($this->input->post('firstname'));

            $data = array(
                'roleid' => $roleid,
                'rolename' => $this->input->post('rolename'),
                
            );
            // return $this->db->insert('users', $data);

            $this->db->insert('role', $data);

        }

        public function update_role()
        {
            $roleid = url_title($this->input->post('rolename'));

            $data = array(
                'roleid' => $roleid,
                'rolename' => $this->input->post('rolename'),
                
            );

            $this->db->where('roleid', $this->input->post('roleid'));
            return $this->db->update('role', $data);

        }
}
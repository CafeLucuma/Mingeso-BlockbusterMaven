/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.bean;

import com.me.model.Usuario;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author oscar
 */
@Local
public interface UsuarioFacadeLocal {
    
    void create(Usuario usuario);

    void edit(Usuario usuario);

    void remove(Usuario usuario);

    Usuario find(Object id);

    List<Usuario> findAll();
    
    List<Usuario> login(String name, String pass);

    List<Usuario> findRange(int[] range);

    int count();
    
    
}

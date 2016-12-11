/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.bean;

import com.me.model.Usuario;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author oscar
 */
@Stateless
public class UsuarioFacade extends AbstractFacade<Usuario> implements UsuarioFacadeLocal {

    @PersistenceContext(unitName = "com.me_BlockbusterMaven-ejb_ejb_1.0-SNAPSHOTPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }
    
    @Override
    public List<Usuario> findAll()
    {
        return em.createNamedQuery("Usuario.findAll").getResultList();
    }
    
    @Override
    public List<Usuario> login(String name, String pass)
    {
        return em.createNamedQuery("Usuario.login").setParameter("username", name)
                .setParameter("password", pass).getResultList();
    }

    @Override
    public void create(Usuario usuario)
    {
        em.persist(usuario);
    }
    
    @Override
    public Usuario find(Object id)
    {
        return em.find(Usuario.class, id);
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.model;

import javax.persistence.EntityManager;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/*
 *
 * @author oscar
 */
public class UsuarioTest {
    EntityManager em;
    
    public UsuarioTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }

    /*
     * Test of getUserid method, of class Usuario.
     */
    @Test
    public void testGetUserid() {
        System.out.println("getUserid");
        Usuario instance = new Usuario(4, "pepe", "asdasd123");
        em.persist(instance);
        System.out.println("nombre:"+instance.getUsername());
        Integer result = instance.getUserid();
        assertNotNull(instance);
        // TODO review the generated test code and remove the default call to fail.
    }

    
}

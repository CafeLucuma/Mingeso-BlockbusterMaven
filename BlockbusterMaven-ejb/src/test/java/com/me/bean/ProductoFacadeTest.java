/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.me.bean;

import com.me.model.Producto;
import java.util.List;
import javax.ejb.embeddable.EJBContainer;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author oscar
 */
public class ProductoFacadeTest {
    
    public ProductoFacadeTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of create method, of class ProductoFacade.
     */

    @Test
    public void testFindAll() throws Exception {
        System.out.println("findAll");
        EJBContainer container = javax.ejb.embeddable.EJBContainer.createEJBContainer();
        ProductoFacadeLocal instance = (ProductoFacade)container.getContext().lookup("java:global/classes/ProductoFacade");
        int expResult = 1;
        List<Producto> result = instance.findAll();
        assertEquals(expResult, result.size());
        container.close();
        // TODO review the generated test code and remove the default call to fail.
    }
    
}

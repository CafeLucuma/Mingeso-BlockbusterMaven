package test;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.me.bean.UsuarioFacade;
import com.me.bean.UsuarioFacadeLocal;
import com.me.model.Usuario;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Chocho
 */
public class testUsuario {
    UsuarioFacade usuario;
    public testUsuario() {
        usuario = new UsuarioFacade();
    }
    
    /*@BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }
*/
    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    
    @Test
    public void testGetAllUsuarios() {
        Usuario user = usuario.find(1);
        assertNotNull(user);
    }
    
    /*@Test
    public void testGetPasswords(){
        
    }*/
}

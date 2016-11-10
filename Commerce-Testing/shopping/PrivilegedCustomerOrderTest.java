/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author 661445182
 */
public class PrivilegedCustomerOrderTest {
   
   public PrivilegedCustomerOrderTest() {
   }
   
   @BeforeClass
   public static void setUpClass() {
   }
   
   @AfterClass
   public static void tearDownClass() {
   }

   /**
    * Test of getDiscount method, of class PrivilegedCustomerOrder.
    */
   @Test
   public void testGetDiscount() {
      System.out.println("getDiscount");
      PrivilegedCustomerOrder instance = null;
      double expResult = 0.0;
      double result = instance.getDiscount();
      assertEquals(expResult, result, 0.0);
      // TODO review the generated test code and remove the default call to fail.
      fail("The test case is a prototype.");
   }

   /**
    * Test of setDiscount method, of class PrivilegedCustomerOrder.
    */
   @Test
   public void testSetDiscount() {
      System.out.println("setDiscount");
      double newDiscount = 0.0;
      PrivilegedCustomerOrder instance = null;
      instance.setDiscount(newDiscount);
      // TODO review the generated test code and remove the default call to fail.
      fail("The test case is a prototype.");
   }

   /**
    * Test of calculateTotal method, of class PrivilegedCustomerOrder.
    */
   @Test
   public void testCalculateTotal() {
      System.out.println("calculateTotal");
      PrivilegedCustomerOrder instance = null;
      double expResult = 0.0;
      double result = instance.calculateTotal();
      assertEquals(expResult, result, 0.0);
      // TODO review the generated test code and remove the default call to fail.
      fail("The test case is a prototype.");
   }
   
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

import dominio.Cliente;
import java.util.List;





/**
 *
 * @author Andres
 */
public class prueba {
    
    public static void main(String[] args) {
       
    ClienteDaoJDBC jdbc = new ClienteDaoJDBC();
  /*  List<Cliente> clientes = jdbc.listar();
        for(Cliente cliente: clientes){
            System.out.println("Usuario:" + cliente);*/
            
            
            
     Cliente clienteinf= new Cliente();
             clienteinf=jdbc.encontrar(new Cliente(1));
             System.out.println("clienteinf = " + clienteinf);
     
            
            
        }
       
        
    
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.services;

/**
 *
 * @author usager
 */
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.entites.*;
import com.DAO.*;
import java.util.ArrayList;
public class VolsService {
    public static boolean  afficherVols(HttpServletRequest request, HttpServletResponse response, String recherche)
    throws ServletException, IOException{
        ArrayList<Vol> mesVols ;
        if(recherche.equals("A")){
           mesVols = VolDAO.getParArrives();
        
        }
        else {
          mesVols = VolDAO.getParDepart();
        }
	if(mesVols != null){
          request.setAttribute("mesVols", mesVols);
          return true;
        }
        else
            return false; 
	   
        

		
	} 

    
}

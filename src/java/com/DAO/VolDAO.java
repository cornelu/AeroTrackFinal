/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

/**
 *
 * @author usager
 */
import java.util.ArrayList;

import com.connexion.ConnexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entites.*;
public class VolDAO {
    
    public static ArrayList<Vol> getAll(){
		ArrayList<Vol> mesVols = null;
		String query ="select * from vols";
		
		Connection con = ConnexionBD.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet result = ps.executeQuery();
			
			if(result.isBeforeFirst()){
				mesVols = new ArrayList<Vol>();
			}
			
			while (result.next()) {
				Vol v = new Vol();
				v.setNumeroVol(result.getString("numeroVol"));
				v.setTypeVol(result.getString("typeVol"));
                                v.setEtatVol(result.getString("etatVol"));
				
				mesVols.add(v);
                                
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return mesVols;
	}
public static ArrayList<Vol> getParArrives(){
		ArrayList<Vol> mesVols = null;
		String query ="select * from vol where typeVol = 'arrive'; ";
		
		Connection con = ConnexionBD.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet result = ps.executeQuery();
			
			if(result.isBeforeFirst()){
				mesVols = new ArrayList<Vol>();
			}
			
			while (result.next()) {
				Vol v = new Vol();
				v.setNumeroVol(result.getString("numeroVol"));
				v.setTypeVol(result.getString("typeVol"));
                                v.setEtatVol(result.getString("etatVol"));
				
				mesVols.add(v);
                                
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return mesVols;
	}
public static ArrayList<Vol> getParDepart(){
		ArrayList<Vol> mesVols = null;
		String query ="select * from vol where typeVol = 'depart' ;";
		
		Connection con = ConnexionBD.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet result = ps.executeQuery();
			
			if(result.isBeforeFirst()){
				mesVols = new ArrayList<Vol>();
			}
			
			while (result.next()) {
				Vol v = new Vol();
				v.setNumeroVol(result.getString("numeroVol"));
				v.setTypeVol(result.getString("typeVol"));
                                v.setEtatVol(result.getString("etatVol"));
				
				mesVols.add(v);
                                
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return mesVols;
	}
    
}

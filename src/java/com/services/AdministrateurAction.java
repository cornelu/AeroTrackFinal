/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.services;

import com.DAO.AdministrateurDAO;
import com.entites.Administrateur;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Diana
 */
public class AdministrateurAction {
    
    	public static boolean afficherAdmionistrateur(HttpServletRequest request) {
		boolean retour = false;

		ArrayList<Administrateur> mesAdmin = AdministrateurDAO.getAll();

		request.setAttribute("listeAdmins", mesAdmin);

		return (mesAdmin != null ? true : false);
	}


	public static boolean afficherAdministrateurParId(HttpServletRequest request, int id) {
		

		Administrateur admin = AdministrateurDAO.getById(id);
	
		request.setAttribute("admin", admin);

		return (admin != null ? true : false);
	}

	public static boolean insertAdministrateur(Administrateur adminToInsert) {
		boolean retour = false;

		if (AdministrateurDAO.insert(adminToInsert)) {
			retour = true;
		}

		return retour;
	}

	public static boolean updateAdministrateur(Administrateur adminToUpdate) {
		boolean retour = false;

		if (AdministrateurDAO.update(adminToUpdate)) {
			retour = true;
		}

		return retour;
	}

	public static boolean deleteEtudiant(String idAdmin){
		boolean retour= false;		
		
		if(AdministrateurDAO.delete(idAdmin))
			retour =true;
		
		return retour;
	}
	public static boolean adminExiste (Administrateur admnin){
	 	boolean retour = false ;
	 			if(AdministrateurDAO.userExiste(admnin))
	 				retour =true;
	 	return  retour;
	}
    
}

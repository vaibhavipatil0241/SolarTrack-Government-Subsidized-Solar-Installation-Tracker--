package com.solar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.solar.dao.ResidentDao;
import com.solar.model.Resident;

@Controller
public class ResidentController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	ResidentDao residentDao = (ResidentDao) context.getBean("residentDao");
	
	@RequestMapping("/resident_dashboard")
	public String residentDashBoard(Model m,HttpServletRequest request){
		m.addAttribute(request.getAttribute("contactID"));
		return "resident_dashboard";
	}
	
	
	@RequestMapping(path="/ResidentLogIn",method=RequestMethod.POST)
	public String residentLogIn(HttpServletRequest request,Model m){
		
		long contactID = Long.parseLong(request.getParameter("contactID"));
		int password = Integer.parseInt(request.getParameter("password"));
		
		Resident resident = residentDao.getResidentbyContact(contactID);
		int pass = Integer.parseInt(resident.getRpassword());
		if (pass == password) {
			m.addAttribute("contactID",contactID);
			return "resident_dashboard";
		} else {
			return "index";
		}
		
	}
	
	@RequestMapping("/view_residents")
	public String viewAllResidentshere(Model m,HttpServletRequest request){
		System.out.println("View resident Page ContactID : "+request.getAttribute("contactID"));
		List<Resident> residents = residentDao.viewAllResident();
		m.addAttribute("residents",residents);
		return "view_residents";
	}
	
	
	
	@RequestMapping("/view_installations_subsidy_reports")
	public String viewInstallationsAndSubsidyReport(){
		return "view_installations_subsidy_reports";
	}
	
	
}

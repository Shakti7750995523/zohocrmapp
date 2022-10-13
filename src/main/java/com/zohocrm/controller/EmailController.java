package com.zohocrm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.services.ContactService;
import com.zohocrm.utilities.EmailService;

@Controller
public class EmailController {

	@Autowired
	private EmailService emailservice;
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/sendingEmail")
	public String getContactId(@RequestParam("id")long id, ModelMap model) {
		Contact contact=contactService.getOneContact(id);
		model.addAttribute("contact", contact);
		return "compose_email";
	}
	
	@RequestMapping("/sendEmail") 
	public String sendEmail(@RequestParam("to")String to, @RequestParam("sub") String subject, @RequestParam("emailBody")String emailBody) {
		emailservice.sendEmail(to, subject, emailBody);
		return "compose_email";
	}
}

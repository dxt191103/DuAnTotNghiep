package edu.poly.controller.site;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.dao.CustomerDAO;
import edu.poly.model.Customer;
import edu.poly.service.impl.MailerServiceImpl;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class contactus {

//	@Autowired
//	CustomerDAO dao;
//	@Autowired
//	SessionService session;
//	@Autowired
//	ParamService paramService;
//	@Autowired
//	MailerServiceImpl mailer;
//	@Autowired
//	ServletContext app;
	
	@RequestMapping("contactus")
	public String index() {
		return "home/contactus";
	}
	
//	@PostMapping("contactus")
//	public String change(Model model) {
//		String email = paramService.getString("email", "");
//		String fullname = paramService.getString("fullname", ""); 
//		String subject = "Send your Password!";
//		String phone = paramService.getString("phone", "");
//		String yourMessage = paramService.getString("yourMessage", "");
//		try {
//			if (fullname.isEmpty() && email.isEmpty()) {
//				model.addAttribute("message", "No Empty!");
//			}else {
//			Customer user = dao.findById(fullname).get();
//				if(!user.getEmail().equals(email)) {
//					model.addAttribute("message", "Wrong Email!");
//				}else {			
//					try {
//						mailer.send(email, subject, yourMessage);
//					} catch (MessagingException e) {
//						// TODO Auto-generated catch block
//						model.addAttribute("message", "Send Error!");
//					}
//					model.addAttribute("message", "Please check your Email!");
//					dao.save(user);
//				}
//			}
//		} catch (DataAccessException e) {
//			model.addAttribute("message", "Account invalid!");
//		}
//		return "home/contactus";
//	}
}

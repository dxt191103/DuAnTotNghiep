package edu.poly.controller.site;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.dao.CustomerDAO;
import edu.poly.model.Customer;
import edu.poly.model.Staff;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class ProfileController {
	@Autowired
	CustomerDAO dao;
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	SessionService sessionService;
	
	@RequestMapping("profile")
	public String profile() {
		return "home/profile";
	}
	
	@PostMapping(value = "profile", produces = "text/html")
    public String change(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password",  "");
        String fullname = paramService.getString("fullname", "");
        String phone = paramService.getString("phone", "");
        String email = paramService.getString("email", "");
        
        try {
            // Tìm khách hàng theo username
        	Optional<Customer> optionalUser = dao.findByUsername(username);
        	if (optionalUser.isPresent()) {
        	    Customer user = optionalUser.get();
        	    if (fullname == null || phone == null || email == null) {
        	        model.addAttribute("message", "All fields must be filled!");
        	    } else {
        	        // Cập nhật thông tin
        	        user.setFullname(fullname);
        	        user.setPhone(phone);
        	        user.setEmail(email);
        	        // Lưu vào cơ sở dữ liệu
        	        model.addAttribute("message", "Account is changed and please log in again ");
        	        dao.save(user);
        	    }
            } else {
            	//System.out.println("Account not found for username: " + username);
                model.addAttribute("message", "Account not found for username: " + username);
            }
        } catch (Exception e) {
            model.addAttribute("message", "Error occurred while updating account!");
        }
        
        return "home/profile";
    }
}

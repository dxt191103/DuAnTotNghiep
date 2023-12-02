package edu.poly.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.dao.BillDAO;

import edu.poly.dao.CustomerDAO;
import edu.poly.model.Bill;

import edu.poly.model.Customer;
@RequestMapping("admin")
@Controller
public class BillController {
	@Autowired
	BillDAO dao;
	
	@RequestMapping("bill")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Bill> page = dao.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "admin/billList";
	}
	
//	@RequestMapping("/accountControl")
//	public String control(Model model) {
//		Customer item = new Customer();  
//		model.addAttribute("item", item);
//		return "admin/accountControl";
//	}
	
	@RequestMapping("/bill/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Bill item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Bill> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/billControl";
	}
	
//	@RequestMapping("/account/create")
//	public String create(Customer item) {
//		dao.save(item);
//		return "redirect:/admin/accountControl";
//	}
//	
//	@RequestMapping("/account/delete/{username}")
//	public String create(@PathVariable("username") String username) {
//		dao.deleteById(username);
//		return "redirect:/admin/account";
//	}
//	
//	@RequestMapping("/account/update")
//	public String update(Customer item) {
//		dao.save(item);
//		return "redirect:/admin/account/edit/" + item.getUsername();
//	}
//	
//	
//	@ModelAttribute("activateds")
//	public Map<Boolean, String>getActivateds(){
//		Map<Boolean, String> map = new HashMap<>();
//		map.put(true, "Active");
//		map.put(false, "Unactive");
//		return map;
//	}
//	
//	@ModelAttribute("admins")
//	public Map<Boolean, String>getAdmins(){
//		Map<Boolean, String> map = new HashMap<>();
//		map.put(true, "Admin");
//		map.put(false, "Customer");
//		return map;
//	}
}

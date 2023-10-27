package edu.poly.controller.admin;


import java.text.SimpleDateFormat;
import java.util.Date;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.dao.StaffDAO;
import edu.poly.model.Staff;
@RequestMapping("admin")
@Controller
public class StaffController {
	@Autowired
	StaffDAO dao;
	
	@RequestMapping("staff")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Staff> page = dao.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "admin/staffList";
	}

	@RequestMapping("/staffControl")
	public String control(Model model) {
		Staff item = new Staff();
		model.addAttribute("item", item);
		return "admin/staffControl";
	}
	
	@RequestMapping("/staff/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Staff item = dao.findById(id).get();
		model.addAttribute("item", item);
		return "admin/staffControl";
	}
	
	@RequestMapping("/staff/create")
	public String create(Staff item) {
		item.setImage(item.getImage());
		item.setStatus(item.isStatus());
		dao.save(item);
		return "redirect:/admin/staffControl";
	}
	
	@RequestMapping("/staff/delete/{id}")
	public String create(@PathVariable("id") String id) {
		boolean status = true; // khai báo biến boolean có giá trị là true
//		status = !status; // phủ định giá trị của biến status, kết quả là false
//		System.out.println(status);
		//dao.deleteById(id);
		return "redirect:/admin/staff";
	}
	
	@RequestMapping("/staff/update")
	public String update(Staff item) {
		item.setImage(item.getImage());
		item.setStatus(item.isStatus());
		dao.save(item);
		return "redirect:/admin/staff/edit/" + item.getId();
	}
	
}

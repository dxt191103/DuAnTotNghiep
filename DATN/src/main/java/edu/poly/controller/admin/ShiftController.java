package edu.poly.controller.admin;

import java.util.Date;
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

import edu.poly.dao.ShiftDAO;
import edu.poly.model.Shift;


@RequestMapping("admin")
@Controller
public class ShiftController {
	@Autowired
	ShiftDAO dao;
	
	@RequestMapping("shift")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Shift> page = dao.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "admin/shiftList";
	}
	
	@RequestMapping("/shiftControl")
	public String control(Model model) {
		Shift item = new Shift();
		model.addAttribute("item", item);
		return "admin/shiftControl";
	}

	@RequestMapping("/shift/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Shift item = dao.findById(id).get();
		model.addAttribute("item", item);
//		List<Service> items = dao.findAll();
//		model.addAttribute("items", items);
		return "admin/shiftControl";
	}
	
	@RequestMapping("/shift/create")
	public String create(Shift item) {
		dao.save(item);
		return "redirect:/admin/shiftControl";
	}
	
	@RequestMapping("/shift/delete/{id}")
	public String create(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/admin/shift";
	}
	
	@RequestMapping("/shift/update")
	public String update(Shift item) {
		dao.save(item);
		return "redirect:/admin/shift/edit/" + item.getId();
	}

//	@ModelAttribute("availables")
//	public Map<Boolean, String>getAdmins(){
//		Map<Boolean, String> map = new HashMap<>();
//		map.put(true, "Stocking");
//		map.put(false, "Out of Stock");
//		return map;
//	}
}

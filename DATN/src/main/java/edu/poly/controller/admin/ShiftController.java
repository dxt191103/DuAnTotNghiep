package edu.poly.controller.admin;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.dao.ShiftDAO;
import edu.poly.model.Timeorder;


@RequestMapping("admin")
@Controller
public class ShiftController {
	@Autowired
	ShiftDAO dao;
	
	@RequestMapping("shift")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Timeorder> page = dao.findAll(pageable);
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
		Timeorder item = new Timeorder();
		model.addAttribute("item", item);
		return "admin/shiftControl";
	}

	@RequestMapping("/shift/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Timeorder item = dao.findById(id).get();
		model.addAttribute("item", item);
//		List<Service> items = dao.findAll();
//		model.addAttribute("items", items);
		return "admin/shiftControl";
	}
	
	@RequestMapping("/shift/create")
	public String create(@Valid Timeorder item, BindingResult br, Model model) {
		if (br.hasErrors()) {
			Map<String, String> errors = new HashMap<>();

			br.getFieldErrors().forEach(error -> errors.put(error.getField(), error.getDefaultMessage()));

			String errorMsg = "";

			for (String key : errors.keySet()) {
				errorMsg +="<li>" + errors.get(key) + "</li>";
//				errorMsg +="Lỗi ở: " + key + ", lí do: " + errors.get(key) + "\n";
			}
			model.addAttribute("message", errorMsg);
		} else {
			dao.save(item);
			model.addAttribute("message", "Mọi thứ hợp lệ!");
		}
		return "forward:/admin/shiftControl";
	}
	
	@RequestMapping("/shift/delete/{id}")
	public String create(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/admin/shift";
	}
	
	@RequestMapping("/shift/update")
	public String update(@Valid Timeorder item,BindingResult br, Model model) {
		if (br.hasErrors()) {
			Map<String, String> errors = new HashMap<>();

			br.getFieldErrors().forEach(error -> errors.put(error.getField(), error.getDefaultMessage()));

			String errorMsg = "";

			for (String key : errors.keySet()) {
				errorMsg +="<li>" + errors.get(key) + "</li>";
//				errorMsg +="Lỗi ở: " + key + ", lí do: " + errors.get(key) + "\n";
			}
			model.addAttribute("message", errorMsg);
		} else {
			dao.save(item);
			model.addAttribute("message", "Mọi thứ hợp lệ!");
		}
		return "forwark:/admin/shift/edit/" + item.getId();
	}

//	@ModelAttribute("availables")
//	public Map<Boolean, String>getAdmins(){
//		Map<Boolean, String> map = new HashMap<>();
//		map.put(true, "Stocking");
//		map.put(false, "Out of Stock");
//		return map;
//	}
}

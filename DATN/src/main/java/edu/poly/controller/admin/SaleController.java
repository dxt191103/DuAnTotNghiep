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
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import edu.poly.dao.SaleDAO;
import edu.poly.dao.ServiceDAO;
import edu.poly.model.Sale;
import edu.poly.model.Services;

@RequestMapping("admin")
@Controller
public class SaleController {
	@Autowired
	SaleDAO dao;

	@RequestMapping("sale")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Sale> page = dao.findAll(pageable);
		int currentPage = 1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "admin/saleList";
	}

	@RequestMapping("/saleControl")
	public String control(Model model) {
		Sale item = new Sale();
		model.addAttribute("item", item);
		return "admin/saleControl";
	}

	@RequestMapping("/sale/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Sale item = dao.findById(id).get();
		model.addAttribute("item", item);
//		List<Service> items = dao.findAll();
//		model.addAttribute("items", items);
		return "admin/saleControl";
	}

	@RequestMapping("/sale/create")
	public String create(@Valid Sale item, BindingResult br, Model model) {
		if (br.hasErrors()) {
			Map<String, String> errors = new HashMap<>();

			br.getFieldErrors().forEach(error -> errors.put(error.getField(), error.getDefaultMessage()));

			String errorMsg = "";

			for (String key : errors.keySet()) {
				errorMsg +="<li>" + errors.get(key) + "</li>";
//				errorMsg +="Lỗi ở: " + key + ", lí do: " + errors.get(key) + "\n";
			}
			model.addAttribute("message", errorMsg);
			return "forward:/admin/saleControl";
		} else {
			dao.save(item);
			model.addAttribute("message", "Thêm mới thành công");
		}
		return "forward:/admin/saleControl";
	}

	@RequestMapping("/sale/delete/{id}")
	public String create(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/admin/sale";
	}
	
	@RequestMapping("/sale/update")
	public String update(@Valid Sale item,  BindingResult br ,Model model) {
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
			model.addAttribute("message", "Cập nhật thành công");
			dao.save(item);
		}
		
		return "forward:/admin/sale/edit/" + item.getCode(); // taij sao dung redirect
	}

//	@ModelAttribute("availables")
//	public Map<Boolean, String>getAdmins(){
//		Map<Boolean, String> map = new HashMap<>();
//		map.put(true, "Stocking");
//		map.put(false, "Out of Stock");
//		return map;
//	}
}

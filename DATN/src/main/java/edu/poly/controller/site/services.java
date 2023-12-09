package edu.poly.controller.site;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.model.CartItem;
import edu.poly.model.Services;
import edu.poly.service.ShoppingCartService;
import edu.poly.dao.CustomerDAO;
import edu.poly.dao.ServiceDAO;
import edu.poly.utils.CookieService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class services {
	@Autowired
	ServiceDAO serDAO;
	@Autowired
	SessionService sessionService;

	
	@RequestMapping("services")
	public String services(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Services> page = serDAO.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "home/services";
	}
	
	@RequestMapping("search")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(sessionService.get("keywords"));
		sessionService.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		Page<Services> page = serDAO.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("page", page);

		
		return "home/searchServices";
	}
//	@RequestMapping(value = "product/detail/{id}")
//	public String view(ModelMap model, @PathVariable("id") String id) {
//		Service service = new Service();
//		List<Service> services = serDAO.findAll();
//		for (Service sr : services) {
//			if (sr.getId() == id) {
//				service = sr;
//				break;
//			}
//		}
//		model.addAttribute("services", services);
//		model.addAttribute("sr", service);
//		return "home/services";
//	}
}

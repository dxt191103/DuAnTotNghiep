package edu.poly.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.dao.BillDAO;
import edu.poly.dao.BillDetailDAO;
import edu.poly.model.Bill;
import edu.poly.model.BillDetail;
import edu.poly.model.Customer;
import edu.poly.utils.CookieService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;

@Controller
@RequestMapping("admin")
public class BillDetailController {
	
	
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	BillDetailDAO billDetailDAO;
	@Autowired
	BillDAO billDAO; 
	

	@RequestMapping("billDetail")
	public String locBrand(Model model, @RequestParam("id") int id, @RequestParam("p") Optional<Integer> p) {
		Bill bill = new Bill();
		List<Bill> bills = billDAO.findAll();
		for (Bill bl : bills) {
			if (bl.getId() == id) {
				bill = bl;
				break;
			}
		}	
		model.addAttribute("bl", bill);
		
		Pageable pageable = PageRequest.of(p.orElse(0), 999);
		Page<BillDetail> page = billDetailDAO.findByBill(String.valueOf(id), pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "admin/billDetailList";
	}
	
	
}

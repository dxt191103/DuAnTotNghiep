package edu.poly.controller.site;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.poly.config.Config;

import edu.poly.dao.BillDAO;
import edu.poly.dao.CustomerDAO;
import edu.poly.dao.SaleDAO;
import edu.poly.dao.ServiceDAO;
import edu.poly.dao.ShiftDAO;
import edu.poly.model.Bill;
import edu.poly.model.CartItem;
import edu.poly.model.Customer;
import edu.poly.model.Sale;
import edu.poly.model.Services;
import edu.poly.model.Timeorder;
import edu.poly.service.ShoppingCartService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;
import javax.servlet.http.HttpServlet;

@Controller
@RequestMapping("home")
public class CheckOutController2 extends HttpServlet {
	@Autowired
	ParamService paramService;
	@Autowired
	ShoppingCartService cart;
	@Autowired
	BillDAO dao;
	@Autowired
	CustomerDAO daoC;
	@Autowired
	ShiftDAO daoT;
	@Autowired
	SaleDAO daoS;
	@Autowired
	ServiceDAO daoP;
	public static List<CartItem> list = new ArrayList<>();
	@RequestMapping("/param")
	public String getParam() {
		return "redirect:/home/index";
	}
	
	@PostMapping("/param")
	public String postParam() {
		LocalDate currentDate = LocalDate.now();
		String cusname = paramService.getString("cusname", "");
//		System.err.println(cusname);
		String currentDateStr = currentDate.toString();
//		System.err.println(currentDateStr);
		String sername = paramService.getString("sername", "");
//		System.err.println(sername);
		String price = paramService.getString("price", "");
//		System.err.println(price);
		String dayorder = paramService.getString("dayorder", "");
//		System.err.println(dayorder);
		String timeorder = paramService.getString("timeOrder", "");
//		System.err.println(timeorder);
		String sale = paramService.getString("sale", "");
//		System.err.println(sale);
		String total = paramService.getString("total", "");
//		System.err.println(total);
		
		
		
		
		
		
		String name = paramService.getString("name", "");
		Customer cs = daoC.getById(name);				
//		System.err.println(cs.getPhone());
		Sale sa = daoS.getById(sale);
//		System.err.println(sa.getPercentPrice());
		Double gia = Double.parseDouble(price);
		int percent = sa.getPercentPrice();
		Double totalPrice = gia - (gia*percent)/100;
//		System.err.println(totalPrice);
		Timeorder to = daoT.getById(timeorder);
//		System.err.println(to.getTimeline());
		String idp = paramService.getString("id", "");
		int svd = Integer.parseInt(idp);
		Services sv = daoP.getById(svd);
//		System.err.println(sv.getName());		
		
		
		Bill bill = new Bill();
		bill.setAccount(cs);
		bill.setDayorder(dayorder);
		bill.setTime(currentDateStr);
		bill.setPrice(gia);
		bill.setTotal(totalPrice);
		bill.setTimeOrder(to);
		bill.setSale(sa);
		bill.setService(sv);
		dao.save(bill);
		
		
		return "redirect:/home/pay";
	}
}
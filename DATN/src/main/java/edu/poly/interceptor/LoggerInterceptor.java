package edu.poly.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import edu.poly.model.Customer;
import edu.poly.service.ShoppingCartService;
import edu.poly.utils.SessionService;

@Component
public class LoggerInterceptor implements HandlerInterceptor{
	@Autowired
	SessionService sessionService;
	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("postHandle()->" + request.getRequestURI());
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		Customer user = sessionService.get("user");
		if(user!=null) {
			request.setAttribute("isLogin", true);
			request.setAttribute("username", user.getUsername());
			request.setAttribute("password", user.getPassword());
			request.setAttribute("fullname", user.getFullname());
			request.setAttribute("phone", user.getPhone());
			request.setAttribute("email", user.getEmail());
		}else {
			request.setAttribute("isLogin", false);
		}
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("postHandle()->" + request.getRequestURI());
	}
	
}

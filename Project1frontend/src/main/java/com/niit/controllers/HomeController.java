package com.niit.controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.model.CartItem;
import com.niit.model.Product;
import com.niit.model.User;
import com.niit.services.CartItemService;
import com.niit.services.ProductService;

@Controller
public class HomeController {
	@Autowired
	private CartItemService cartItemService;
	
	@Autowired
	private ProductService productService;
public HomeController(){
	System.out.println("HomeController bean is created");
}

//This a handler method
//It can handle the request "http://localhost:8080/project1frontend/home -> DispatcherServlet -> "home"->
// /WEB-INF/views/home.jsp
@RequestMapping(value="/home")
public String getHomePage(HttpSession session,Model m,@AuthenticationPrincipal Principal principal){
	if(principal!=null){
	User user=cartItemService.getUser(principal.getName());
	List<CartItem> cartItems=user.getCartItems();
	session.setAttribute("cartSize", cartItems.size());
    }
	List<Product> prods=productService.getAllProducts();
	m.addAttribute("productsAttr",prods );
	return "home";
}

//   /login
//  /login?error  -> invalid credentials
//  /login?logout  -> successful logout
@RequestMapping("/login")
public String loginPage(@RequestParam(required=false) String error,@RequestParam(required=false) String logout,Model model){
	if(error!=null)
	model.addAttribute("error","Invalid Username/Password");
	if(logout!=null)
		model.addAttribute("msg","Loggedout successfully");
	return "login";
}
}
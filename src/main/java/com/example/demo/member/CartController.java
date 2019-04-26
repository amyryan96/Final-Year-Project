package com.example.demo.member;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class CartController {
	
	@Autowired
	private CartService cartSer;
	
	
	/*@RequestMapping(method=RequestMethod.POST, value="/addItem")
	public void addItem(@RequestBody Cart cart)
	{
		cartSer.addItem(cart);
		return "adminsuccess";
	}
	*/
	
	/*@PostMapping("/addItem")
	public String addItem( HttpServletRequest request)
	{
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String category = request.getParameter("category");
		String manufacturer = request.getParameter("manufacturer");
	
		Product product1 = new Product(title, price, category, manufacturer);

		cartSer.addItem(product1);
		
		return "adminSuccess";
	}*/
	
	@RequestMapping(method=RequestMethod.POST, value="/cart")
	public void addItem(@RequestBody Cart cart)
	{
		cartSer.addItem(cart);
	}
	

}

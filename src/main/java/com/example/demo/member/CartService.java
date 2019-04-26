package com.example.demo.member;

import org.springframework.beans.factory.annotation.Autowired;

public class CartService {
	
	@Autowired
	private CartRepository cartRep;
	
	
	public void addItem(Cart cart) {
		cartRep.save(cart);
	}

}

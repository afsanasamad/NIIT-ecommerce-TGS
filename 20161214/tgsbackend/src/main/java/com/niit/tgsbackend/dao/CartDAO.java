package com.niit.tgsbackend.dao;

import com.niit.tgsbackend.model.Cart;

public interface CartDAO {
	
	public void addCart(Cart cart);
	public void updateCart(Cart cart);
	public Cart getCartById(int cartId);

}

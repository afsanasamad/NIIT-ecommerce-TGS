package com.niit.tgsbackend.dao;

import java.util.List;

import com.niit.tgsbackend.model.Product;
import com.niit.tgsbackend.model.User;

public interface UserDAO {
	public void addUser(User p);
	public void updateUser(User p);
	public List<User> listUsers();
	public User getUserById(int id);
	public void removeUser(int id);
	

}

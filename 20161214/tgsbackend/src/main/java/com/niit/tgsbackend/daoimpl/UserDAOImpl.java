package com.niit.tgsbackend.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.tgsbackend.dao.UserDAO;
import com.niit.tgsbackend.model.Cart;
import com.niit.tgsbackend.model.User;


@Repository("userDAO")
@Transactional
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO{

	@Autowired
	SessionFactory sessionFactory;
	public void addUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		user.setEnabled(true);
		user.setRole("ROLE_USER");
		
		//create a new cart for the user
		Cart cart=new Cart();
		cart.setUser(user);
		user.setCart(cart);
		
		session.saveOrUpdate(user);
		
	}

	public void updateUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		session.update(user);
		
	}

	public void deleteUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(user);
		
	}

	public User getUserById(int userId) {
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.createQuery("from User where userId="+userId).getSingleResult();
		return user;
	}

	public List<User> listUsers() {
		Session session=sessionFactory.getCurrentSession();
		List<User> users=session.createQuery("from User").getResultList();
		return users;
	}

	public User getUserByUsername(String username) {
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.createQuery("from User where username="+username).getSingleResult();
		return user;
	}

}

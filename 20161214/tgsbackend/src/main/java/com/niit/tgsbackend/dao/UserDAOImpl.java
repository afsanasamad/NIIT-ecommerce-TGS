package com.niit.tgsbackend.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.tgsbackend.model.User;
@Repository("userDAO")
@Transactional
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO{

	@Autowired
	SessionFactory sessionfactory;
	
	
	public void addUser(User p) {
		Session session=sessionfactory.getCurrentSession();
		session.persist(p);	
		session.flush();
	}

	
	public void updateUser(User p) {
		Session session=sessionfactory.getCurrentSession();
		session.update(p);
		
	}

	
	public List<User> listUsers() {
		Session session=sessionfactory.getCurrentSession();
		List<User> users=session.createQuery("from User").getResultList();
		return users;
	}

	
	public User getUserById(int id) {
		Session session=sessionfactory.getCurrentSession();
		User user=(User)session.createQuery("from User where id="+id).getSingleResult();
		return user;
	}

	
	public void removeUser(int id) {
		
		Session session=sessionfactory.getCurrentSession();
		User user=(User)session.createQuery("from User where id="+id).getSingleResult();
		session.delete(user);
	}

}

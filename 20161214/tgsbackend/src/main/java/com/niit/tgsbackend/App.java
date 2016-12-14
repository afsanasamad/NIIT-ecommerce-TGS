package com.niit.tgsbackend;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.niit.tgsbackend.config.AppContext;
import com.niit.tgsbackend.model.Product;
import com.niit.tgsbackend.model.User;
import com.niit.tgsbackend.dao.ProductDAO;
import com.niit.tgsbackend.dao.UserDAO;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        AbstractApplicationContext context=new AnnotationConfigApplicationContext(AppContext.class);
        ProductDAO productDAO=(ProductDAO)context.getBean("productDAO");
        Product product=new Product();
        product.setName("GoogleGlasses");
        product.setBrand("Google");
        product.setCategory("Miscelleneous");
        product.setDesc("Intelligent and blah blah blah.");        
        productDAO.addProduct(product);
        for(Product p:productDAO.listProducts())
        {
        	System.out.println(p.getId());
        	System.out.println(p.getName());
        }
        UserDAO userDAO=(UserDAO)context.getBean("userDAO");
        User user=new User();
        user.setName("Hillary Trump");
        user.setPincode("682025");
        user.setCity("Cochin");
        user.setAddress("No 25, Rose Villa, MG Road"); 
		user.setPassword("password"); 
        userDAO.addUser(user);
        for(User u:userDAO.listUsers())
        {
        	System.out.println(u.getId());
        	System.out.println(u.getName());
        }
        
    }
}

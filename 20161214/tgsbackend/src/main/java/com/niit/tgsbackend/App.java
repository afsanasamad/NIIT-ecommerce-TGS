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
     // UserDAO userDAO=(UserDAO)context.getBean("userDAO");
        ProductDAO productDAO=(ProductDAO)context.getBean("productDAO");
        
        //register new user
        
      /*  User user=new User();
        user.setName("John");
        user.setUsername("john");
        user.setPassword("password@123");
        user.setMobile("9830098300");
        
        userDAO.addUser(user);*/
        
        
        //add a product
        
        Product product=new Product();
        product.setProductName("Google Glasses");
        product.setBrand("Google");
        product.setPrice(70000);
        product.setCategory("Miscellaneous");
        product.setDesc("Blah Blah");
        
        productDAO.addProduct(product);
        
        for(Product p:productDAO.listProducts())
        {
        	System.out.println(p.getProductName());
        	System.out.println(p.getProductId());
        }
        
    }
}

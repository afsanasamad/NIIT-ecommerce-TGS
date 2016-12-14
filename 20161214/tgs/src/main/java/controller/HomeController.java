package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.tgsbackend.dao.ProductDAO;
import com.niit.tgsbackend.model.Product;


@Controller
public class HomeController {

	@Autowired
	ProductDAO productDAO;
	
	
	@RequestMapping("/")
	public String indexPage()
	{
		return "index";
	}
	
	@RequestMapping("/products")
	public ModelAndView productPage()
	{
		List<Product> listProducts=productDAO.listProducts();
		String productList=new Gson().toJson(listProducts);
		ModelAndView model=new ModelAndView("products");
		model.addObject("product",new Product());
		model.addObject("listProducts", listProducts);		
		return model;
	}
	
	
	@RequestMapping("/helo")
	public String welcome()
	{
		return "welcome";
		
	}
	@RequestMapping("/abc")
	public ModelAndView abc()
	{
		ModelAndView model= new ModelAndView("abc");
		return model;
		
	}
	
	
}

package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.tgsbackend.dao.ProductDAO;
import com.niit.tgsbackend.model.Product;
import com.google.gson.Gson;


@Controller
public class HomeController {
	
//	@Autowired 
	//ProductDAO productDAO;

	
	@RequestMapping("/")
	public String indexPage()
	{
		return "index";
	}
	@RequestMapping("/home")
	public String home()
	{
		return "index";
	}

	@RequestMapping("/login")
	public String loginPage()
	{
		return "login";
	}

//	@RequestMapping("/products")
//	public String productsPage()
//	{
//		return "products";
//	}
//	@RequestMapping(value = "/admin", method = RequestMethod.GET)
//	public String Admin(Model model) {
//		model.addAttribute("product", new Product());
//		model.addAttribute("listproducts", productDAO.listProducts());
//		return "admin";
//
//	}
	
//	@RequestMapping("/admin")
//	public String adminPage()
//	{
//		return "admin";
//	}
	//@RequestMapping("/products")
	//public ModelAndView productPage()
	//{
		//List<Product> listProducts=productDAO.listProducts();
		//String productList=new Gson().toJson(listProducts);
	//	ModelAndView model=new ModelAndView("products");
	//	model.addObject("product",new Product());
		//model.addObject("listProducts", listProducts);		
//		return model;
	//}
//	@RequestMapping("/abc")
//	public ModelAndView abc()
//	{
//		ModelAndView model= new ModelAndView("abc");
//		return model;
//		
//	}
//	@RequestMapping(value = "/admin", method = RequestMethod.GET)
//	public String Admin(Model model) {
//		model.addAttribute("product", new Product());
//		model.addAttribute("listproducts", productDAO.listProducts());
//		return "admin";
//
//	}
	@RequestMapping("/startFlow")
	public String initiateFlow()
	{
		return "redirect:/demoFlow";
	}
		
	@RequestMapping(value="/authfailure",method=RequestMethod.POST)
	public String accessDeniedPage()
	{
		return "accessDenied";
	}
}

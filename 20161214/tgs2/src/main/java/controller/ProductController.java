//package controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.google.gson.Gson;
//import com.niit.tgsbackend.dao.ProductDAO;
//import com.niit.tgsbackend.dao.ProductDAOImpl;
//import com.niit.tgsbackend.model.Product;
//
//@Controller
//public class ProductController {
//
//	@Autowired
//	 ProductDAO productDAO=new ProductDAOImpl();
//
//	@RequestMapping("/")
//	public String indexPage()
//	{
//		return "index";
//	}
//
//	@RequestMapping("/products")
//	public ModelAndView productPage()
//	{
//		List<Product> listProducts=productDAO.listProducts();
//		String productList=new Gson().toJson(listProducts);
//		ModelAndView model=new ModelAndView("products");
//		model.addObject("product",new Product());
//		model.addObject("listProducts", listProducts);		
//		return model;
//	}
//	@RequestMapping("/add")
//	public String addProduct()
//	{
//		Product product=new Product();
//		product.setName("Nikon D700");
//		product.setCategory("Camera");
//		productDAO.addProduct(product);
//		return "redirect:/productpage";
//	}
//	
//	
//
//	
//}

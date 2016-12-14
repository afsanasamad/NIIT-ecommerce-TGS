package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
	
	
	@RequestMapping("/helo")
	public String welcome()
	{
		return "welcome";
		
	}
	@RequestMapping("/")
	public String indexPage()
	{
		return "index";
	}
	@RequestMapping("/abc")
	public ModelAndView abc()
	{
		ModelAndView model= new ModelAndView("abc");
		return model;
		
	}
	@RequestMapping("/startFlow")
	public String initiateFlow()
	{
		return "redirect:/demoFlow";
	}
	
	
}

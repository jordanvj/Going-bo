package net.van.goingfront.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView  index() {
		
		ModelAndView mv = new ModelAndView("page");
		//mv.addObject("greeting", "Welcome to GoingBo");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		return mv;
	}
	@RequestMapping(value = "/flights")
	public ModelAndView  flights() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Flights");
		mv.addObject("userClickFlights", true);
		return mv;
	}
	@RequestMapping(value = "/hotels")
	public ModelAndView  hotels() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Hotels");
		mv.addObject("userClickHotels", true);
		return mv;
	}
	@RequestMapping(value = "/buses")
	public ModelAndView  buses() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Buses");
		mv.addObject("userClickBuses", true);
		return mv;
	}
	@RequestMapping(value = "/about")
	public ModelAndView  about() {
		
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About");
		mv.addObject("userClickAbout", true);
		return mv;
	}
	
	
	
	
	
}	
	
	
//	@RequestMapping(value = "/test/{greeting}")
//	public ModelAndView test (@PathVariable("greeting")String greeting) {
//		if(greeting == null) {
//			greeting = "hello Guest";
//		}
//		
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting", "welcome to Exploring the world");
//		return mv;
//	}
	
//	@RequestMapping(value = "/test")
//	public ModelAndView test (@RequestParam(value="greeting", required=false)String greeting) {
//		if(greeting == null) {
//			greeting = "hello Guest";
//		}
//		
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting", "welcome to Exploring the world");
//		return mv;
//	}


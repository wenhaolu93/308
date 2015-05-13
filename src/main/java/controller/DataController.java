package controller;


import java.util.List;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import entity.*;
import services.*;

@Controller
public class DataController {
	
	@Autowired
	DataService dataService;
	
//	@RequestMapping(value = "/redirect:useraccount", method = RequestMethod.GET)
//	   public String redirectUseraccount() {
//	      System.out.println(1);
//	      return "redirect:user-account";
//	   }
	 @RequestMapping(value = "/useraccount", method = RequestMethod.GET)
	   public String userAccount() {
	      return "redirect:user-account";
	   }
	   
	   @RequestMapping(value = "/user-account", method = RequestMethod.GET)
	   public String userAccount2() {
	     
	      return "user-account";
	   }
	@RequestMapping("useraccount")
	public ModelAndView userAccount(@ModelAttribute User user) {
		return new ModelAndView("redirect:user-account");
	}
	
//	@RequestMapping("index")
//	public ModelAndView getIndex(@ModelAttribute User user) {
//		return new ModelAndView("index");
//	}
//	@RequestMapping("signin")
//	public ModelAndView signIn(@ModelAttribute User user) {
//		return new ModelAndView("redirect:sign_in");
//	}
	
	@RequestMapping("form")
	public ModelAndView getForm(@ModelAttribute User user) {
		return new ModelAndView("form");
	}
	
	@RequestMapping("search")
	public ModelAndView getForm(HttpSession session) {
		return new ModelAndView("search");
	}
	
	@RequestMapping("register")
	public ModelAndView registerUser(@ModelAttribute User user) {
		dataService.insertRow(user);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping(value="logout",method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute("username");
		return "redirect:login";
	}
	
	
//	@RequestMapping(method = RequestMethod.GET)
//	public String login(ModelMap modelMap){
//		modelMap.put("user", new User());
//		return "login";
//	}
	
//	@RequestMapping(value="login", method = RequestMethod.POST)
//	public String login(@ModelAttribute(value="user") User acc, ModelMap modelMap, HttpSession session){
//		if(dataService.login(acc)!=null){
//			session.setAttribute("username", acc.getUsername());
//			session.setAttribute("email", acc.getEmail());
//			session.setAttribute("firstname", acc.getFirstname());
//			session.setAttribute("lastname", acc.getLastname());
//			return "index";
//		}
//		else{
//			modelMap.put("message", "User is invalid");
//			return "login";
//		}
//		
//	}
//	@RequestMapping("login")
//	 public ModelAndView loginUser(@ModelAttribute User user) {
//	  dataService.login(user);
//	  return new ModelAndView("login");
//	 }
	
	@RequestMapping("list")
	public ModelAndView getList() {
		List userList = dataService.getList();
		return new ModelAndView("list","userList",userList);
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("edit")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute User user) {
		User userObject = dataService.getRowById(id);
		return new ModelAndView("edit","userObject",userObject);
	}
	
	@RequestMapping("update")
	public ModelAndView updateUser(@ModelAttribute User user) {
		dataService.updateRow(user);
		return new ModelAndView("redirect:list");
	}

}

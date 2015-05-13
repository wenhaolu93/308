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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
	import entity.*;
import services.*;

	@Controller
	public class SearchController {

		private static DummyDB dummyDB = new DummyDB();

		@RequestMapping(value = "/search", method = RequestMethod.GET)
		public ModelAndView index() {

			User2 userForm = new User2();

			return new ModelAndView("search", "userForm", userForm);
		}

		@RequestMapping(value = "/get_country_list", 
						method = RequestMethod.GET, 
						headers="Accept=*/*")
		public @ResponseBody List<String> getCountryList(@RequestParam("term") String query) {
			List<String> countryList = dummyDB.getCountryList(query);
			System.out.println("country:"+countryList);
			return countryList;
		}

		@RequestMapping(value = "/get_tech_list", 
						method = RequestMethod.GET, 
						headers="Accept=*/*")
		public @ResponseBody List<String> getTechList(@RequestParam("term") String query) {
			List<String> countryList = dummyDB.getTechList(query);
			
			return countryList;
		}
	}

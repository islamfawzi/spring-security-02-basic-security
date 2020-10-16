package org.spring.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	/** Restricted to EMPLOYEE Role **/
	@GetMapping("/")
	public String home() {
		return "home";  		/** /WEB-INF/view/home.jsp **/
	}
	
	/** Restricted to MANAGER Roles **/
	@GetMapping("/leaders")
	public String leaders() {
		return "leaders";
	}
	
	/** Restricted to ADMIN Role **/
	@GetMapping("system")
	public String system() {
		return "system";
	}
}

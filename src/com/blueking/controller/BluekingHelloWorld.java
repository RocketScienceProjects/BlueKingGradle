/**
 * 
 */
package com.blueking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Arun Pro
 *
 */

@Controller
public class BluekingHelloWorld {

	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
 
		String message = "<br><div style='text-align:center;'>"
				+ "<h3> Hello World, © Rocket Science Projects</h3></div><br><br>";
		return new ModelAndView("welcome", "message", message);
	}
}

package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService ls;

	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public String login(@ModelAttribute("form") Users users, Model model) {
		return "login";
	}

	@RequestMapping(value = "/login", method=RequestMethod.POST)
	public String login(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		//		String id =form.getId();
		//		String pass =form.getPass();

		Users u = ls.findByIdPass(users);

		if(u==null){
			return "login";
		}

		Integer account =u.getAccountLevel();

		if(account==0){
			// 	String login = u.getUsername();
			session.setAttribute("login", u);
			return "usersMypage";
		}
		if(account==1){
			session.setAttribute("login", u);
			return "adminMypage";
		}
		if(account==2){
			session.setAttribute("login", u);
			return "superuserMypage";
		}

		return"login";
	}



	@RequestMapping("/logout")
	public String logout(@ModelAttribute("form") Users users , Model model, HttpSession session){

		session.invalidate();
		return "logout";
	}
}

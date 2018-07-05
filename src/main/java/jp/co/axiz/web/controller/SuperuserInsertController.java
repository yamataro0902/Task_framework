package jp.co.axiz.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.co.axiz.web.entity.Users;
import jp.co.axiz.web.service.SuperuserInsertService;

@Controller
public class SuperuserInsertController {


	@Autowired
	SuperuserInsertService is;

	@RequestMapping(value="/superuserInsert", method =RequestMethod.GET)
	public String janp(@ModelAttribute("form") Users users, Model model) {
		return "superuserInsert";
	}

	@RequestMapping(value="/superuserInsert", method =RequestMethod.POST)
	public String insert(@ModelAttribute("form") Users users, Model model, HttpSession session) {
		String id = users.getUserId();
		String pass = users.getPassword();

		if (id == null || id.isEmpty()) {
			return "superuserInsert";
		}

		if (pass == null || pass.isEmpty()) {
			return "superuserInsert";
		}

		session.setAttribute("form", users);
		return "superuserInsertConfirm";
	}

	@RequestMapping(value="/superuserInsertConfirm", method =RequestMethod.POST)
	public String superuserInsertConfirm(@ModelAttribute("form") Users users, Model model, HttpSession session) {



				is.insertAdmin(users);

				return "superuserInsertResult";
			}

}
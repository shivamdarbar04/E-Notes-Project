package com.becoder.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.becoder.dao.UserDao;
import com.becoder.entity.Notes;
import com.becoder.entity.User;
import com.mysql.cj.Session;

@Controller
@RequestMapping("/user/")
public class UserController {

	@Autowired
	private UserDao userDao;

	@RequestMapping("/add_notes")
	public String addNotes() {
		return "add_notes";
	}

	@RequestMapping("/view_notes")
	public String viewNotes(HttpSession session, Model m) {
		User us = (User) session.getAttribute("userObj");
		List<Notes> notes = userDao.getNotesByUser(us);
		m.addAttribute("list", notes);
		return "view_notes";
	}

	@RequestMapping("/edit_notes")
	public String editNotes(@RequestParam("id") int id, Model m) {
		Notes n = userDao.getNotesById(id);
		m.addAttribute("notes", n);
		return "edit";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userObj");
		session.setAttribute("msg", "Logout sucessfully");
		return "redirect:/login";
	}

	@RequestMapping(path = "/update_notes", method = RequestMethod.POST)
	public String updateNotes(@ModelAttribute Notes n, HttpSession session) {
		User us = (User) session.getAttribute("userObj");

		n.setUser(us);
		n.setDate(LocalDateTime.now().toString());

		userDao.updateNotes(n);
		
		session.setAttribute("msg", "Notes Update sucessfully");

		return "redirect:/user/view_notes";
	}

	@RequestMapping(path = "/save_notes", method = RequestMethod.POST)
	public String saveNotes(@ModelAttribute Notes n, HttpSession session) {
		User us = (User) session.getAttribute("userObj");
		n.setDate(LocalDateTime.now().toString());
		n.setUser(us);
		System.out.println(n);
		/* n.setId(Integer.parseInt(n.getId())); */
		userDao.saveNotes(n);
		session.setAttribute("msg", "Notes Added Sucessfully");
		return "redirct:/user/add_notes";
	}

}

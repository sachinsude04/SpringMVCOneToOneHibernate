package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Pancard;
import com.model.Person;
import com.service.PersonManipulationService;

@Controller
public class PersonController {

	@Autowired
	PersonManipulationService personManipulationService;

	@RequestMapping(value = "/register")
	public String redirect(Model model) {
		Person person = new Person();
		Pancard pancard = new Pancard();
		person.setPancard(pancard);
		model.addAttribute("personForm", person);
		return "registeration";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String savePerson(Model model, @ModelAttribute("personForm") Person person) {
		Pancard pancard = person.getPancard();
		pancard.setPerson(person);
		personManipulationService.savePersonData(person);
		model.addAttribute("studentForm", "Successful insertion of record");
		return "registeration";
	}
	@RequestMapping(value="/display")
	public String displayData(Model model)
	{
		model.addAttribute("list", personManipulationService.getPersonData());
		return "welcome";
	}
	@RequestMapping(value="/edit")
	public String updateData(Model model,@RequestParam Integer id)
	{
		Person person=personManipulationService.editPersonData(id);
		model.addAttribute("personForm", person);
		return "Edit";
	}
	@RequestMapping(value="/delete")
	public String deletePerson(Model model,@RequestParam Integer id)
	{
		personManipulationService.deletePersonData(id);
		model.addAttribute("list", personManipulationService.getPersonData());
		return "welcome";
	}
}

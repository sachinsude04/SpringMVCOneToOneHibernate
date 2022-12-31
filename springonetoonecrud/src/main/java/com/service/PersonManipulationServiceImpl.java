package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.dao.PersonManipulationDao;
import com.model.Person;
@Service
@Component
public class PersonManipulationServiceImpl implements PersonManipulationService {

	@Autowired
	PersonManipulationDao personManipulationDao;
	public Person savePersonData(Person person)
	{
		return personManipulationDao.savePersonData(person);
	}
	public List<Person> getPersonData()
	{
		return personManipulationDao.getPersonData();
	}
	public Person editPersonData(Integer id)
	{
		return personManipulationDao.editPersonData(id);
	}
	public void deletePersonData(Integer id)
	{
		personManipulationDao.deletePersonData(id);
	}
}

package com.service;

import java.util.List;

import com.model.Person;

public interface PersonManipulationService {
public Person savePersonData(Person person);

public List<Person> getPersonData();

public Person editPersonData(Integer id);

public void deletePersonData(Integer id);
}

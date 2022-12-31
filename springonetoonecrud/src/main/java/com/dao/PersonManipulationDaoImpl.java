package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Person;

@Repository
@Transactional
public class PersonManipulationDaoImpl implements PersonManipulationDao {

	@Autowired
	SessionFactory sessionFactory;
	public Person savePersonData(Person person)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		
		session.saveOrUpdate(person);
		
		
		transaction.commit();
		boolean b=transaction.wasCommitted();
		
		if(b==true)
		{
			System.out.println("Successful insertion of the Person");
		}
		else
		{
			System.out.println("Failure in data insertion");
		}
		return person;
	}
	public List<Person> getPersonData()
	{
		Session session=sessionFactory.openSession();
		
		@SuppressWarnings("unchecked")
		List<Person> persons=session.createCriteria(Person.class).list();
		return persons;
	}
	public Person editPersonData(Integer id)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Person person=(Person)session.load(Person.class, id);
		transaction.commit();
		session.flush();
		return person;
	}
	public void deletePersonData(Integer id)
	{
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Person person=(Person)session.load(Person.class, id);
		session.delete(person);
		transaction.commit();
		
	}
}

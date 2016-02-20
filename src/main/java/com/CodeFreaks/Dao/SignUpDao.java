package com.CodeFreaks.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.CodeFreaks.Model.SignUpModel;

@Transactional
@Repository
public class SignUpDao {

	@Autowired
	SessionFactory sessionFactory;

	public void signup(SignUpModel signUpModel) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.save(signUpModel);
		System.out.println("done");
	}
	
	
}

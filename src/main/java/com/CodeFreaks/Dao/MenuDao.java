package com.CodeFreaks.Dao;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.CodeFreaks.Model.CategoryModel;


@Repository
@Transactional
public class MenuDao {
	
	@Autowired
	SessionFactory sessionFactory;



	
}

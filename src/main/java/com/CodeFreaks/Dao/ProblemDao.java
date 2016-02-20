package com.CodeFreaks.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.CodeFreaks.Model.ProblemModel;

@Transactional
@Repository
public class ProblemDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void addProblem(ProblemModel problemModel) {
		// Add Problem 
		System.out.println("Add problem method on ProblemDao.java");
		Session session=sessionFactory.openSession();
		session.save(problemModel);
		//session.flush();
		System.out.println("Problem added successful.....done...");		
		System.out.println("------------------add problem done---------------------------");
	}

	public List<ProblemModel> searchProblem() {
		// search problem
		List<ProblemModel> listProblem=new ArrayList<ProblemModel>();
		System.out.println("search method on ProblemDao");
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("from problems");
		listProblem=q.list();
		System.out.println(+listProblem.size()+" Problem found from problems ");
		System.out.println("--------------------search done------------------------");
		return listProblem;
	}

	public ProblemModel getProblemByID(int problemID) {
		// get data from table
		System.out.println(" problem id::"+problemID);
		Session session=sessionFactory.openSession();
		ProblemModel problemModel=(ProblemModel) session.load(ProblemModel.class, problemID);
		return problemModel;
	}

	public void deleteProblem(ProblemModel problemModel) {
		// Delete Problem
		System.out.println("delete on problemDao");
		Session session=sessionFactory.openSession();
		session.delete(problemModel);
		session.flush();
		System.out.println("------------delete done-----------");
		
	}

	public void updateProblem(ProblemModel problemModel) {
		// update problem
		System.out.println("updating...");
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(problemModel);
		session.flush();
		System.out.println("---------------update done-------------------");
		
	}

	public List<ProblemModel> viewProblem(int problemID) {
		// view problem
		System.out.println("on view problem");
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("from problems");
		List<ProblemModel> listProblem=q.list();
		return listProblem;
	}
}

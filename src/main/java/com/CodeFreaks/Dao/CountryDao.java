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
import com.CodeFreaks.Model.CountryModel;
import com.CodeFreaks.Model.StreamModel;

@Transactional
@Repository
public class CountryDao {

	@Autowired
	SessionFactory sessionFactory;

	public void addCountry(CountryModel countryModel) {
		// Add Country
		System.out.println("on add country Dao");
		Session session = sessionFactory.openSession();
		session.save(countryModel);
		System.out.println("One Country ADDED ...done");

	}

	public List<CountryModel> viewCountry() {
		// view Country
		List<CountryModel> listcountry=new ArrayList<CountryModel>();
		System.out.println("on CountryDao viewcountry()");
		Session session=sessionFactory.openSession();
		Query q=session.createQuery("from country");
		listcountry=q.list();
		System.out.println(+listcountry.size()+ " record found...Country view ....done");
		return listcountry;
	}

	public CountryModel searchCountryById(int countryID) {
		// 
		CountryModel countryModel=null;
		try{
			System.out.println("searchcategorybyid called");
			Session session=sessionFactory.getCurrentSession();
			countryModel=(CountryModel)session.load(CountryModel.class, countryID);
			System.out.println(countryModel.getCountryName());
		}catch(Exception e){
			e.printStackTrace();
		}
		return countryModel;
	}

	public void deleteCountry(CountryModel countryModel) {
		// TODO Auto-generated method stub
		System.out.println("delete country method called");
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(countryModel);
	}

	public void updateCountry(CountryModel countryModel) {
		// update country
		System.out.println("update country method called");
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(countryModel);
	}

}

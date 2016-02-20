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

@Transactional
@Repository
public class CategoryDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void addCategory(CategoryModel categoryModel) {
		//Add Category
				try{
					System.out.println("on AddCategory ;");
					Session session=sessionFactory.getCurrentSession();
					session.save(categoryModel);
					session.flush();
					System.out.println("One record inserted...!..Done.....");
					
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
	
}

	public List searchCategory() {
		// Search Category
		List<CategoryModel> listCategory =new ArrayList<CategoryModel>();
		try{
			System.out.println("on AddCategory ;");
			Session session=sessionFactory.getCurrentSession();
			Query q=session.createQuery("from Category");
			listCategory=q.list();
			session.flush();
			System.out.println(+listCategory.size()+ " record Found...Done.....");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return listCategory;
	}
	
	public CategoryModel searchCategoryById(int categoryID) {
		CategoryModel categoryModel=null;
		try{
			System.out.println("searchcategorybyid called");
			Session session=sessionFactory.getCurrentSession();
			categoryModel=(CategoryModel)session.load(CategoryModel.class, categoryID);
			System.out.println(categoryModel.getCategoryName());
		}catch(Exception e){
			e.printStackTrace();
		}
		return categoryModel;
	}

	public void updateCategory(CategoryModel categoryModel) {
		try {
			System.out.println("deletecategory method called");
			Session session = this.sessionFactory.getCurrentSession();
			session.saveOrUpdate(categoryModel);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void deleteCategory(CategoryModel categoryModel) {
		try{
			System.out.println("delete Category method called");
			Session session = this.sessionFactory.getCurrentSession();
			session.delete(categoryModel);
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
}


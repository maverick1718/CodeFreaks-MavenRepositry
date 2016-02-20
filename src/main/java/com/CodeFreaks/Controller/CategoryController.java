package com.CodeFreaks.Controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.CodeFreaks.Dao.CategoryDao;
import com.CodeFreaks.Dao.MenuDao;
import com.CodeFreaks.Model.CategoryModel;


@Controller
public class CategoryController {
	
	@Autowired
	CategoryDao categoryDao;
	int count;
	CategoryModel categoryModel=new CategoryModel();
			
	@RequestMapping(value="addCategory.htm",method=RequestMethod.GET)
	public ModelAndView addCategory(@ModelAttribute("addCategoryMA") CategoryModel categoryModel){
		System.out.println("categoryController ...addcategory");
		count++;
		System.out.println(categoryModel.getCategoryID());
		Date categoryDate=new Date();
		categoryModel.setCategoryDate(categoryDate);
		if(categoryModel.getCategoryID()==0){
			ModelAndView mv=new ModelAndView("/Admin/addCategory");
			System.out.println("if method called");
		categoryDao.addCategory(categoryModel);
		mv.addObject("addCategoryMA",new CategoryModel());
		return mv;
		}
		else{
			ModelAndView mv=new ModelAndView("/Admin/searchCategory");
			System.out.println("else metho called");
			categoryDao.updateCategory(categoryModel);
			List<CategoryModel> listCategory =categoryDao.searchCategory();
			System.out.println(listCategory.size());
			mv.addObject("listCategory", listCategory);
			return mv;
		}
	}
	
	@RequestMapping(value="editCategory.html",method=RequestMethod.GET)
	public ModelAndView editCategory(@RequestParam int categoryID){
		System.out.println("in edit controller"+categoryID);
		ModelAndView mv=new ModelAndView("/Admin/addCategory");
		CategoryModel categoryModel=categoryDao.searchCategoryById(categoryID);
		System.out.println(categoryModel.getCategoryName());
		mv.addObject("addCategoryMA",categoryModel);
		return mv;
	}
	
	@RequestMapping(value="deleteCategory.html",method=RequestMethod.GET)
	public ModelAndView deleteCategory(@RequestParam int categoryID){
		System.out.println("in delete controller");
		ModelAndView mv=new ModelAndView("/Admin/searchCategory");
		CategoryModel categoryModel=categoryDao.searchCategoryById(categoryID);
		categoryDao.deleteCategory(categoryModel);
		List<CategoryModel> listCategory =categoryDao.searchCategory();
		System.out.println(listCategory.size());
		mv.addObject("listCategory", listCategory);
		return mv;
	}

	
	

}

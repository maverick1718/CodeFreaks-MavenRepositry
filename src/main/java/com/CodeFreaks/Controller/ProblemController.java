package com.CodeFreaks.Controller;

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
import com.CodeFreaks.Dao.ProblemDao;
import com.CodeFreaks.Model.CategoryModel;
import com.CodeFreaks.Model.ProblemModel;

@Controller
public class ProblemController {

	@Autowired
	ProblemDao problemDao;
	
	@Autowired
	CategoryDao categoryDao ;
	int categoryID=0;
	ProblemModel problemModel=new ProblemModel();
	//Add Problem
	@RequestMapping(value="addProblem.htm",method=RequestMethod.GET)
	public ModelAndView addProblem(@ModelAttribute("addProblemMA") ProblemModel problemModel,@RequestParam int problemID){
		CategoryModel categoryModel=new CategoryModel();
		System.out.println("on ProblemController");
		
		Date problemDate=new Date();
		problemModel.setProblemDate(problemDate);
		
		if(problemModel.getProblemID()==0){
	
			categoryModel.setCategoryID(problemModel.getCategoryModel().getCategoryID());
			List<CategoryModel> listCategory =categoryDao.searchCategory();
			problemModel.setCategoryModel(categoryModel);
			problemDao.addProblem(problemModel);
			
			System.out.println("--------------if part add problem done-------------------------------");
			ModelAndView modelAndView=new ModelAndView("/Admin/addProblem");
			modelAndView.addObject("addProblemMA",new ProblemModel());
			modelAndView.addObject("listCategory",listCategory);
			
		return modelAndView;
		}
		else 
		{
			System.out.println("elase part add problem(update)");
			problemDao.updateProblem(problemModel);
			List<ProblemModel> listProblem =problemDao.searchProblem();
			ModelAndView modelAndView1=new ModelAndView("/Admin/searchProblem");
			modelAndView1.addObject("listProblem",listProblem);
			return modelAndView1;
		}
		
	}
	//Edit Problem
	@RequestMapping(value="editProblem.htm",method=RequestMethod.GET)
	public ModelAndView editProblem(@RequestParam int problemID)
	{
		System.out.println(problemID);
		
		ProblemModel problemModel=problemDao.getProblemByID(problemID);
		List<CategoryModel> listCategory=categoryDao.searchCategory();
		
		ModelAndView modelAndView=new ModelAndView("/Admin/addProblem");
		modelAndView.addObject("addProblemMA", problemModel);
		modelAndView.addObject("listCategory",listCategory);
		
		System.out.println("--------------edit controller done------------------------");
		
		return modelAndView;
	}
	//Delete Problem
	@RequestMapping(value="deleteProblem.htm",method=RequestMethod.GET)
	public ModelAndView deleteProblem(@RequestParam int problemID)
	{
		System.out.println(problemID);
		System.out.println("waiting for delete");
		
		problemModel.setProblemID(problemID);
		problemDao.deleteProblem(problemModel);
		List<ProblemModel> listProblem =problemDao.searchProblem();
		
		ModelAndView modelAndView=new ModelAndView("/Admin/searchProblem");
		modelAndView.addObject("listProblem", listProblem);
		
		System.out.println("---------------delete controller done--------------");
		
		return modelAndView;	
	}
	
	//View Problem
	@RequestMapping(value="viewProblem.htm")
	public ModelAndView viewProblem(@RequestParam int problemID)
	{
		System.out.println(problemID);
		problemModel.setProblemID(problemID);
		ProblemModel problemModel=problemDao.getProblemByID(problemID);
		
		List<CategoryModel> listCategory=categoryDao.searchCategory();
		
		ModelAndView modelAndView=new ModelAndView("/Admin/viewProblem");
		modelAndView.addObject("addProblemMA", problemModel);
		   	modelAndView.addObject("listProblem",problemModel);
		return modelAndView;
	}
}

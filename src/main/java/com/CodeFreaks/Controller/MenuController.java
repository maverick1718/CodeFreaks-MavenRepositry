package com.CodeFreaks.Controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.CodeFreaks.Dao.CategoryDao;
import com.CodeFreaks.Dao.CountryDao;
import com.CodeFreaks.Dao.MenuDao;
import com.CodeFreaks.Dao.ProblemDao;
import com.CodeFreaks.Dao.StreamDao;
import com.CodeFreaks.Model.CategoryModel;
import com.CodeFreaks.Model.CountryModel;
import com.CodeFreaks.Model.ProblemModel;
import com.CodeFreaks.Model.StreamModel;



@Controller
public class MenuController {
	
	@Autowired
	MenuDao menuDao;

	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	ProblemDao problemDao;
	
	@Autowired
	StreamDao streamDao;
	
	@Autowired
	CountryDao countryDao;
	
	@RequestMapping("/")
	public ModelAndView home(){
		System.out.println("home method");
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	
	@RequestMapping(value="index.html",method=RequestMethod.GET)
	public ModelAndView index(){
		ModelAndView mv=new ModelAndView("index");
		return mv;	
	}
	//=================Manage Category==============================
	@RequestMapping(value="addCategory.html",method=RequestMethod.GET)
	public ModelAndView addCategory(){
		ModelAndView mv=new ModelAndView("/Admin/addCategory");
		System.out.println("this is menu controller..");
		mv.addObject("addCategoryMA",new CategoryModel());
		return mv;		
	}
	
		
	@RequestMapping(value="searchCategory.html",method=RequestMethod.GET)
	public ModelAndView searchCategory(@ModelAttribute CategoryModel categoryModel){
		List<CategoryModel> listCategory =categoryDao.searchCategory();
		System.out.println("------------------search category done---------------------------");
		ModelAndView mv=new ModelAndView("/Admin/searchCategory");
		mv.addObject("listCategory",listCategory);
		return mv;		
	}
	
	//===================================================================
	
	//=================Manage Problem==============================
			
	@RequestMapping(value="addProblem.html",method=RequestMethod.GET)
	public ModelAndView addProblem(@ModelAttribute CategoryModel cateagoryModel,@ModelAttribute("addProblemMA") ProblemModel problemModel){
		List<CategoryModel> listCategory =categoryDao.searchCategory();
		ModelAndView mv=new ModelAndView("/Admin/addProblem");
		System.out.println("------------------add problem menu controller---------------------------");
		mv.addObject("listCategory",listCategory);
		return mv;		
	}
	
	@RequestMapping(value="searchProblem.html",method=RequestMethod.GET)
	public ModelAndView searchProblem(){
		List<ProblemModel> listProblem =problemDao.searchProblem();
		System.out.println("------------------search problem done---------------------------");
		ModelAndView mv=new ModelAndView("/Admin/searchProblem");
		mv.addObject("listProblem",listProblem);
		return mv;		
	}
	
	//=====================================================================
	
	//=================Manage Staff request==============================
	@RequestMapping(value="manageStaffRequestPending.html",method=RequestMethod.GET)
	public ModelAndView managestaff_request(){
		ModelAndView mv=new ModelAndView("/Admin/manageStaffRequestPending");
		return mv;		
	}
	
	@RequestMapping(value="manageStaffApproved.html",method=RequestMethod.GET)
	public ModelAndView managestaff_request_approve(){
		ModelAndView mv=new ModelAndView("/Admin/manageStaffApproved");
		return mv;		
	}
	
	@RequestMapping(value="manageStaffDisapproved.html",method=RequestMethod.GET)
	public ModelAndView managestaff_request_disapprove(){
		ModelAndView mv=new ModelAndView("/Admin/manageStaffDisapproved");
		return mv;		
	}
	
	//=====================================================================
	
	//=================Manage Staff Problems==============================
	@RequestMapping(value="manageStaffproblemRequestPending.html",method=RequestMethod.GET)
	public ModelAndView managestaffproblem_request_pending(){
		ModelAndView mv=new ModelAndView("/Admin/manageStaffProblemRequestPending");
		return mv;		
	}
	
	@RequestMapping(value="manageStaffProblemApproved.html",method=RequestMethod.GET)
	public ModelAndView managestaffproblem_request_approve(){
		ModelAndView mv=new ModelAndView("/Admin/manageStaffProblemApproved");
		return mv;		
	}
	
	@RequestMapping(value="manageStaffProblemDisapproved.html",method=RequestMethod.GET)
	public ModelAndView managestaffproblem_request_disapprove(){
		ModelAndView mv=new ModelAndView("/Admin/manageStaffProblemDisapproved");
		return mv;		
	}
	//====================================================================
	
	//========================Manage Comments============================
	@RequestMapping(value="allComments.html",method=RequestMethod.GET)
	public ModelAndView manageAllComments(){
		ModelAndView mv=new ModelAndView("/Admin/allComments");
		return mv;		
	}
	
	@RequestMapping(value="deletedComments.html",method=RequestMethod.GET)
	public ModelAndView manageDeletedComments(){
		ModelAndView mv=new ModelAndView("/Admin/deletedComments");
		return mv;		
	}
	//====================================================================
	
	//=====================Manage Feedback================================
	@RequestMapping(value="manageFeedback.html",method=RequestMethod.GET)
	public ModelAndView manageFeedback(){
		ModelAndView mv=new ModelAndView("/Admin/manageFeedback");
		return mv;		
	}
	//=====================================================================
	
	//=================Manage Complains======================================
	@RequestMapping(value="manageComplains.html",method=RequestMethod.GET)
	public ModelAndView manageComplain(){
		ModelAndView mv=new ModelAndView("/Admin/manageComplains");
		return mv;		
	}
	//=====================================================================
	//==========================Manage Country=============================
	@RequestMapping(value="addCountry.html",method=RequestMethod.GET)
	public ModelAndView addCountry(){
		ModelAndView mv=new ModelAndView("/Admin/addCountry");
		mv.addObject("addcountryMA", new CountryModel());
		return mv;		
	}
	
	@RequestMapping(value="searchCountry.html",method=RequestMethod.GET)
	public ModelAndView searchCountry(@ModelAttribute CountryModel countryModel){
		System.out.println("on StreamController..viewCountry()");
		List<CountryModel> listcountry=countryDao.viewCountry();
		ModelAndView modelAndView=new  ModelAndView("/Admin/searchCountry");
		//modelAndView.addObject("addCountryMA",new CountryModel());
		modelAndView.addObject("listCountry", listcountry);
		return modelAndView;		
	}
	//=====================================================================
	//=========================Manage Stream========================
		@RequestMapping(value="addStream.html",method=RequestMethod.GET)
		public ModelAndView addStream(){
			ModelAndView mv=new ModelAndView("/Admin/addStream");
			mv.addObject("addstreamMA",new StreamModel());
			return mv;
		}
		
		@RequestMapping(value="viewStream.html",method=RequestMethod.GET)
		public ModelAndView viewStream(@ModelAttribute StreamModel streamModel)
		{
			System.out.println("on StreamController..viewstream()");
			List<StreamModel> liststream=streamDao.viewStream();
			ModelAndView modelAndView=new  ModelAndView("/Admin/viewStream");
			modelAndView.addObject("viewstreamMA",new StreamModel());
			modelAndView.addObject("listStream", liststream);
			return modelAndView;
		} 
		//===============================================================
		//======================Manage Degree============================
		@RequestMapping(value="addDegree.html",method=RequestMethod.POST)
		public ModelAndView addDegree(){
			ModelAndView mv=new ModelAndView("/Admin/addDegree");
			return mv;
		}
		
		@RequestMapping(value="viewDegree.html",method=RequestMethod.GET)
		public ModelAndView viewDegree(){
			ModelAndView mv=new ModelAndView("/Admin/viewDegree");
			return mv;
		}
		
}


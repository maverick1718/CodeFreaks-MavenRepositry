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

import com.CodeFreaks.Dao.CountryDao;
import com.CodeFreaks.Model.CategoryModel;
import com.CodeFreaks.Model.CountryModel;

@Controller
public class CountryController {

	@Autowired
	CountryDao countryDao;

	CountryModel countryModel = new CountryModel();

	@RequestMapping(value = "addCountry.htm", method = RequestMethod.GET)
	public ModelAndView addCountry(@ModelAttribute("addcountryMA") CountryModel countryModel) {
		System.out.println("add Country on CountryController");
		Date d=new Date();
		countryModel.setCountryDate(d);
		if(countryModel.getCountryID()==0)
		{
			System.out.println("if part");
		countryDao.addCountry(countryModel);
		ModelAndView modelAndView = new ModelAndView("/Admin/addCountry");
		modelAndView.addObject("addcountryMA", new CountryModel());
		return modelAndView;
		}
		else
		{
			ModelAndView mv=new ModelAndView("/Admin/searchCountry");
			System.out.println("else metho called");
			countryDao.updateCountry(countryModel);
			List<CountryModel> listCountry =countryDao.viewCountry();
			System.out.println(listCountry.size());
			mv.addObject("listCountry", listCountry);
			return mv;	
		}
	}
	
	@RequestMapping(value="editCountry.htm",method=RequestMethod.GET)
	public ModelAndView editCountry(@RequestParam int countryID){
		System.out.println("in edit country controller"+countryID);
		ModelAndView modelAndView=new ModelAndView("/Admin/addCountry");
		CountryModel countryModel=countryDao.searchCountryById(countryID);
		System.out.println(countryModel.getCountryName());
		modelAndView.addObject("addcountryMA",countryModel);
		return modelAndView;
	}
	
	@RequestMapping(value="deleteCountry.htm",method=RequestMethod.GET)
	public ModelAndView deleteCountry(@RequestParam int countryID){
		System.out.println("in delete country");
		ModelAndView mv=new ModelAndView("/Admin/searchCountry");
		countryModel.setCountryID(countryID);
		countryDao.deleteCountry(countryModel);
		List<CountryModel> listCountry =countryDao.viewCountry();
		System.out.println(listCountry.size());
		mv.addObject("listCountry", listCountry);
		return mv;
	}

}

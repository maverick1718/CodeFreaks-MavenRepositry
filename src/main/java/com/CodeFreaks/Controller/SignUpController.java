package com.CodeFreaks.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.CodeFreaks.Dao.SignUpDao;
import com.CodeFreaks.Model.SignUpModel;

@Controller
public class SignUpController {

	@Autowired
	SignUpDao signUpDao;
	
	SignUpModel signUpModel=new SignUpModel();
	/*
	@RequestMapping("/")
	public ModelAndView home(){
		ModelAndView mv=new ModelAndView("/User/signup");
		mv.addObject("signupMA", new SignUpModel());
		return mv;
	}*/
	
	@RequestMapping(value="User/SignUp.uk",method=RequestMethod.POST)
	public ModelAndView signup(@ModelAttribute SignUpModel signUpModel)
	{
		signUpDao.signup(signUpModel);
		ModelAndView mv=new ModelAndView("/User/success");
		return mv;
	}
	
}

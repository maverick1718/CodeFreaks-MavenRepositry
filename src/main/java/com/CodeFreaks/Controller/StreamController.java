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

import com.CodeFreaks.Dao.StreamDao;
import com.CodeFreaks.Model.CategoryModel;
import com.CodeFreaks.Model.StreamModel;

@Controller
public class StreamController {
	
	@Autowired
	StreamDao streamDao;
	
	StreamModel streamModel=new StreamModel();
	
	@RequestMapping(value="addStream.htm",method=RequestMethod.POST)
	public ModelAndView addStream(@ModelAttribute StreamModel streamModel)
	{
		System.out.println("on StreamController..addstream()");
		
		Date d=new Date();
		streamModel.setStreamDate(d);
		if(streamModel.getStreamID()==0)
		{
		streamDao.addStream(streamModel);
		
		ModelAndView modelAndView=new  ModelAndView("/Admin/addStream");
		modelAndView.addObject("addstreamMA",new StreamModel());
		System.out.println("if part");
		return modelAndView;
		}
		else
		{
			ModelAndView mv=new ModelAndView("/Admin/viewStream");
			System.out.println("else metho called");
			streamDao.editStream(streamModel);
			List<StreamModel> listStream =streamDao.viewStream();
			System.out.println(listStream.size());
			mv.addObject("listStream", listStream);
			return mv;
		}
	} 

	@RequestMapping(value="editStream.htm",method=RequestMethod.GET)
	public ModelAndView editStream(@RequestParam int streamID)
	{
		System.out.println("on StreamController..editstream()");
		
		StreamModel streamModel=streamDao.searchStreamById(streamID);
		System.out.println(streamModel.getStreamName());
		
		ModelAndView modelAndView=new  ModelAndView("/Admin/addStream");
		modelAndView.addObject("addstreamMA",streamModel);
		return modelAndView;
	}
	

	@RequestMapping(value="deleteStream.html",method=RequestMethod.GET)
	public ModelAndView deleteCategory(@RequestParam int streamID){
		System.out.println("in delete controller");
		ModelAndView mv=new ModelAndView("/Admin/viewStream");
		StreamModel streamModel=streamDao.searchStreamById(streamID);
		streamDao.deleteStream(streamModel);
		List<StreamModel> listStream =streamDao.viewStream();
		System.out.println(listStream.size());
		mv.addObject("listStream", listStream);
		return mv;
	}
}

package kr.or.phonejob.IndexController;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.phonejob.Dto.RegisterGoogicDto;
import kr.or.phonejob.Service.GoogicService;

@Controller
public class IndexController {

	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	private GoogicService gservice;
	
	
	
	@RequestMapping(value="index.do", method=RequestMethod.GET)
	public String moveIndex(Model mv){
		logger.info(">>>>>>Index Page 접근");
		
		//인재 정보를 불러 오기 위한 Dto 객체 생성
		List<RegisterGoogicDto> result = new ArrayList<RegisterGoogicDto>();
		try{
			result =  gservice.selectGoogic();
		}catch(Exception e){
			logger.error(e.getMessage());	
		}finally{
			mv.addAttribute("result", result);
			return "home.index";
		}
	}
	
	@RequestMapping(value="error_404.do")
	public String move404(){
		return "errors.error_404";
	}
	
	@RequestMapping(value="error_500.do")
	public String move500(){
		return "errors.error_500";
	}
	
	
	@RequestMapping(value="lock.do")
	public String movelock(){
		return "errors.lock";
	}
}

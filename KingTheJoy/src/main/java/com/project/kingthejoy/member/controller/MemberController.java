package com.project.kingthejoy.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.kingthejoy.member.biz.MemberBiz;
import com.project.kingthejoy.member.dto.MemberDto;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberBiz biz;
	
	@RequestMapping(value = "/home.do")
	public String homepageForm() { 
		 
		logger.info("home.jsp on");
		
		return "common/home";
	}
	
	@RequestMapping(value="/main.do")
	public String mainPageForm() {
		return "main/main"; 
	}
	
	@RequestMapping(value = "/selectResistForm.do")
	public String selectResistForm() { 
		 
		logger.info("Resist Form Open");
		
		return "member/selectResist";
	}
	
	@RequestMapping(value= "/resistForm.do")
	public String resistForm(int member_role, Model model) {
		
		logger.info("Resist Form Open : " + member_role + "번");
		
		model.addAttribute("member_role", member_role);
		
		return "member/resist"; 
	}
	 
	@RequestMapping(value="/memberJoin.do", method=RequestMethod.POST)
	public String memberJoin(MemberDto dto, Model model) {
		logger.info("Member Join");
		
		int res = biz.memberJoin(dto);
		
		if(res>0) { 
			logger.info("회원가입 완료");
			model.addAttribute("msg","킨더조이에 오신 것을 환영합니다.");
			model.addAttribute("url","home.do");
			return "common/alert";
		}else {
			model.addAttribute("msg","회원가입이 실패하였습니다. 다시 시도해주세요.");
			model.addAttribute("url","selectResistForm.do");
			return "commom/alert";
		}
	}
	
	@RequestMapping("/loginCheck.do")
	public String loginCheck(MemberDto dto, HttpSession session, Model model) {
		
		boolean result = biz.loginCheck(dto, session);
		
		if(result == true) {
			model.addAttribute("msg","킨더조이 로그인 성공");
			model.addAttribute("url","main.do");
			return "common/alert";
		}else {
			model.addAttribute("msg","킨더조이 로그인 실패");
			model.addAttribute("url","home.do");
			return "common/alert"; 
		}
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session, Model model) {
		
		biz.logout(session);
		model.addAttribute("msg","안녕히가세요");
		model.addAttribute("url","home.do");
		return "common/alert";
	
	}

}
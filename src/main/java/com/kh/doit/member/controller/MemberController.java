package com.kh.doit.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.doit.member.model.service.MemberService;
import com.kh.doit.member.model.vo.Member;
import com.kh.doit.util.UserSha256;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	// 암호화 처리
//	@Autowired
//	private BCryptPasswordEncoder bcryptPasswordEncoder;

	
	/**
	 * 로그인 화면으로 이동 Kwon
	 * @return
	 */
	@RequestMapping("moveLogin.go")
	public String moveLogin() {
		return "member/login";
	}
	
	/**
	 * 회원가입 화면으로 이동 Kwon
	 * @return
	 */
	@RequestMapping("moveJoin.go")
	public String moveJoin() {
		return "member/join";
	}
	
	/**
	 * 회원가입 Kwon
	 * @param m
	 * @param session
	 * @return
	 */
	@RequestMapping(value="join.me", method={RequestMethod.GET, RequestMethod.POST})
	public String memberJoin(@ModelAttribute Member m, HttpSession session) {
		
		System.out.println("Servlet 기존 암호확인 : " + m.getUserPwd());
		
		// 암호화 시작
		String encryptPwd = UserSha256.encrypt(m.getUserPwd());
		System.out.println(encryptPwd);
		m.setUserPwd(encryptPwd);
		
		return "redirect:main.go";
	}
	
	
	
	/**
	 * 로그인 Kwon
	 * @param m
	 * @param session
	 * @return
	 */
	@RequestMapping(value="login.me", method={RequestMethod.GET, RequestMethod.POST})
	public String memberLogin(@ModelAttribute Member m, HttpSession session) {
		
		System.out.println("Servlet 기존 암호확인 : " + m.getUserPwd());
		
		// 암호화 시작
		String encryptPwd = UserSha256.encrypt(m.getUserPwd());
		System.out.println("Servlet 암호화 된 암호 : " + encryptPwd);
		m.setUserPwd(encryptPwd);
		
		// 비즈니스 로직으로 이동
		Member loginUser = mService.memberLogin(m);
		System.out.println("Servlet 로그인 유저 : " + loginUser);
		
		session.setAttribute("loginUser", loginUser);

		return "redirect:main.go";
	}
	
	// 복호화 암호 처리
//	@RequestMapping(value="login.do", method=RequestMethod.POST)
//	public String memberLogin(Member m, Model model) {
//		
//		Member loginUser = mService.loginMember(m);
//
//		if (loginUser != null && bcryptPasswordEncoder.matches(m.getPwd(), loginUser.getPwd())) {
//			model.addAttribute("loginUser", loginUser);
//			return "redirect:index.jsp";
//		} else if(loginUser != null && !(bcryptPasswordEncoder.matches(m.getPwd(), loginUser.getPwd()))) {
//			model.addAttribute("msg","비밀번호를 틀렸습니다.");
//			return "common/errorPage";
//		} else {
//			model.addAttribute("msg","로그인 실패!!");
//			return "common/errorPage";
//		}
//	}

	
	/**
	 * 로그아웃 Kwon
	 * @param session
	 * @return
	 */
	@RequestMapping("logout.do")
	public String memberLogout(HttpSession session) {
		session.invalidate();
		
		return "redirect:main.go";
	}

	
}

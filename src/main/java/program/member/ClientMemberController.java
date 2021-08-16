package program.member;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import program.member.mapper.MemberMapper;
import program.common.DataMap;
import program.common.util.HttpUtil;


/**************************************************
* @FileName : ClientMemberController.java
* @Description: 사용자 맴버 컨트롤러
* @Author : Hyung-Seon. Yoon
* @Version : 2021. 7. 5.
* @Copyright : ⓒADUP. All Right Reserved
**************************************************/
@Controller
@RequestMapping(value = {"member"})
public class ClientMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClientMemberController.class);
	
	@Autowired
	private MemberMapper MemberMapper;
	
//	@Autowired
//	private TextBoardService textBoardService;
	
	/**************************************************
	* @MethodName : join
	* @Description: 회원가입 페이지
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 5.
	**************************************************/
	@RequestMapping(value = {"/join"})
	public String join(Model model) {
		return "/member/join";
	}
	
	/**************************************************
	* @MethodName : joinCompleted
	* @Description: 회원가입 완료 페이지
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 6.
	**************************************************/
	@RequestMapping(value = {"/joinCompleted"})
	public String joinCompleted(Model model) {
		return "/member/joinCompleted";
	}
	
	/**************************************************
	* @MethodName : login
	* @Description: 로그인 페이지
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 6.
	**************************************************/
	@RequestMapping(value = {"/login"})
	public String login(Model model) {
		return "/member/login";
	}
	
	/**************************************************
	* @MethodName : findId
	* @Description: 아이디 찾기
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 6.
	**************************************************/
	@RequestMapping(value = {"/findId"})
	public String findId(Model model) {
		return "/member/findId";
	}
	
	/**************************************************
	* @MethodName : findIdMention
	* @Description: 아이디 찾기 멘트
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 6.
	**************************************************/
	@RequestMapping(value = {"/findIdMention"})
	public String findIdMention(Model model) {
		return "/member/findIdMention";
	}
	
	/**************************************************
	* @MethodName : findPassword
	* @Description: 비밀번호 찾기
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 6.
	**************************************************/
	@RequestMapping(value = {"/findPassword"})
	public String findPassword(Model model) {
		return "/member/findPassword";
	}
	
	/**************************************************
	* @MethodName : findPasswordMention
	* @Description: 비밀번호 찾기 멘트
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 6.
	**************************************************/
	@RequestMapping(value = {"/findPasswordMention"})
	public String findPasswordMention(Model model) {
		return "/member/findPasswordMention";
	}
	
	/**************************************************
	* @MethodName : withdrawal
	* @Description: 회원탈퇴
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 6.
	**************************************************/
	@RequestMapping(value = {"/withdrawal"})
	public String withdrawal(Model model) {
		return "/member/withdrawal";
	}
	
	/**************************************************
	* @MethodName : withdrawalCompleted
	* @Description: 회원탈퇴 완료 멘트
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 6.
	**************************************************/
	@RequestMapping(value = {"/withdrawalCompleted"})
	public String withdrawalCompleted(Model model) {
		return "/member/withdrawalCompleted";
	}
	
	/**************************************************
	* @MethodName : memberinsert
	* @Description: 회원 추가 컨트롤러
	* @param request
	* @param model
	* @return boolean
	* @Author : Na-Young. Woo
	* @Version : 2021. 8. 14.
	**************************************************/
	@ResponseBody
	@RequestMapping(value = {"/memberinsert"}, method = {RequestMethod.GET, RequestMethod.POST })
	public boolean memberinsert(HttpServletRequest request, Model model) {
		logger.debug("MemberController : memberinsert - start");

		DataMap paramMap = HttpUtil.getRequestDataMap(request);

		int result = 0;
		
		try {
			result = MemberMapper.memberinsert(paramMap);
		} catch (Exception e) {
			logger.debug("회원 추가 오류", e);
		}
		
		logger.debug("MemberController : memberinsert - end");
		return result > 0 ? true : false;
	}
}
	
	
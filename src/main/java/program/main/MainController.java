package program.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**************************************************
* @FileName : MainController.java
* @Description: 메인 컨트롤러
* @Author : Hyung-Seon. Yoon
* @Version : 2021. 7. 5.
* @Copyright : ⓒADUP. All Right Reserved
**************************************************/
@Controller
@RequestMapping(value = {"/*"})
public class MainController {
	
//	@Autowired
//	private TextBoardService textBoardService;


	/**************************************************
	* @MethodName : index
	* @Description: 인덱스 페이지
	* @param model
	* @return String
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 5.
	**************************************************/
	@RequestMapping(value = {"index","/*"})
	public String index(Model model) {
//		model.addAttribute("greeting", "Hello!");
		return "/index";
	}
	
	/**************************************************
	* @MethodName : sitemap
	* @Description: 사이트맵
	* @param request
	* @param model
	* @return String
	* @throws Exception 
	* @Author : Hyung-Seon. Yoon
	* @Version : 2021. 7. 5.
	**************************************************/
	@RequestMapping(value="/sitemap", method={RequestMethod.GET, RequestMethod.POST})
    public String sitemap(HttpServletRequest request, Model model) throws Exception {		
		return "/sitemap";
	}

	@RequestMapping(value = {"/about"})
	public String about(Model model) {
		return "/bootstrap/about";
	}
	
	@RequestMapping(value = {"/contact"})
	public String contact(Model model) {
		return "/bootstrap/contact";
	}
	
	@RequestMapping(value = {"/errorPage"})
	public String error(Model model) {
		return "/bootstrap/error";
	}
	
	@RequestMapping(value = {"/mypage"})
	public String mypage(Model model) {
		return "/bootstrap/mypage";
	}
	
	@RequestMapping(value = {"/menu"})
	public String menu(Model model) {
		return "/bootstrap/menu";
	}
	
	@RequestMapping(value = {"/landing-single"})
	public String landing(Model model) {
		return "/bootstrap/landing-single";
	}
	
	@RequestMapping(value = {"/white_index"})
	public String white_index(Model model) {
		return "/bootstrap/white_index";
	}
}
	
	
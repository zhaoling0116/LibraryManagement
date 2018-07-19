package com.zhaoling.manage.bbs.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zhaoling.manage.bbs.service.IBbsService;
import com.zhaoling.manage.entity.Student;
import com.zhaoling.manage.entity.TbBbs;

//注册当前类为控制器
@Controller
@RequestMapping(value="/bbs")
public class BbsController {
	/**
	 * 模型层@Autowired会去找spring中同类型的组件,于是找到@Service
	 */
	@Autowired
	private IBbsService service;
	/**
	 * 查询所有数据,然后把数据传给页面使用,一共有三种方式
	 * @return
	 */
	//第一种request.setAttribute("list",list),调request作用域往页面传值
//	@RequestMapping(value="/query")
//	public String query(HttpServletRequest request) {
//		List<TbBbs> list = service.queryAll();
//		request.setAttribute("list", list);
//		System.out.println("query好使");
//		return "";
//	}
//	//第二种直接在方法里面写一个	ModelMap类
	@RequestMapping(value="/query")
	public String query(ModelMap map) {
		List<TbBbs> list = service.queryAll();
		map.put("list", list);//等同于request作用域
		System.out.println("query好使");
		return "jsp/bbs/bbs_list";
	}
	//第三种用ModelAndView对象传值,不止能传值还能内部转
//	@RequestMapping(value="/query")
//	public ModelAndView query(ModelAndView modelandview) {
//		List<TbBbs> list = service.queryAll();
//		//存值
//		modelandview.addObject("list", list);
//		//内部转
//		modelandview.setViewName("");
//		return modelandview;
//	}
	/**
	 * 转到添加页面
	 * @return
	 */
	@RequestMapping(value="/addpage")
	public String addpage() {
		System.out.println("addpage好使");
		return "jsp/bbs/bbs_add";
	}
	/**
	 * 添加保存
	 */
	
	/**
	 * 传统接值方案
	 * @param request
	 * @return
	 */
//	@RequestMapping(value="/addsave")
//	public String save(HttpServletRequest request){   
//	  String content = request.getParameter("content");
//	  String intime = request.getParameter("intime");
//	  System.out.println(content);
//	  System.out.println(intime);
//      return "redirect:query.action";   
//  } 
	/**
	 * 注解式接值
	 * @param content
	 * @param intime
	 * @return
	 */
//	@RequestMapping(value="/addsave")
//	public String save(@RequestParam(value="content",defaultValue="1") String content,
//					   @RequestParam(value="intime",defaultValue="2018-07-17")String intime
//			){   
//	  System.out.println(content);
//	  System.out.println(intime);
//      return "redirect:query.action";   
//  }
	/**封装成对象接值
	 * @param bbs
	 * @return
	 */
	@RequestMapping(value="/addsave")
	public String save(TbBbs bbs){    
        service.save(bbs);   
      return "redirect:/bbs/query.action"; ///bbs/可以不写  
  }
	/**
	 * 修改
	 */
	@RequestMapping(value="/editpage")
	public String editpage(String id,ModelMap modelMap){   
		TbBbs bbs = service.queryOne(id);
		modelMap.put("bbs", bbs);
      return "jsp/bbs/bbs_edit"; 
  }
	/**
	 * 修改保存
	 */
	@RequestMapping(value="/editsave")
	public String editsave(TbBbs bbs) {
		//调用模型层执行修改方法
		service.update(bbs);
		return "redirect:/bbs/query.action";
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public String delete(String[] ids){
		service.delete(ids);
      return "redirect:/bbs/query.action"; 
  }
}

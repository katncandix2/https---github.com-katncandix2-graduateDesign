package com.gaussic.controller;

import com.gaussic.entites.Message;
import com.gaussic.entites.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.*;


/**
 * Created by ACER on 2016/12/24.
 */
@SessionAttributes(value = {"user"})
@Controller
public class MainController {


    public  static  final  String SUCCESS = "hello";
   @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){

        return  "index";

    }

    @RequestMapping(value = "/hello1" ,method = RequestMethod.GET)
    public void hello(){

    }

    @RequestMapping(value = "/PathVarialable/{id1}")
    public String index1(@PathVariable(value = "id1") Integer id1){
        System.out.print(id1);
        return  "hello";

    }

    @RequestMapping(value = "/CookieValue")
    public String CookieValue(@CookieValue(value = "JSESSIONID") String cookie){

        System.out.print(cookie);
        return  SUCCESS;
    }

    /***
     * 可以通过pojo传递诸如user复合型参数，且支持友元
     * @param user
     * @return
     */
    @RequestMapping(value = "/testPojo" ,method = RequestMethod.POST)
    public  String testPojo(User user){

        System.out.print(user.toString());
        return  SUCCESS;
    }

    @RequestMapping(value = "/testServlet")
    public  String  testServlet(HttpServletRequest request)  {
//        out.write("hello SpringMvc Servlet");
        System.out.print(request);
        return  SUCCESS;
    }


    @RequestMapping(value = "/modelAndView")
    public ModelAndView getModelAndView(){


        String modelName = SUCCESS;
        ModelAndView  modelAndView = new ModelAndView(modelName);

        modelAndView.addObject("time",new Date());

        return  modelAndView;

    }

    @RequestMapping(value = "/testMap")
    public  String testMap(Map<String ,Object> map){

        map.put("names", Arrays.asList("Tom","Jerry","Cat"));
        return  SUCCESS;
    }

    @RequestMapping(value = "/testSessionAttriabuilt")
    public  String testSessionAttriabuilt(Map<String,Object> map){
        User user = new User();
        user.setName("顾睿钦");
        user.setPassword("password");
        map.put("user",user);
        return SUCCESS;
    }
/*
    @ModelAttribute
    public void getUser(@RequestParam (value = "id",required = false) Integer id, Map<String,Object> map){
        System.out.print("modelAttribute");
        if(id!=null){
            User user = new User(1,"tom","123456","254971939@qq.com");
            System.out.print("modelAttribute:" +user);
            map.put("user",user);
        }

    }*/

    @RequestMapping(value = "/testModelAttriabute")
    public String testModelAttribute(User user){

        System.out.print("修改："+user);
        return  SUCCESS;
    }
    @RequestMapping(value = "/shuzimeiti")
    public String go(){

        return "index1";

    }
    @RequestMapping(value = "/BootStrapTemp")
    public  String BootStrap(){


        return "BootStrapTemp";
    }

    @RequestMapping(value = "/testSessionScope")
    public  String testSession(User user,Map<String,Object> map){

        map.put("user",user);
        return "test";
    }
    @RequestMapping(value = "NextTest")
    public String NextSession(){

        return "test1";
    }
    @RequestMapping(value = "/NavBar")
    public String NavBar()
    {
        return "NavBar";
    }


    @RequestMapping(value = "/Playvideos")
    public  ModelAndView playvideos(){

        ModelAndView modelAndView = new ModelAndView("test");
        modelAndView.getView();
        return new ModelAndView("playvideos");
    }
    List <User> list = new ArrayList<User>();
    @RequestMapping(value = "/testJSTL")
    public  String testJstl(Map<String,Object> map){
        User user = new User();
        user.setId(1);
        user.setName("顾睿钦");
        User user1 = new User();
        user1.setName("顾睿钦1");
        user1.setId(2);

        list.add(user);
        list.add(user1);
        map.put("user",list);

        return "jstl";
    }
    @RequestMapping(value = "/add")
    String add(Map<String ,Object> map){

        User user = new User();
        user.setId(3);
        user.setName("顾睿钦3");
        list.add(user);
        map.put("user",list);
        return "jstl";
    }

    @RequestMapping(value = "/MessageBoard")
    String MessageBoard(){


        return "MessageBoard";
    }
    List<Message> list1 = new ArrayList<>();
    @RequestMapping(value = "/SaveMessage")
    String saveMessage(Map<String,Object> map, Message message){
        list1.add(message);
        System.out.print("message："+message.getMessage());
        map.put("messagelist",list1);
        return "MessageBoard";
    }
}

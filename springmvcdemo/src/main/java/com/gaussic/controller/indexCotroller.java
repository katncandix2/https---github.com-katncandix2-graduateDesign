package com.gaussic.controller;

import com.gaussic.entites.Person;
import com.gaussic.entites.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by ACER on 2017/1/16.
 */
@SessionAttributes(value = {"user"})
@Controller
public class indexCotroller {
    @RequestMapping(value = "/login")
    public  ModelAndView jumpToLogin(){
        String url = "login";
        ModelAndView modelAndView = new ModelAndView(url);
        return  modelAndView;
    }


    @RequestMapping(value = "/CheckLogin")
    public ModelAndView CheckUser(Person person, User user,Map<String,Object> map){
        String url  = "LoginSuccess";
        ModelAndView modelAndView = new ModelAndView(url);
        map.put("user",user);
        System.out.print(person.getEmail()+person.getPassword()+user.getEmail()+user.getPassword());
       return  modelAndView;
    }
    @RequestMapping(value = "/Blog")
    public ModelAndView jumptoBlog(User user){

        String url = "Blog";
        return  new ModelAndView(url);

    }
}

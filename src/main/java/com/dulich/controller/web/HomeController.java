package com.dulich.controller.web;

import com.dulich.entity.UserEntity;
import com.dulich.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @Autowired
    private IUserService iUserService;
    @RequestMapping(value = {"/trang-chu"} , method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("web/home");
        return mav;
    }
    @GetMapping("/dang-nhap")
    public String pageLogin()
    {
        return "login";
    }
}

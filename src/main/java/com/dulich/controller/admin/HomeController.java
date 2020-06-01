package com.dulich.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeOfAdmin")
public class HomeController
{
    @GetMapping("/admin-home")
    public ModelAndView homePage()
    {
        ModelAndView mav =  new ModelAndView("admin/home");
        return mav;
    }
}

package com.dulich.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BlogController
{
    @RequestMapping(value = {"/page-blog"} , method = RequestMethod.GET)
    public ModelAndView pageBlog()
    {
        ModelAndView mav = new ModelAndView("web/pageBlog");
        return mav;
    }
    @RequestMapping(value = {"/blog"} , method = RequestMethod.GET)
    public ModelAndView blog()
    {
        ModelAndView mav = new ModelAndView("web/blog");
        return mav;
    }
}

package com.dulich.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductHomeController
{
    @RequestMapping(value = {"/san-pham"} , method = RequestMethod.GET)
    public ModelAndView product()
    {
        ModelAndView mav = new ModelAndView("web/product");
        return mav;
    }
    @RequestMapping(value = {"/page-san-pham"} , method = RequestMethod.GET)
    public ModelAndView pageProduct()
    {
        ModelAndView mav = new ModelAndView("web/pageProduct");
        return mav;
    }
}

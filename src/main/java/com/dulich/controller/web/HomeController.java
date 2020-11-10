package com.dulich.controller.web;

import com.dulich.entity.*;
import com.dulich.repository.BillRepository;
import com.dulich.repository.ItemRepository;
import com.dulich.repository.RoleRepository;
import com.dulich.repository.UserRepository;
import com.dulich.service.ICartService;
import com.dulich.service.IItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


@Controller
@SessionAttributes({"carts"})
public class HomeController {

    @Autowired
    private IItemService iItemService;

    @RequestMapping(value = {"/trang-chu"} , method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("web/home");
        mav.addObject("items",iItemService.findAllByWeb("adflex"));
        return mav;
    }
    @GetMapping("/dang-nhap")
    public String pageLogin()
    {
        return "login";
    }
    @GetMapping("/gio-hang")
    public ModelAndView pageGioHang()
    {
        ModelAndView mav = new ModelAndView("web/cart");
        return mav;
    }
    @GetMapping("/check-out")
    public ModelAndView pageCheckOut()
    {
        ModelAndView mav = new ModelAndView("web/checkout");
        BillEntity bill = new BillEntity();
        mav.addObject("model",bill);
        return mav;
    }
}

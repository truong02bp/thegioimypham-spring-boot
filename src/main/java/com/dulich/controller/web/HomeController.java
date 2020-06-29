package com.dulich.controller.web;

import com.dulich.entity.BillDetailsEntity;
import com.dulich.entity.BillEntity;
import com.dulich.entity.RoleEntity;
import com.dulich.entity.UserEntity;
import com.dulich.repository.BillRepository;
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
    @Autowired
    private BillRepository billRepository;
    @Autowired
    private ICartService iCartService;

    @RequestMapping(value = {"/trang-chu"} , method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("web/home");
        mav.addObject("items",iItemService.findAllByWeb("adflex"));
        BillDetailsEntity billDetailsEntity = new BillDetailsEntity();
        billDetailsEntity.setName("helo");
        billDetailsEntity.setPrice((long) 300);
        BillDetailsEntity billDetailsEntity1 = new BillDetailsEntity();
        billDetailsEntity1.setName("hao");
        billDetailsEntity1.setPrice((long) 300);
        List<BillDetailsEntity> list = new ArrayList<>();
        list.add(billDetailsEntity);
        list.add(billDetailsEntity1);
        BillEntity billEntity = new BillEntity();
        billEntity.setAddress("a");
        billEntity.setFullname("a");
        billEntity.setNote("b");
        billEntity.setPhone("b");
        billEntity.setPrice((long) 3);
        billEntity.setItems(list);
        billEntity = billRepository.save(billEntity);
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
        return mav;
    }
}

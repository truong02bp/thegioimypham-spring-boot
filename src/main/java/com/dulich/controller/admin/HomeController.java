package com.dulich.controller.admin;

import com.dulich.dto.ItemDto;
import com.dulich.dto.UserDto;
import com.dulich.service.IItemService;
import com.dulich.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller(value = "homeOfAdmin")
public class HomeController
{
    @Autowired
    private IItemService iItemService;
    @Autowired
    private IUserService iUserService;
    @GetMapping("/admin-home")
    public ModelAndView homePage()
    {
        ModelAndView mav =  new ModelAndView("admin/home");
        List<UserDto> list = iUserService.findAll();
        mav.addObject("list",list);
        return mav;
    }
    @GetMapping("/admin-list/item")
    public ModelAndView listItem(@RequestParam("page") int page ,
                                 @RequestParam("limit") int limit)
    {
        ModelAndView mav = new ModelAndView("admin/listItem");
        ItemDto model = new ItemDto();
        model.setPage(page);
        model.setLimit(limit);
        model.setTotalPage((int) Math.ceil((double)iItemService.getTotalPage()/limit));
        Pageable pageable = PageRequest.of(page,limit);
        List<ItemDto> list = iItemService.findAll(pageable);
        model.setList(list);
        mav.addObject("model",model);
        return mav;
    }
    @GetMapping("/admin-list/user")
    public ModelAndView listUser()
    {
        ModelAndView mav = new ModelAndView("admin/listUser");
        List<UserDto> list = iUserService.findAll();
        mav.addObject("list",list);
        return mav;
    }
}

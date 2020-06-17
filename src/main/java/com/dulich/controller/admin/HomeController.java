package com.dulich.controller.admin;

import com.dulich.converter.CategoryConverter;
import com.dulich.dto.CategoryDto;
import com.dulich.dto.ItemDto;
import com.dulich.dto.UserDto;
import com.dulich.entity.UserEntity;
import com.dulich.repository.UserRepository;
import com.dulich.service.ICategoryService;
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
    @Autowired
    private ICategoryService iCategoryService;
    @GetMapping("/admin-home")
    public ModelAndView homePage()
    {
        ModelAndView mav =  new ModelAndView("admin/home");
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
        Pageable pageable = PageRequest.of(page-1,limit);
        List<ItemDto> list = iItemService.findAll(pageable);
        model.setList(list);
        mav.addObject("model",model);
        return mav;
    }
    @GetMapping("/admin-item/chinh-sua")
    public ModelAndView updateCreate(@RequestParam(value = "id" , required = false) Long id)
    {
        ModelAndView mav = new ModelAndView("admin/createUpdate");
        ItemDto model = ItemDto.getPrincipal();
        if (id != null)
        {
            model = iItemService.findOne(id);
        }
        mav.addObject("model",model);
        mav.addObject("categories",iCategoryService.findAll());
        return mav;
    }
    @GetMapping("/admin-list/user")
    public ModelAndView listUser(@RequestParam("page") int page,
                                 @RequestParam("limit") int limit)
    {
        ModelAndView mav = new ModelAndView("admin/listUser");
        UserDto model = new UserDto();
        model.setPage(page);
        model.setLimit(limit);
        Pageable pageable = PageRequest.of(page-1,limit);
        List<UserDto> list = iUserService.findAll(pageable);
        model.setList(list);
        model.setTotalPage((int) Math.ceil((double)iUserService.getTotalPage()/limit));
        mav.addObject("model",model);
        return mav;
    }
}

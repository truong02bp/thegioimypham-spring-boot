package com.dulich.controller.web;

import com.dulich.dto.CategoryDto;
import com.dulich.dto.ItemDto;
import com.dulich.service.ICategoryService;
import com.dulich.service.IItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ProductHomeController
{
    @Autowired
    private ICategoryService iCategoryService;
    @Autowired
    private IItemService iItemService;
    @RequestMapping(value = {"/san-pham"} , method = RequestMethod.GET)
    public ModelAndView product(@RequestParam("id") Long id)
    {
        ModelAndView mav = new ModelAndView("web/product");
        ItemDto model = iItemService.findOne(id);
        mav.addObject("item",model);
        return mav;
    }
    @RequestMapping(value = {"/page-san-pham"} , method = RequestMethod.GET)
    public ModelAndView pageProduct(@RequestParam("name") String name ,
                                    @RequestParam("page") int page ,
                                    @RequestParam("limit") int limit ,
                                    @RequestParam(value = "sort" , required = false , defaultValue = "") String sort )
    {
        ModelAndView mav = new ModelAndView("web/pageProduct");
        CategoryDto category = iCategoryService.findOneByCode(name);
        ItemDto model = new ItemDto();
        model.setCategoryName(category.getName());
        model.setCategoryCode(category.getCode());
        model.setPage(page);
        model.setLimit(limit);
        Pageable pageable = PageRequest.of(page-1,limit);
        model.setList(iItemService.findAllByCategoryId(category.getId(),pageable,sort));
        model.setTotalPage((int) Math.ceil((double) iItemService.getTotalPage(category.getId())/limit));
        mav.addObject("model",model);
        mav.addObject("sort",sort);
        return mav;
    }
    @GetMapping("/page-tim-kiem")
    public ModelAndView pageSearch(@RequestParam(value = "itemName" , required = false) String itemName,
                                   @RequestParam("page") int page,
                                   @RequestParam("limit") int limit)
    {
        ModelAndView mav = new ModelAndView("web/pageProduct");
        List<ItemDto> list = iItemService.searchByName("Dakami",limit,(page-1)*limit);
        ItemDto model = new ItemDto();
        model.setCategoryName(list.get(0).getCategoryName());
        model.setCategoryCode(list.get(0).getCategoryCode());
        model.setList(list);
        mav.addObject("model",model);
        return mav;
    }
}

package com.dulich.api;

import com.dulich.dto.ItemDto;
import com.dulich.service.IItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ItemAPI
{
    @Autowired
    private IItemService iItemService;
    @PostMapping("/api-item")
    public ItemDto addItem(@RequestBody ItemDto itemDto)
    {
        System.out.println(itemDto.getId());
        return iItemService.save(itemDto);
    }
    @PutMapping("/api-item")
    public ItemDto updateItem(@RequestBody ItemDto itemDto)
    {
        System.out.println(itemDto.getId());
        return iItemService.save(itemDto);
    }
    @DeleteMapping("/api-item")
    public void deleleItem(@RequestBody Long[] ids)
    {
        System.out.println(ids.length);
//        for (Long id : ids)
//            iItemService.delete(id);
    }
    @GetMapping("/api-item/search")
    public Long getSize(@RequestParam(value="itemName" , required = false) String itemName)
    {
        System.out.println(itemName);
        return (long) iItemService.searchByName(itemName,9,0).size();
    }
}

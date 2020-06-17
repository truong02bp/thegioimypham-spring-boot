package com.dulich.api;

import com.dulich.dto.ItemDto;
import com.dulich.service.IItemService;
import org.springframework.beans.factory.annotation.Autowired;
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
        for (Long id : ids)
            iItemService.delete(id);
    }
}

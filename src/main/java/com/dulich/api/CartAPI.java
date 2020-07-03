package com.dulich.api;

import com.dulich.dto.CartDto;
import com.dulich.entity.BillEntity;
import com.dulich.service.IBillService;
import com.dulich.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RestController
@SessionAttributes({"carts","totalPrice","vat"})
@RequestMapping("/api-cart/")
public class CartAPI
{
    @Autowired
    private ICartService iCartService;
    @Autowired
    private IBillService iBillService;
    Map<Long, CartDto> carts = new HashMap<>();

    @PostMapping("add")
    public Long add(@RequestParam(value = "id" , required = false) Long id , HttpSession http)
    {
        iCartService.update(carts,id);
        http.setAttribute("carts",carts);
        return (long) carts.size();
    }
    @PutMapping("update-quantity")
    public String updateQuantity(@RequestParam(value = "id" , required = false) Long id,
                               @RequestParam(value = "quantity" , required = false) Long quantity,
                               HttpSession http)
    {
        iCartService.updateQuantity(carts,id,quantity);
        http.setAttribute("carts",carts);
        return carts.get(id).getPrice();
    }
    @DeleteMapping("delete")
    public Long delete(@RequestParam(value = "id" , required = false ) Long id,
                       HttpSession http)
    {
        iCartService.delete(carts,id);
        http.setAttribute("carts",carts);
        return (long) carts.size();
    }
    @PostMapping("add-bill")
    public void addBill(@RequestBody BillEntity billEntity)
    {
        iBillService.addBill(billEntity,carts);
    }
}

package com.dulich.service.impl;

import com.dulich.dto.CartDto;
import com.dulich.service.ICartService;
import com.dulich.service.IItemService;
import com.dulich.ultils.PriceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class CartService implements ICartService
{
    @Autowired
    private IItemService iItemService;
    @Override
    public void update(Map<Long, CartDto> carts, Long id)
    {
        if (id != null)
        {
            if (carts.containsKey(id))
            {
                CartDto cartDto = carts.get(id);
                cartDto.setSoLuong(cartDto.getSoLuong()+1);
                long price = PriceUtil.toLong(cartDto.getItemDto().getGiaSau());
                cartDto.setPrice(PriceUtil.toString(cartDto.getSoLuong()*price));
                carts.replace(id,cartDto);
            }
            else
            {
                CartDto cartDto = new CartDto();
                cartDto.setItemDto(iItemService.findOne(id));
                cartDto.setSoLuong((long) 1);
                cartDto.setPrice(cartDto.getItemDto().getGiaSau());
                carts.put(id,cartDto);
            }
        }
    }

    @Override
    public void delete(Map<Long, CartDto> carts, Long id)
    {
        carts.remove(id);
    }

    @Override
    public void updateQuantity(Map<Long, CartDto> carts, Long id, Long quantity)
    {
        CartDto cartDto = carts.get(id);
        cartDto.setSoLuong(quantity);
        cartDto.setPrice(PriceUtil.toString(quantity*PriceUtil.toLong(cartDto.getItemDto().getGiaSau())));
        carts.replace(id,cartDto);
    }
}

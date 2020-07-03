package com.dulich.service.impl;

import com.dulich.dto.CartDto;
import com.dulich.entity.BillDetailsEntity;
import com.dulich.entity.BillEntity;
import com.dulich.repository.BillRepository;
import com.dulich.service.IBillService;
import com.dulich.ultils.PriceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class BillService implements IBillService
{
    @Autowired
    private BillRepository billRepository;
    @Override
    @Transactional
    public void addBill(BillEntity bill, Map<Long, CartDto> carts)
    {
        List<BillDetailsEntity> list = new ArrayList<>();
        for (CartDto cart : carts.values())
        {
            BillDetailsEntity billDetails = new BillDetailsEntity();
            billDetails.setName(cart.getItemDto().getName());
            billDetails.setPrice(PriceUtil.toLong(cart.getPrice()));
            billDetails.setQuantity(cart.getSoLuong());
            list.add(billDetails);
        }
        bill.setItems(list);
        billRepository.save(bill);
    }
}

package com.dulich.converter;

import com.dulich.dto.BillDto;
import com.dulich.entity.BillEntity;
import org.springframework.stereotype.Component;

@Component
public class BillConverter
{
    public BillDto toDto(BillEntity billEntity)
    {
        BillDto bill = new BillDto();
        bill.setId(billEntity.getId());
        bill.setFullName(billEntity.getFullname());
        bill.setAddress(billEntity.getAddress());
        bill.setNote(billEntity.getNote());
        bill.setPhone(billEntity.getPhone());
        bill.setPrice(billEntity.getPrice());
        bill.setItems(billEntity.getItems());
        return bill;
    }
}

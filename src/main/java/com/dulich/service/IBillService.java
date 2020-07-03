package com.dulich.service;

import com.dulich.dto.CartDto;
import com.dulich.entity.BillEntity;

import java.util.Map;

public interface IBillService
{
    void addBill(BillEntity bill , Map<Long , CartDto> carts);
}

package com.dulich.service;

import com.dulich.dto.BillDto;
import com.dulich.dto.CartDto;
import com.dulich.entity.BillEntity;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

public interface IBillService
{
    void addBill(BillEntity bill , Map<Long , CartDto> carts);
    List<BillDto> findAll(Pageable pageable);
    Long getTotal();
}

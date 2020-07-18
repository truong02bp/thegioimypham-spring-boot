package com.dulich.dto;

import com.dulich.entity.BillDetailsEntity;

import java.util.ArrayList;
import java.util.List;

public class BillDto extends AbstractDto<BillDto>
{
    private String fullName;
    private String address;
    private String phone;
    private String note;
    private Long price;
    private List<BillDetailsEntity> items = new ArrayList<>();

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public List<BillDetailsEntity> getItems() {
        return items;
    }

    public void setItems(List<BillDetailsEntity> items) {
        this.items = items;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }
}

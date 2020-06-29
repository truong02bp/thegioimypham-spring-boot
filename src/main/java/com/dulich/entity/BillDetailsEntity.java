package com.dulich.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "billdetails")
public class BillDetailsEntity extends BaseEntity
{
    @Column(name = "name" , columnDefinition = "text")
    private String name;
    @Column(name = "quantity")
    private Long quantity;
    @Column(name = "price")
    private Long price;
    @ManyToOne(cascade = CascadeType.ALL , fetch = FetchType.EAGER)
    @JoinColumn(name = "bill_id")
    private BillEntity billEntity;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public BillEntity getBillEntity() {
        return billEntity;
    }

    public void setBillEntity(BillEntity billEntity) {
        this.billEntity = billEntity;
    }
}

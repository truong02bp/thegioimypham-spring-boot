package com.dulich.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "bill")
public class BillEntity extends BaseEntity
{
    @Column(name ="fullname" , columnDefinition = "text")
    private String fullname;
    @Column(name = "address" , columnDefinition = "text")
    private String address;
    @Column(name = "phone" , columnDefinition = "text")
    private String phone;
    @Column(name ="note" , columnDefinition = "text")
    private String note;
    @Column(name ="price")
    private Long price;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name="bill_id")
    private List<BillDetailsEntity> items = new ArrayList<>();

    public List<BillDetailsEntity> getItems() {
        return items;
    }

    public void setItems(List<BillDetailsEntity> items) {
        this.items = items;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
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

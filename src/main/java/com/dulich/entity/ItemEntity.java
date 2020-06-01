package com.dulich.entity;

import javax.persistence.*;

@Entity
@Table(name = "item")
public class ItemEntity extends BaseEntity
{
    @Column(name = "name")
    private String name;
    @Column(name = "gia")
    private Long gia;
    @OneToOne
    @JoinColumn(name = "category_id")
    private CategoryEntity category;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getGia() {
        return gia;
    }

    public void setGia(Long gia) {
        this.gia = gia;
    }

    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }
}

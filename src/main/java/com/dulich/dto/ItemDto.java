package com.dulich.dto;

public class ItemDto extends AbstractDto<ItemDto>
{
    private Long categoryId;
    private String categoryName;
    private String categoryCode;
    private String name;
    private String content;
    private String code;
    private String link;
    private String shortDescription;
    private String khuyenmai;
    private String web;
    private Long sale;
    private String giaSau;
    private String giaTruoc;


    public String getCategoryCode() {
        return categoryCode;
    }

    public void setCategoryCode(String categoryCode) {
        this.categoryCode = categoryCode;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getKhuyenmai() {
        return khuyenmai;
    }

    public void setKhuyenmai(String khuyenmai) {
        this.khuyenmai = khuyenmai;
    }

    public String getWeb() {
        return web;
    }

    public void setWeb(String web) {
        this.web = web;
    }

    public Long getSale() {
        return sale;
    }

    public void setSale(Long sale) {
        this.sale = sale;
    }

    public String getGiaSau() {
        return giaSau;
    }

    public void setGiaSau(String giaSau) {
        this.giaSau = giaSau;
    }

    public String getGiaTruoc() {
        return giaTruoc;
    }

    public void setGiaTruoc(String giaTruoc) {
        this.giaTruoc = giaTruoc;
    }
}

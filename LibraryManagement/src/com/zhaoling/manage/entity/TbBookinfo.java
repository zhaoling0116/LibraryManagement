package com.zhaoling.manage.entity;

import java.math.BigDecimal;

public class TbBookinfo {
    private String isbn;

    private String bookname;

    private String type;

    private String publisher;

    private String writer;

    private String introduce;

    private BigDecimal price;

    private String pdate;

    private String cover;

    private String intime;

    private Long newbook;

    private Long commend;

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn == null ? null : isbn.trim();
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher == null ? null : publisher.trim();
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer == null ? null : writer.trim();
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce == null ? null : introduce.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getPdate() {
        return pdate;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate == null ? null : pdate.trim();
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover == null ? null : cover.trim();
    }

    public String getIntime() {
        return intime;
    }

    public void setIntime(String intime) {
        this.intime = intime == null ? null : intime.trim();
    }

    public Long getNewbook() {
        return newbook;
    }

    public void setNewbook(Long newbook) {
        this.newbook = newbook;
    }

    public Long getCommend() {
        return commend;
    }

    public void setCommend(Long commend) {
        this.commend = commend;
    }
}
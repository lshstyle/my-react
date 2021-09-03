package com.example.wechat.service;

import com.example.wechat.entity.Image;

import java.util.List;

public interface GoodsService {

    public List<Image> list();

    public List<Image> category();

    public List<Image> search();

    public Image detail();
}

package com.example.wechat.controller;

import com.example.react.util.HttpStatus;
import com.example.react.util.Result;
import com.example.wechat.entity.Image;
import com.example.wechat.service.FloorService;
import com.example.wechat.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @GetMapping("/category")
    public Result<List> list() {
        List<Image> list = goodsService.category();
        return new Result<List>(list, HttpStatus.SEARCH);
    }

    @GetMapping("/search")
    public Result<List> search() {
        List<Image> list = goodsService.search();
        return new Result<List>(list, HttpStatus.SEARCH);
    }

    @GetMapping("/detail")
    public Result<Image> detail() {
        Image img = goodsService.detail();
        return new Result<Image>(img, HttpStatus.SEARCH);
    }
}

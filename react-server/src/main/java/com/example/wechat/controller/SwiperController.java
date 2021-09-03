package com.example.wechat.controller;

import com.example.react.util.HttpStatus;
import com.example.react.util.Result;
import com.example.wechat.entity.Image;
import com.example.wechat.service.SwiperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/swiper")
public class SwiperController {

    @Autowired
    private SwiperService foodService;

    @GetMapping("/list")
    public Result<List> list() {
        List<Image> list = foodService.list();
        return new Result<List>(list, HttpStatus.SEARCH);
    }

}

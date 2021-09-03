package com.example.wechat.controller;

import com.example.react.util.HttpStatus;
import com.example.react.util.Result;
import com.example.wechat.entity.Image;
import com.example.wechat.service.FloorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/floor")
public class FloorController {

    @Autowired
    private FloorService floorService;

    @GetMapping("/list")
    public Result<List> list() {
        List<Image> list = floorService.list();
        return new Result<List>(list, HttpStatus.SEARCH);
    }
}

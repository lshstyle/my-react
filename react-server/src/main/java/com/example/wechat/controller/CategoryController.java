package com.example.wechat.controller;

import com.example.react.util.HttpStatus;
import com.example.react.util.Result;
import com.example.wechat.entity.Image;
import com.example.wechat.service.CategoryService;
import com.example.wechat.service.FloorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/list")
    public Result<List> list() {
        List<Image> list = categoryService.list();
        return new Result<List>(list, HttpStatus.SEARCH);
    }
}

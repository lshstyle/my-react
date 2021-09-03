package com.example.wechat.service.impl;

import com.example.wechat.entity.Image;
import com.example.wechat.service.NavigatorService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class NavigatorServiceImpl implements NavigatorService {

    public static Map<Integer, String> navMap = new HashMap<>();

    static {
        navMap.put(1, "1.png");
        navMap.put(2, "2.png");
        navMap.put(3, "3.png");
        navMap.put(4, "4.png");
    }
    @Override
    public List<Image> list() {
        List<Image> list = new ArrayList<>();
        navMap.keySet().forEach(e -> {
            Image img = new Image();
            img.setId(e);
            img.setImageSrc("http://172.20.54.41:9090/img/nav/" + navMap.get(e));
            img.setNavigatorUrl("/pages/category/index?goods_id="+e);
            list.add(img);
        });
        return list;
    }
}

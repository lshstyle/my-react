package com.example.wechat.service.impl;

import com.example.wechat.entity.Image;
import com.example.wechat.service.SwiperService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SwiperServiceImpl implements SwiperService {

    public static Map<Integer, String> foodMap = new HashMap<>();


    static {
        foodMap.put(1, "1.png");
        foodMap.put(2, "2.png");
        foodMap.put(3, "3.png");
    }
    @Override
    public List<Image> list() {
        List<Image> list = new ArrayList<Image>();
        foodMap.keySet().forEach(e -> {
            Image img = new Image();
            img.setId(e);
            img.setImageSrc("http://172.20.54.41:9090/img/swiper/" + foodMap.get(e));
            img.setNavigatorUrl("/pages/goods_detail/index?goods_id="+e);
            list.add(img);
        });
        return list;
    }
}

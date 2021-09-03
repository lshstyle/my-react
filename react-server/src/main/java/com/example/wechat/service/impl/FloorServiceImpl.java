package com.example.wechat.service.impl;

import com.example.wechat.entity.Image;
import com.example.wechat.service.FloorService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FloorServiceImpl implements FloorService {

    public static Map<Integer, String[]> floorMap = new HashMap<>();


    static {
        floorMap.put(1, new String[]{"时尚女装,1_title.png,,,,",
        "优质服饰,1_1.png,232,navigate,服饰",
        "春季热门,1_2.png,233,navigate,热",
        "爆款清仓,1_3.png,233,navigate,爆款",
        "倒春寒,1_4.png,233,navigate,春季",
        "怦然心动,1_5.png,233,navigate,心动"
        });
        floorMap.put(2, new String[]{"户外活动,2_title.png,,,,",
                "勇往直前,2_1.png,232,navigate,户外",
                "户外登山包,2_2.png,273,navigate,登山包",
                "超强手套,2_3.png,193,navigate,手套",
                "户外运动鞋,2_4.png,193,navigate,运动鞋",
                "冲锋衣系列,2_5.png,273,navigate,冲锋衣"
        });
        floorMap.put(3, new String[]{"箱包配饰,3_title.png,,,,",
                "清新气质,3_1.png,232,navigate,饰品",
                "复古胸针,3_2.png,263,navigate,胸针",
                "韩版手链,3_3.png,203,navigate,手链",
                "水晶项链,3_4.png,193,navigate,水晶项链",
                "情侣表,3_5.png,273,navigate,情侣表"
        });
    }
    @Override
    public List<Image> list() {
        List<Image> list = new ArrayList<Image>();
        floorMap.keySet().forEach(e -> {
            String[] arr = floorMap.get(e);
            Image img = new Image();
            img.setName(arr[0].split(",")[0]);
            img.setImageSrc("http://172.20.54.41:9090/img/floor/" + arr[0].split(",")[1]);
            for (int i=1; i<arr.length; i++) {
                Image subImg = new Image();
                subImg.setName(arr[i].split(",")[0]);
                subImg.setImageSrc("http://172.20.54.41:9090/img/floor/" + arr[i].split(",")[1]);
                subImg.setNavigatorUrl("/pages/goods_detail/index?query=" + arr[i].split(",")[4]);
                img.getList().add(subImg);
            }
            list.add(img);
        });
        return list;
    }
}

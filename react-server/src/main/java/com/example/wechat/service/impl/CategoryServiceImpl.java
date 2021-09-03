package com.example.wechat.service.impl;

import com.example.wechat.entity.Image;
import com.example.wechat.service.CategoryService;
import com.mysql.cj.util.StringUtils;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CategoryServiceImpl implements CategoryService {

    public static Map<String, String[]> categoryMap = new TreeMap<>();


    static {
        categoryMap.put("1_大家电", new String[]{
                "电视,0,|曲面电视,1,tv/1.jpg|海信,2,/tv/2.jpg|夏普,3,/tv/3.jpg|创维,4,/tv/4.jpg|TCL,5,/tv/5.jpg|PPTV,6,/tv/6.jpg|小米,7,/tv/7.jpg|长虹,8,/tv/8.jpg|康佳,9,/tv/9.jpg",
                "空调,10,|变频空调,11,air-condition/11.jpg|立柜空调,12,air-condition/12.jpg|挂壁空调,13,air-condition/13.jpg|中央空调,14,air-condition/14.jpg|移动空调,15,air-condition/15.jpg",
                "洗衣机,20|洗衣机,21,wash-mechine/21.jpg|滚筒洗衣机,22,wash-mechine/22.jpg|波轮洗衣机,23,wash-mechine/23.jpg|西门子,24,wash-mechine/24.jpg|海尔,25,wash-mechine/25.jpg"});
        categoryMap.put("2_热门推荐", new String[]{
                "圣诞狂欢,30|护肤套装,31,christmas/31.jpg|面膜,32,christmas/32.jpg|巧克力,33,christmas/33.jpg|儿童玩具,34,christmas/34.jpg|童装童鞋,35,christmas/35.jpg"});
        categoryMap.put("3_海外购", new String[]{
                "国际名牌,40,|swisse,41,overseas/41.jpg|巴黎水,42,overseas/42.jpg|爱他美,43,overseas/43.jpg|花王,44,overseas/44.jpg|戴森,45,overseas/45.jpg"});
        categoryMap.put("4_手机相机", new String[]{
                "大牌推荐,50|荣耀,51,phone/51.jpg|华为,52,phone/52.jpg|三星,53,phone/53.jpg|魅族,54,phone/54.jpg|OPPO,55,phone/55.jpg|vivo,56,phone/56.jpg|努比亚,57,phone/57.jpg|美图,58,phone/58.jpg|诺基亚,59,phone/59.jpg"});
    }

    @Override
    public List<Image> list() {
        List<Image> list = new ArrayList<Image>();
        categoryMap.keySet().forEach(e -> {
            Image img = new Image();
            img.setName(e.split("_")[1]);
            String[] arr = categoryMap.get(e);
            for (int i = 0; i < arr.length; i++) {
                String[] childArr = arr[i].split("\\|");
                Image childImg = new Image();
                childImg.setName(childArr[0].split(",")[0]);
                childImg.setId(Integer.parseInt(childArr[0].split(",")[1]));
                for (int j=1; j<childArr.length; j++) {
                    Image itemImg = new Image();
                    itemImg.setName(childArr[j].split(",")[0]);
                    itemImg.setId(Integer.parseInt(childArr[j].split(",")[1]));
                    itemImg.setImageSrc("http://172.20.54.41:9090/img/category/" + childArr[j].split(",")[2]);
                    childImg.getList().add(itemImg);
                }
                img.getList().add(childImg);
            }
            list.add(img);
        });
        return list;
    }
}

package com.example.wechat.service.impl;

import com.example.wechat.entity.Image;
import com.example.wechat.service.CategoryService;
import com.example.wechat.service.GoodsService;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.*;

@Service
public class GoodsServiceImpl implements GoodsService {

    public static Map<Integer, String> categoryMap = new HashMap<>();
    public static Map<String, String> searchMap = new HashMap<>();

    static {
        categoryMap.put(1, "综合");
        categoryMap.put(2, "销量");
        categoryMap.put(3, "排名");

        searchMap.put("6499", "1,创维（Skyworth）65V9E 65英寸25核4K HDR高清智能电视,");
        searchMap.put("1899", "2,创维（Skyworth）42X6 42英寸10核智能酷开网络平板液晶电视（黑色）,1.jpg");
        searchMap.put("4998", "3,创维(Skyworth) 65M6E 65英寸 4K超高清智能酷开网络液晶电视,");
        searchMap.put("2998", "4,创维彩电40G6A,2.jpg");
        searchMap.put("9699", "5,创维(Skyworth) G7 4K超高清彩电HDR 智能网络液晶平板电视(玫瑰金) 65G7 (65英寸),3.jpg");
        searchMap.put("4699", "6,创维彩电55G3,4.jpg");
        searchMap.put("4997", "7,创维电视55G720S 55英寸4色4K 23核智能彩电网络液晶平板电视,5.jpg");
        searchMap.put("3999", "8,创维（Skyworth）55H9A 55英寸超薄 全面屏 4K超高清智能电视(黑色),6.jpg");
        searchMap.put("3099", "9,创维（Skyworth）55V6 55英寸 4色4K超高清 18核 智能网络液晶电视 银色,7.jpg");
        searchMap.put("2399", "10,创维(Skyworth) 43M9 43英寸 4K超高清智能网络LED液晶平板电视,8.jpg");
        searchMap.put("4999", "11,创维(Skyworth) G7 4K超高清彩电HDR 智能网络液晶平板电视(玫瑰金) 50G7 (50英寸),9.jpg");
        searchMap.put("4499", "12,创维（Skyworth）60V8E 60英寸 4色4K 21核金属机身超高清智能网络液晶电视（金色）,10.jpg");
        searchMap.put("3299", "13,创维(skyworth) 55V8E 55英寸 4K超高清HDR纤薄全金属机身智能酷开网络液晶电视,11.jpg");
        searchMap.put("2956", "14,创维(Skyworth) 58V6 58英寸 4K超高清智能网络LED液晶平板电视,12.jpg");
        searchMap.put("0", "15,创维（Skyworth）65M9 65英寸15核HDR 4K超高清智能电视,");
        searchMap.put("2603", "16,创维（Skyworth）50M9 50英寸15核HDR 4K超高清智能电视,");
        searchMap.put("1799", "17,创维.PPTV W42S 42英寸 全高清智能网络LED液晶平板电视,13.jpg");
        searchMap.put("1201", "18,创维(Skyworth) 32X6 32英寸 高清智能网络LED液晶平板电视,14.jpg");
        searchMap.put("2999", "19,创维（Skyworth）55M9 55英寸15核HDR 4K超高清智能电视M7,15.jpg");
    }

    @Override
    public List<Image> category() {
        List<Image> list = new ArrayList<Image>();
        categoryMap.keySet().forEach(e -> {

            Image img = new Image();
            img.setName(categoryMap.get(e));
            img.setId(e);
            if (e == 1) {
                img.setActive(true);
            }
            list.add(img);
        });
        return list;
    }

    @Override
    public List<Image> list() {
        return null;
    }

    @Override
    public List<Image> search() {
        List<Image> list = new ArrayList<Image>();
        searchMap.keySet().forEach(e -> {
            Image img = new Image();
            img.setId(Integer.parseInt(searchMap.get(e).split(",")[0]));
            img.setName(searchMap.get(e).split(",")[1]);
            img.setPrice(new BigDecimal(e));
            if (searchMap.get(e).split(",").length > 2) {
                img.setImageSrc("http://172.20.54.41:9090/img/category/tv/detail/" + searchMap.get(e).split(",")[2]);
            } else {
                img.setImageSrc("http://172.20.54.41:9090/img/category/tv/no_img.jpg");

            }
            list.add(img);
        });
        return list;
    }

    @Override
    public Image detail() {
        Image img = new Image();
        img.setId(1);
        img.setPrice(new BigDecimal("1999"));
        img.setName("创维（Skyworth）42X6 42英寸10核智能酷开网络平板液晶电视（黑色）");
        img.setIntroduce("<div class=\"lazyimg\"><p><img data-src=\"https://image.suning.cn/uimg/sop/commodity/741249281154780902044340_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/741249281154780902044340_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/128591258913480735234482_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/128591258913480735234482_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"> </p> <!-- End Save for Web Slices --><div moduleid=\"R0503002_2\" modulename=\"关联推荐\"><p><img data-src=\"https://image.suning.cn/uimg/sop/commodity/183504123108229503077410_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/183504123108229503077410_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"> </p> <p> </p></div><div moduleid=\"R0503002_3\" modulename=\"商品详情\"><p><img data-src=\"https://image.suning.cn/uimg/sop/commodity/472965494163873184373390_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/472965494163873184373390_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/157906515415221786007211_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/157906515415221786007211_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/639845352731277212894500_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/639845352731277212894500_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/329803948105030694287660_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/329803948105030694287660_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/127955318516085329146659_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/127955318516085329146659_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/153848929407598056647800_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/153848929407598056647800_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/100620483383853103786290_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/100620483383853103786290_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/178475686919930828779779_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/178475686919930828779779_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/980623943134972133370000_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/980623943134972133370000_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/689597225174909660775540_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/689597225174909660775540_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/100540339625046776860330_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/100540339625046776860330_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/157256989324320357353850_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/157256989324320357353850_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/140702435153039619144130_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/140702435153039619144130_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/470282319127008975167720_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/470282319127008975167720_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/116407997716771946983111_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/116407997716771946983111_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"https://image.suning.cn/uimg/sop/commodity/503092513320123816224900_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"https://image.suning.cn/uimg/sop/commodity/503092513320123816224900_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"></p></div><div moduleid=\"R0503002_6\" modulename=\"安装说明\"><p> </p> <p> </p></div><p><img data-src=\"//image.suning.cn/uimg/sop/commodity/152449984059889854397700_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"//image.suning.cn/uimg/sop/commodity/152449984059889854397700_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"//image.suning.cn/uimg/sop/commodity/204142271209356253713350_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"//image.suning.cn/uimg/sop/commodity/204142271209356253713350_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"//image.suning.cn/uimg/sop/commodity/695663672444259954372000_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"//image.suning.cn/uimg/sop/commodity/695663672444259954372000_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"><img data-src=\"//image.suning.cn/uimg/sop/commodity/191410035293453732522870_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"//image.suning.cn/uimg/sop/commodity/191410035293453732522870_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"></p> <p><img data-src=\"//image.suning.cn/uimg/sop/commodity/116955946517420048931478_x.jpg?from=mobile&amp;format=80q.webp\" alt=\"\" src=\"//image.suning.cn/uimg/sop/commodity/116955946517420048931478_x.jpg?from=mobile&format=80q.webp\" width=\"100%\" height=\"auto\"></p> <p> </p> <p> </p></div>");
        img.setImageSrc("http://image2.suning.cn/uimg/b2c/newcatentries/0070078057-000000000634917020_1_400x400.jpg");
        Image pic1 = new Image();
        pic1.setImageSrc("http://image2.suning.cn/uimg/b2c/newcatentries/0070078057-000000000634917020_1_400x400.jpg");
        img.getList().add(pic1);
        Image pic2 = new Image();
        pic2.setId(2);
        pic2.setImageSrc("http://image1.suning.cn/uimg/b2c/newcatentries/0070078057-000000000634917020_2_400x400.jpg");
        img.getList().add(pic2);
        Image pic3 = new Image();
        pic3.setId(3);
        pic3.setImageSrc("http://image5.suning.cn/uimg/b2c/newcatentries/0070078057-000000000634917020_3_400x400.jpg");
        img.getList().add(pic3);
        Image pic4 = new Image();
        pic4.setId(4);
        pic4.setImageSrc("http://image4.suning.cn/uimg/b2c/newcatentries/0070078057-000000000634917020_4_400x400.jpg");
        img.getList().add(pic4);
        Image pic5 = new Image();
        pic5.setId(5);
        pic5.setImageSrc("http://image3.suning.cn/uimg/b2c/newcatentries/0070078057-000000000634917020_5_400x400.jpg");
        img.getList().add(pic5);
        return img;
    }
}

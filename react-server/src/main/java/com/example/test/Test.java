package com.example.test;

import java.util.Calendar;

public class Test {

    public static void main(String[] args) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH) + 1, 1, 0, 0, 0);
        calendar.add(Calendar.DATE, -1);
        int year = calendar.get(Calendar.YEAR);
        int month = calendar.get(Calendar.MONTH);
        System.out.println(calendar.getTime());
        for (int i = 1; i < 1; i++) {
            calendar.add(Calendar.DATE, -1);
            if (calendar.get(Calendar.YEAR) == year && month == calendar.get(Calendar.MONTH)) {
                System.out.println(calendar.getTime());
            }
        }
    }
}

package com.baizhi.springmvc.util;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Riqi implements Converter<String, Date> {

    private String pattern = "yyyy-MM-dd HH:mm:ss";


    public void setPattern(String pattern) {
        this.pattern = pattern;
    }


    @Override
    public Date convert(String arg0) {
        // TODO Auto-generated method stub
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        try {
            Date date = sdf.parse(arg0);
            return date;
        } catch (ParseException e) {

        }
        return null;
    }


}

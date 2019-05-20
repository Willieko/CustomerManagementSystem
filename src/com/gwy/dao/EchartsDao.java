package com.gwy.dao;

import com.gwy.domain.Echart;

import java.util.List;

public interface EchartsDao {
    //查询人数
    public Echart getNums();

    //查询年龄
    public List<Echart> getYear();
}

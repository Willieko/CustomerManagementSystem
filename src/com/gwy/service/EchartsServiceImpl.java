package com.gwy.service;

import com.gwy.dao.EchartsDao;
import com.gwy.domain.Echart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EchartsServiceImpl implements EchartsService {
    //注解注入EchartsDao
    @Autowired
    private EchartsDao echartsDao;

    @Override
    public Echart getNums() {
        Echart nums = this.echartsDao.getNums();
        return nums;
    }

    @Override
    public List<Echart> getYear() {
        List<Echart> echart = this.echartsDao.getYear();
        return echart;
    }
}

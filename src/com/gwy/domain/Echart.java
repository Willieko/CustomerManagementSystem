package com.gwy.domain;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
public class Echart {
    private Integer maleNums;
    private Integer femaleNums;
    private String year;
    @Override
    public String toString() {
        return "Echart [maleNums=" + maleNums + ", femaleNums=" + femaleNums + ",year="+ year+"]";
    }

}

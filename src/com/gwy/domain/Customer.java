package com.gwy.domain;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class Customer {
    private Integer id;
    private String name;
    private String sex;
    private String birthdate;
    private String telephone;
    private String qqnumber;
    private String job;
    private String hobby;
    private String address;
    private String remark;
    @Override
    public String toString() {
        return "Customer [id=" + id + ", name=" + name + ", sex=" + sex + ", birthdate=" + birthdate + ", telephone="
                + telephone + ", qqnumber=" + qqnumber + ", job=" + job + ", hobby=" + hobby + ", address=" + address
                + ", remark=" + remark + "]";
    }



}

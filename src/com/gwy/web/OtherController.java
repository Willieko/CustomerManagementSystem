package com.gwy.web;

import com.gwy.domain.Echart;
import com.gwy.service.EchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

@Controller
public class OtherController {
    @Autowired
    private EchartsService echartsService;

    //获取人数
    @RequestMapping(value = "/getNums.action")
    public String getNums(HttpServletRequest request, HttpServletResponse response) throws Exception{
        try{
            //获取人数
            Echart echart = echartsService.getNums();
            List<Echart> et = echartsService.getYear();
            int eighty = 0;
            int ninety = 0;
            int zero = 0;
            for(int i=0;i<et.size();i++) {
                int year = Integer.parseInt(et.get(i).getYear());
                if(year>1979 && year <1990) {
                    eighty ++;
                }
                if(year>1989 && year<2000) {
                    ninety ++;
                }
                if(year>2000) {
                    zero ++;
                }
                //把人数保存到request
                request.setAttribute("echart", echart);
                //把年龄保存到request
                HashMap<String, Integer> hp = new HashMap<String, Integer>();
                hp.put("eighty", eighty);
                hp.put("ninety", ninety);
                hp.put("zero", zero);
                request.setAttribute("hp",hp);
            }
            //转发
            return "echarts.jsp";
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String ctx = request.getContextPath();
    pageContext.setAttribute("root", ctx);
%>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>数据分析e</title>
    <link rel="stylesheet" href="${root }/css/base.css">
    <link rel="stylesheet" href="${root }/css/echarts.css">
</head>
<body>
<!--头部导航-->
<div class="content-nav">
    <p>数据分析</p>
</div>
<!--性别分布-->
<div id="div1" class="sex"></div>
<!--年龄分布-->
<div id="div2" class="sex"></div>


<script src="js/echarts.common.min.js"></script>
<script>
    window.onload = function () {
        var Chart1 = echarts.init(document.getElementById('div1'));
        var Chart2 = echarts.init(document.getElementById('div2'));
        // 指定图表的配置项和数据
        Chart1.setOption({
            title: {
                text: '客户性别分布',
                left:'center',
                top:'10px',
                textStyle: {
                    color: '#2d8fd9',
                    fontSize:20
                }
            },
            legend:{
                data:[{
                    name: '男性',
                    icon: 'circle',
                    textStyle: {
                        color: '#295F9B'
                    }
                },
                    {
                        name: '女性',
                        icon: 'circle',
                        textStyle: {
                            color: '#c23531'
                        }
                    }
                ],
                left:'center',
                bottom:'10px'
            },
            tooltip : {
                trigger: 'item'

            },
            series : [
                {
                    name: '性别',
                    type: 'pie',
                    radius: '55%',
                    label:{
                        show:true,
                        position:'inside',
                        formatter:function(data)
                        { return data.percent.toFixed(0)+"%";}

                    },
                    data:[
                        {value:"${echart.maleNums}",
                            name:'男性',
                            itemStyle: {color: '#295F9B'}},
                        {value:"${echart.femaleNums}",
                            name:'女性',
                            itemStyle: {color: '#c23531'}
                        }
                    ]
                }
            ]
        });
        Chart2.setOption({
            title: {
                text: '客户年龄分布',
                left:'center',
                top:'10px',
                textStyle: {
                    color: '#2d8fd9',
                    fontSize:20
                }
            },
            legend:{
                data:[{
                    name: '80后',
                    icon: 'circle',
                    textStyle: {
                        color: '#295F9B'
                    }
                },
                    {
                        name: '90后',
                        icon: 'circle',
                        textStyle: {
                            color: '#c23531'
                        }
                    },
                    {
                        name: '00后',
                        icon: 'circle',
                        textStyle: {
                            color: '#FF8C00'
                        }
                    }
                ],
                left:'center',
                bottom:'10px'
            },
            tooltip : {
                trigger: 'item'

            },
            series : [
                {
                    name: '性别',
                    type: 'pie',
                    radius: '55%',
                    data:[
                        {value:"${hp.eighty}", name:'80后',itemStyle: {
                                color: '#295F9B'}
                        },
                        {value:'${hp.ninety}', name:'90后',itemStyle: {
                                color: '#c23531'}
                        },
                        {value:'${hp.zero}', name:'00后',itemStyle: {
                                color: '#FF8C00'}
                        }
                    ]
                }
            ]
        });
    }

</script>
</body>
</html>
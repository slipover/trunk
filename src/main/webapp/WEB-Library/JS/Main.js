$(function(){
    //导航栏
    $.PlugInHeader({
        target:"#head_menu",
        ico:"/images/ico.png",
        title:"机场后台",
        leftMenu:[
            {
                title:"全球机场图",
                target:"#Tab-Map"
            }
        ],rightMenu:[
            {
                ico:"user",
                title:"我的帐号"
            },{
                ico:"log-out",
                title:"退出",
                target:"index.jsp"
            }
        ],onClick:function(title){

        }
    });

    $("a[data-toggle='tab']").click(function(){
        $("li[class='active']").removeClass("active");
        if($(this).attr("href")=="#Tab-Table"){
            $.PlugInTable(Tab_Table_data[$(this).text().trim()]);
        }
    });
});

var Tab_Table_data={
    // "testTable":{
    //     target:"#table-data",
    //     url:"/test.json",
    //     idField:"productid",
    //     col:[
    //         {text:"productid",field:"productid"},
    //         {text:"productname",field:"productname"}
    //     ],
    //     insertUrl:"",
    //     updateUrl:"",
    //     deleteUrl:"",
    //     onClick:function(row){
    //
    //     }
    // },
    "航班":{
        target:"#table-data",
        url:"Flight/selectPage.action",
        col:[
            {text:"航班号",field:"flight_num"},
            {text:"出发日期",field:"flight_date"},
            {text:"头等舱剩余座位数",field:"flight_cabinClassF"},
            {text:"公务舱剩余座位数",field:"flight_cabinClassC"},
            {text:"经济舱剩余座位数",field:"flight_cabinClassY"},
            {text:"季节折扣",field:"season_discount.sd_re"}
        ],
        updateUrl:"Flight/update.action",
        deleteUrl:"Flight/delete.action",
        insertUrl:"Flight/insert.action"
    },
    "飞机型号":{
        target:"#table-data",
        url:"Aircraft/selectPage.action",
        col:[
            {text:"飞机编号",field:"air_num"},
            {text:"最大航程",field:"max_voy"},
            {text:"头等舱座位数",field:"mod_a"},
            {text:"公务舱座位数",field:"mod_b"},
            {text:"经济舱座位数",field:"mod_c"}
        ],
        updateUrl:"Aircraft/update.action",
        deleteUrl:"Aircraft/delete.action",
        insertUrl:"Aircraft/insert.action"
    },
    "航班计划":{
        target:"#table-data",
        url:"FlightScheduler/selectPage.action",
        col:[
            {text:"航班号",field:"flightscheduler_num"},
            {text:"起始日期",field:"flight_startDate"},
            {text:"结束日期",field:"flight_endDate"},
            {text:"执行航线",field:"airline.al_id"},
            {text:"离港时间",field:"flight_departure"},
            {text:"到港时间",field:"flight_arrival"},
            {text:"执行机型",field:"aircraft.air_num"},
            {text:"班期",field:"flight_scheduler"},
            {text:"基准票价",field:"flight_fullPrice"}
        ],
        updateUrl:"FlightScheduler/update.action",
        deleteUrl:"FlightScheduler/delete.action",
        insertUrl:"FlightScheduler/insert.action"
    },
    "机场":{
        target:"#table-data",
        url:"Airport/selectPage.action",
        col:[
            {text:"机场三字码",field:"ap_code"},
            {text:"所属地区",field:"ap_area"},
            {text:"所属城市",field:"ap_city"},
            {text:"机场名称",field:"ap_airportname"}
        ],
        updateUrl:"Airport/update.action",
        deleteUrl:"Airport/delete.action",
        insertUrl:"Airport/insert.action"
    },
    "航线":{
        target:"#table-data",
        url:"Airline/selectPage.action",
        col:[
            {text:"航线号",field:"al_id"},
            {text:"出发地",field:"airport_from.ap_code"},
            {text:"目的地",field:"airport_to.ap_code"},
            {text:"里程",field:"al_mileage"}
        ],
        updateUrl:"Airline/update.action",
        deleteUrl:"Airline/delete.action",
        insertUrl:"Airline/insert.action"
    }
};
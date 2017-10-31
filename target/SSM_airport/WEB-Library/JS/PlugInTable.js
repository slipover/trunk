/**
 * 数据表格
 * @param params
 * <table id="table_test"></table>
 * $.PlugInTable({
        target:"#table_test",
        url:"/test.json",
        idField:"productid",
        col:[
            {text:"productid",field:"productid"},
            {text:"productname",field:"productname"}
        ],onClick:function(row){

        },
        insertUrl:"",
        updateUrl:"",
        deleteUrl:"",
        pageSize:10
    });
 * @constructor
 */
$.PlugInTable = function(params){
    $(params['target']).empty();
    $(params['target']).attr("class","table table-hover table-striped table-condensed");
    var pageNo=-10;
    var pageSize=10;
    if(params['pageSize']){
        pageNo=-params['pageSize'];
        pageSize=params['pageSize'];
    }
    //列名
    var searchCol=undefined;
    //搜索值
    var searchValue=undefined;
    //上一页 数据
    var beforData=undefined;
    //当前页 数据
    var nowData=undefined;
    //下一页 数据
    var afterData=undefined;
    //表格头部
    var thead=$("<thead></thead>");$(params['target']).append(thead);
    var search_tr=$("<tr></tr>");thead.append(search_tr);
    var search_td=$("<td colspan='"+(params['col'].length+1)+"'></td>");search_tr.append(search_td);
    var search_form=$("<form class='form-inline'></form>");search_td.append(search_form);
    search_form.append("<h4 class='col-lg-2' style='text-align:right'>列名:</h4>");
    var search_select=$("<select class='col-lg-4 form-control'></select>");search_form.append(search_select);
    $.each(params['col'],function(i,n){
        search_select.append("<option value='"+n['field']+"'>"+n['text']+"</option>");
    });
    search_form.append("<h4 class='col-lg-2' style='text-align:right'>搜索:</h4>");
    var search_div=$("<div class='col-lg-4 input-group'></div>");search_form.append(search_div);
    var search_text=$("<input class='form-control' placeholder='Search...'/>");search_div.append(search_text);
    var search_span=$("<span class='input-group-btn'></span>");search_div.append(search_span);
    var search_submit=$("<button type='button' class='btn btn-flat'><i class='fa fa-search'></i></button>");search_span.append(search_submit);
    search_submit.click(function(){
        pageNo=-10;beforData=undefined;nowData=undefined;afterData=undefined;
        searchCol=search_select.val();
        searchValue=search_text.val();
        PlugInTable_selectPage(params['url'],pageNo+pageSize,pageSize,function(rowList){
            if(rowList.length!=0){
                afterData=rowList;
                tfoot_tr_td_ul_next.click();
            }
        },searchCol,searchValue);
    });
    var thead_tr=$("<tr></tr>");thead.append(thead_tr);
    $.each(params['col'],function(i,n){
        thead_tr.append("<th style='text-align: center'>"+n['text']+"</th>");
    });
    var thead_tr_th=$("<th style='text-align: center'></th>");thead_tr.append(thead_tr_th);
    var thead_tr_th_refresh=$("<button class='btn btn-info'> 刷 新 </button>");thead_tr_th.append(thead_tr_th_refresh);
    //刷新 方法
    thead_tr_th_refresh.click(function(){
        PlugInTable_selectPage(params['url'],pageNo-pageSize,pageSize,function(rowList){
            if(rowList.length!=0){
                beforData=rowList;
            }else{
                beforData=undefined;
            }
        },searchCol,searchValue);
        PlugInTable_selectPage(params['url'],pageNo,pageSize,function(rowList){
            if(rowList.length!=0){
                nowData=rowList;
            }else{
                nowData=undefined;
            }
            PlugInTable_tbody(nowData,params,tbody);
        },searchCol,searchValue);
        PlugInTable_selectPage(params['url'],pageNo+pageSize,pageSize,function(rowList){
            if(rowList.length!=0){
                afterData=rowList;
            }else{
                afterData=undefined;
            }
        },searchCol,searchValue);
    });
    var thead_tr_th_add=$("<button class='btn btn-success'> 添 加 </button>");thead_tr_th.append(thead_tr_th_add);
    thead_tr_th_add.click(function(){
        var tr=$("<tr></tr>");tbody.prepend(tr);
        var row={};
        $.each(params['col'],function(i,n){
            row[n['field']]="";
        });
        PlugInTable_Button_Save(params['insertUrl'],params,tr,row);
    });
    var tbody=$("<tbody></tbody>");$(params['target']).append(tbody);
    //数据准备
    PlugInTable_selectPage(params['url'],pageNo+pageSize,pageSize,function(rowList){
        if(rowList.length!=0){
            afterData=rowList;
            tfoot_tr_td_ul_next.click();
        }
    },searchCol,searchValue);
    //表格尾部
    var tfoot=$("<tfoot></tfoot>");$(params['target']).append(tfoot);
    var tfoot_tr=$("<tr></tr>");tfoot.append(tfoot_tr);
    var tfoot_tr_td=$("<td colspan='"+(params['col'].length+1)+"'></td>");tfoot_tr.append(tfoot_tr_td);
    var tfoot_tr_td_ul=$("<ul class='pager'></ul>");tfoot_tr_td.append(tfoot_tr_td_ul);
    var tfoot_tr_td_ul_previous=$("<li class='previous disabled'>&emsp;&emsp;<a href='#'>&larr; 上一页</a></li>");tfoot_tr_td_ul.append(tfoot_tr_td_ul_previous);
    //上一页 方法
    tfoot_tr_td_ul_previous.click(function(){
        if(!$(this).hasClass("disabled")){
            afterData=nowData;nowData=beforData;pageNo-=pageSize;
            tfoot_tr_td_ul_next.removeClass("disabled");
            PlugInTable_tbody(nowData,params,tbody);
            PlugInTable_selectPage(params['url'],pageNo-pageSize,pageSize,function(rowList){
                if(rowList.length==0){
                    beforData=undefined;
                    tfoot_tr_td_ul_previous.addClass("disabled");
                }else{
                    beforData=rowList;
                }
            },searchCol,searchValue);
        }
    });
    var tfoot_tr_td_ul_next=$("<li class='next'><a href='#'>下一页 &rarr;</a>&emsp;&emsp;</li>");tfoot_tr_td_ul.append(tfoot_tr_td_ul_next);
    //下一页 方法
    tfoot_tr_td_ul_next.click(function(){
        if(!$(this).hasClass("disabled")){
            beforData=nowData;nowData=afterData;pageNo+=pageSize;
            tfoot_tr_td_ul_previous.removeClass("disabled");
            PlugInTable_tbody(nowData,params,tbody);
            PlugInTable_selectPage(params['url'],pageNo+pageSize,pageSize,function(rowList){
                if(rowList.length==0){
                    afterData=undefined;
                    tfoot_tr_td_ul_next.addClass("disabled");
                }else{
                    afterData=rowList;
                }
            },searchCol,searchValue);
        }
    });
};

/**
 * 分页查询方法
 * @param url 分页查询的路径
 * @param pageNo 数据开始位置
 * @param pageSize 数据条数
 * @param method 查询结果后的回调函数
 * @constructor
 */
function PlugInTable_selectPage(url,pageNo,pageSize,method,col,value){
    var params;
    if(col&&value){
        params={'pageNo':pageNo,'pageSize':pageSize,'col':col,'value':value};
    }else{
        params={'pageNo':pageNo,'pageSize':pageSize};
    }
    $.post(
        url,params,
        function(data){
            var rowList;
            if(data instanceof Array){
                rowList=data;
            }else{
                rowList=JSON.parse(data);
            }
            for(var i=0;i<rowList.length;i++){
                rowList[i]=SendJSON("",rowList[i]);
            }
            method(rowList);
        }
    );
}

/**
 * 数据填充方法
 * @param rowList 结果集
 * @param col 列名集合
 * @param tbody 添加的地方
 * @constructor
 */
function PlugInTable_tbody(rowList,params,tbody){
    tbody.empty();
    $.each(rowList,function(i,row){
        var tr=$("<tr></tr>");tbody.append(tr);
        tr.click(function(){
            if(params['onClick']){
                $.each($(this).siblings(),function(j,m){
                    $(m).removeClass("success")
                });
                $(this).addClass("success");
                params['onClick'](row);
            }else{
                if($(this).hasClass("success")){
                    $(this).removeClass("success");
                }else{
                    $(this).addClass("success");
                }
            }
        });
        PlugInTable_tr(params,tr,row);
    });
}

/**
 * 填充一行数据方法
 * @param col 列名集合
 * @param row
 * @returns {jQuery|HTMLElement}
 * @constructor
 */
function PlugInTable_tr(params,tr,row){
    tr.empty();
    tr.dblclick(function(){
        PlugInTable_Button_Save(params['updateUrl'],params,tr,row);
    });
    $.each(params['col'],function(i,n){
        tr.append("<td style='text-align: center'>"+row[n['field']]+"</td>");
    });
    tr.append("<td align='center'></td>");
    PlugInTable_Button_UpdateAndDelete(params,tr,row);
    return tr;
}

/**
 * 添加 修改和删除 按钮与事件
 * @param params
 * @param tr
 * @param row
 * @constructor
 */
function PlugInTable_Button_UpdateAndDelete(params,tr,row){
    var buttonUpdate=$("<button class='btn btn-primary'> 修 改 </button>");tr.children("td:last-child").append(buttonUpdate);
    //修改 方法
    buttonUpdate.click(function(){
        PlugInTable_Button_Save(params['updateUrl'],params,tr,row);
    });
    var buttonDelete=$("<button class='btn btn-warning'> 删 除 </button>");tr.children("td:last-child").append(buttonDelete);
    //删除 方法
    buttonDelete.click(function(){
        $.post(params['deleteUrl'],SendJSON("",row),function(data){
            alert('删除结果：'+data);
        });
    });
}

/**
 * 添加 保存 按钮与事件
 * @param params
 * @param tr
 * @param row
 * @constructor
 */
function PlugInTable_Button_Save(url,params,tr,row){
    tr.empty();
    $.each(params['col'],function(i,n){
        var list="";if(n['list']){list="list='"+n['list']+"'";}
        if(params['idField']){
            if(params['idField']==n['field']){
                tr.append("<td style='text-align: center'>"+row[n['field']]+"</td>");
            }else{
                tr.append("<td align='center'><input type='"+n['type']+"' "+list+" name='"+n['field']+"' value='"+row[n['field']]+"'/></td>");
            }
        }else{
            tr.append("<td align='center'><input type='"+n['type']+"' "+list+" name='"+n['field']+"' value='"+row[n['field']]+"'/></td>");
        }
    });
    var tr_td=$("<td align='center'></td>");tr.append(tr_td);
    var butterSave=$("<button class='btn btn-warning'> 保 存 修 改 </button>");tr_td.append(butterSave);
    //保存 方法
    butterSave.click(function(){
        $.each(tr.children("td"),function(i,n){
            if(params['col'].length!=i){
                if($(n).children().attr("name")!=undefined){
                    row[$(n).children().attr("name")]=$(n).children().val();
                }else{
                    row[params['idField']]=$(n).text();
                }
            }
        });
        PlugInTable_tr(params,tr,row);
        $.post(url,row,function(data){
            alert('保存结果：'+data);
        });
    });
}

/**
 * 发送 JSON 数据
 * @param i
 * @param n
 * @param t
 * @returns {{}}
 * @constructor
 */
function SendJSON(i,n,t){
    var json={};if(t){json=t;}
    if(n instanceof Object){
        $.each(n,function (j,m) {
            if(m instanceof Object){
                json=SendJSON(i+j+".",m,json);
            }else{
                json[i+j]=m;
            }
        });
    }
    return json;
}
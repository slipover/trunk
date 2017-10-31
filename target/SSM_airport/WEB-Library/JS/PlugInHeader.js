/**
 * 响应式导航栏
 * @param params
 * <header id="header_test"></header>
 * $.PlugInHeader({
        target:"#header_test",
        ico:"/ico.png",
        title:"菜鸟教程",
        leftMenu:[
            {
                title:"快捷菜单1",
                child:["Home","SVN","iOS","SVN","VB.Net","Java"]
            },{
                title:"快捷菜单2",
                child:["Home","SVN","iOS","SVN","VB.Net","Java"]
            }
        ],rightMenu:[
            {
                ico:"user",
                title:"我的帐号"
            },{
                ico:"log-out",
                title:"退出"
            }
        ],onClick:function(title){

        }
    });
 * @constructor
 */
$.PlugInHeader = function(params){
    $(params['target']).empty();
    var nav=$("<nav class='navbar navbar-default container-fluid' role='navigation'></nav>");$(params['target']).append(nav);
    //标题栏
    var nav_header=$("<div class='navbar-header'></div>");nav.append(nav_header);
    //汉堡按钮
    var collapse=$("<button class='navbar-toggle' data-toggle='collapse' data-target='#nav_menu'></button>");nav_header.append(collapse);
    collapse.append("<span class='sr-only'>切换导航</span>");
    collapse.append("<span class='icon-bar'></span>");
    collapse.append("<span class='icon-bar'></span>");
    collapse.append("<span class='icon-bar'></span>");
    //标题栏图标
    if(params['ico']){
        nav_header.append("<img src='"+params['ico']+"' style='float:left;width:50px;height:50px;'/>");
    }
    nav_header.append("<a class='navbar-brand' href='#'><b>"+params['title']+"</b></a>");
    //菜单栏
    var nav_menu=$("<div class='collapse navbar-collapse' id='nav_menu'></div>");nav.append(nav_menu);
    //左侧菜单
    var nav_left_menu=$("<ul class='nav navbar-nav'></ul>");nav_menu.append(nav_left_menu);
    if(params['leftMenu']){
        $.each(params['leftMenu'],function(i,n){
            nav_left_menu.append(menu_li(params,n));
        });
    }
    //右侧菜单
    var nav_right_menu=$("<ul class='nav navbar-nav navbar-right'></ul>");nav_menu.append(nav_right_menu);
    if(params['rightMenu']){
        $.each(params['rightMenu'],function(i,n){
            nav_right_menu.append(menu_li(params,n));
        });
    }
};

/**
 * 创建 菜单按钮
 * @param n
 * @returns {jQuery|HTMLElement}
 */
function menu_li(params,n){
    var menu_li=$("<li></li>");
    var a_attr="href='#'";
    if(n['target']){
        a_attr="href='"+n['target']+"'";
        if(n['target'].indexOf("#")!=-1){
            a_attr+=" data-toggle='tab'";
        }
    }
    var menu_li_a=$("<a "+a_attr+"></a>");menu_li.append(menu_li_a);
    if(n['ico']){
        menu_li_a.append("<span class='glyphicon glyphicon-"+n['ico']+"'></span>");
    }
    menu_li_a.append(" "+n['title']);
    if(n['child']){
        menu_li_a.attr("class","dropdown-toggle");
        menu_li_a.attr("data-toggle","dropdown");
        menu_li_a.append(" <b class='caret'></b>");
        var menu_ul=$("<ul class='dropdown-menu'></ul>");menu_li.append(menu_ul);
        $.each(n['child'],function(j,m){
            var a_attr="href='#'";
            if(n['target']){
                a_attr="href='"+n['target']+"'";
                if(n['target'].indexOf("#")!=-1){
                    a_attr+=" data-toggle='tab'";
                }
            }
            var menu_ul_li=$("<li><a "+a_attr+">"+m+"</a></a></li>");menu_ul.append(menu_ul_li);
            menu_ul_li.click(function(){
                if(params['onClick']){
                    params['onClick'](m);
                }
            });
        })
    }else{
        menu_li_a.click(function(){
            if(params['onClick']){
                params['onClick'](n['title']);
            }
        });
    }
    return menu_li;
}
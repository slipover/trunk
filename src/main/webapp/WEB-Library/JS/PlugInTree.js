/**
 * 手风琴
 * @param params
 * <ul id="ul_test"></ul>
 * $.PlugInTree({
        target:"#ul_test",
        menu:[
            {
                title:"快捷菜单1",
                target:"#table",
                {title:"Home",target:"#Home"},
                {title:"SVN",target:"#SVN"},
                {title:"iOS",target:"#iOS"},
                {title:"VB.Net",target:"#VBNet"},
                {title:"Java",target:"#Java"}
            },{
                title:"快捷菜单2",
                child:["Home2","SVN2","iOS2","SVN2","VB.Net2","Java2"]
            }
        ],onClick:function(title){

        }
    });
 * @constructor
 */
$.PlugInTree = function(params){
    $(params['target']).empty();
    $(params['target']).attr("class","nav nav-pills nav-stacked");
    $.each(params['menu'],function(i,n){
        var li=$("<li class='active'></li>");$(params['target']).append(li);
        var a_attr="href='#'";
        if(n['target']){a_attr="href='"+n['target']+"' data-toggle='tab'";}
        var a=$("<a "+a_attr+"><b>"+n['title']+"</b></a>");li.append(a);
        if(n['child']){
            var ul=$("<ul class='nav nav-pills nav-stacked'></ul>");li.append(ul);
            a.click(function(){
                if(ul){ul.slideToggle();}
            });
            $.each(n['child'],function(j,m){
                var m_attr="href='#'";
                if(m['target']){m_attr="href='"+m['target']+"' data-toggle='tab'";}
                var childLi=$("<li><a "+m_attr+">"+m['title']+"</a></li>");ul.append(childLi);
                childLi.click(function(){
                    if(params['onClick']){
                        params['onClick'](m['title']);
                    }
                });
            });
        }else{
            a.click(function(){
                if(params['onClick']){
                    params['onClick'](n['title']);
                }
            });
        }
    });
};
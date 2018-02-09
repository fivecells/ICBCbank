var bank = {

    registermenu: function () {
        var _this = this;
        var defaultData = [
            {
                text: '个人用户操作',
                selectable:false,
                icon: 'glyphicon glyphicon-bookmark',
                backColor: 'lightblue',
                nodes: [
                    {
                        text: '用户列表',
                        href: 'table-list',
                        tags: ['4'],
                    },
                    {
                        text: '新增用户',
                        href: 'table-add',
                        tags: ['5']
                    },
                    {
                        text: '用户银行卡',
                        href: 'user-card',
                        tags: ['8']
                    }
                ]
            },
            {
                text: '企业用户操作',
                selectable:false,
                icon: 'glyphicon glyphicon-bookmark',
                backColor: 'lightblue',
                nodes: [
                    {
                        text: '企业列表',
                        href: 'company-list',
                        tags: ['1'],
                    },
                    {
                        text: '新增企业',
                        href: 'company-add',
                        tags: ['2']
                    },
                    {
                        text: '企业银行卡',
                        href: 'company-card',
                        tags: ['3']
                    }
                ]
            },
            {
                text: '职员相关操作',
                selectable:false,
                icon: 'glyphicon glyphicon-bookmark',
                backColor: 'lightblue',
                nodes: [
                    {
                        text: '职员列表',
                        href: 'waiter-list',
                        tags: ['6']
                    },
                    {
                        text: '新增职员',
                        href: 'waiter-add',
                        tags: ['7']
                    }
                ]
            },
            {
                text: '其他操作',
                selectable:false,
                icon: 'glyphicon glyphicon-bookmark',
                backColor: 'lightblue',
                state: {
                    expanded: false     //指示一个节点是否处于展开状态
                },
                nodes: [
                    {
                        text: '登录调整',
                        href: 'staff-list',
                        tags: ['9']
                    },
                    {
                        text: '利率调整',
                        href: 'rate-setting',
                        tags: ['10']
                    },
                    {
                        text: '职工工资',
                        href: 'salary-list',
                        tags: ['11']
                    }
                ]
            }
        ];
        $('#treeview5').treeview({
            selectedIcon: 'glyphicon glyphicon-check',
            color: "#428bca",
            expandIcon: 'glyphicon glyphicon-chevron-right',
            collapseIcon: 'glyphicon glyphicon-chevron-down',
            nodeIcon: 'glyphicon glyphicon-unchecked',
            data: defaultData,
            onNodeSelected: function (event, node) {
                //从节点中获取node属性
                var id = node.tags;
                var text = node.text;
                var url = node.href;
                _this.addTab(id, text, url);
            }
        });
    },

    addTab: function (_id, _text, _url) {

        if ($('#' + _id)[0] == null) {
            $('#tabContainer').data("tabs").addTab({id: _id, text: _text, closeable: true, url: _url});
        } else {
            $('#tabContainer').data("tabs").showTab(_id);
        }

    },
    closeTab: function (id) {
        $('#tabContainer').data("tabs").remove(id);
    },
    //重载页面，需要传入对象{id: id, text: text, closeable: true, url: url}；
    reload: function (obj) {
        $('#tabContainer').data("tabs").reload(obj);
    },
    // getCurrentTabId:function(){
    //     $('#tabContainer').data("tabs").getCurrentTabId();
    // }

}
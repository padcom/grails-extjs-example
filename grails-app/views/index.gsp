<html>
<head>
  <title>Welcome to Grails</title>
  <meta name="layout" content="ext-desktop" />

  <style>
    html, body {
      background:black url(${resource(dir:'images', file: 'grails_logo.png')}) no-repeat center;
    }

    .grid-icon {
        background-image: url(${resource(dir:'images', file: 'grid.png')});
    }

    #example-win-shortcut img {
        width:48px;
        height:48px;
        background-image: url(${resource(dir:'images', file: 'im48x48.png')});
        filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='images/im48x48.png', sizingMethod='scale');
    }
  </style>

  <script type="text/javascript">

MyDesktop = new Ext.app.App({
    init :function(){
        Ext.QuickTips.init();
    },

    getModules: function(){
        return [
            new MyDesktop.BogusModule()
        ];
    },

    // config for the start menu
    getStartConfig: function() {
        return {
            title: 'Jack Slocum',
            iconCls: 'user',
            toolItems: [{
                text:'Settings',
                iconCls:'settings',
                scope:this
            },'-',{
                text:'Logout',
                iconCls:'logout',
                scope:this
            }]
        };
    },

    getShortcuts : function() {
        return [ {
            id: 'example-win',
            title: 'Example Window'
        } ]
    }
});

MyDesktop.BogusModule = Ext.extend(Ext.app.Module, {
    id:'example-win',

    init : function(){
        this.launcher = {
            text: 'Example',
            iconCls: 'grid-icon',
            handler : this.createWindow,
            scope: this,
            windowId: 'example-win'
        }
    },

    createWindow : function(src){
        var desktop = this.app.getDesktop();
        var win = desktop.getWindow('example-win');
        if(!win){
            win = desktop.createWindow({
                id: 'example-win',
                title:'Example',
                iconCls: 'grid-icon',
                width:640,
                height:480,
                html : '<p>Something useful would be in here.</p>',
                shim:false,
                animCollapse:true,
                constrainHeader:true
            });
        }
        win.show();
    }
});
    </script>
</head>

<body>
</body>

</html>

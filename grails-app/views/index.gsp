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
            new Ext.app.EmbeddedModule({ 
                id: 'example-win',
                url: '/example/modules/example.gsp',
                name: 'Example 1',
                title: 'Example 2',
                iconCls: 'grid-icon',
                width: 800,
                height: 600
            })
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
    </script>
</head>

<body>
</body>

</html>

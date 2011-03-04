Modules.Example.main = function() {
  var win = Ext.getCmp(Modules.Example.config.parentId);

  var count = 0;
  var panel = new Ext.Panel({
      layout: 'fit',
      title: 'My panel',
      items: {
        xtype: 'button',
        text: 'clickme1',
        handler: function() {
          Ext.MessageBox.alert("Info", "You clicked me " + (++count) + " times.");
        }
      }
  });

  win.add(panel);
  win.doLayout();
};

Ext.onReady(function() {
  var win = Ext.getCmp(Modules.Example.config.parentId);

  var count = 0;

  new Ext.Panel({
      layout: 'fit',
      title: 'My panel',
      renderTo: win.body,
      items: {
        xtype: 'button',
        text: 'clickme1',
        handler: function() {
          Ext.MessageBox.alert("Info", "You clicked me " + (++count) + " times.");
        }
      }
  });
});

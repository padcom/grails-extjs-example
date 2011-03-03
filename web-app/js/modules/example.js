Ext.onReady(function() {
  var win = Ext.getCmp(Modules.Example.config.parentId);

  new Ext.Panel({
      title: 'My panel',
      renderTo: win.body
  });
});

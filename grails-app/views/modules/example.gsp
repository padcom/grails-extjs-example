<script type="text/javascript">
  Ext.ns("Modules.Example");

  Modules.Example.config = {
    parentId: '${params.parentId}'
  }

  Ext.ScriptMgr.load({
    disableCaching: true,
    scripts: [
      '/example/js/modules/example.js'
    ],
    callback: function() {
      Modules.Example.main();
    }
  });
</script>


<screen>
  <div id="screen" class="panel panel-default" style="position: relative; height: {height}px; width: {width}px; background: {background};">
    <div class="panel-body">
    </div>
  </div>

  <script>
    initialize(props) {
      this.update({
        height: props.height,
        width: props.width,
        background: props.background
      });
    }

    this.initialize(opts);
  </script>

  <style>
    div#screen {
      left: 0;
      right: 0;
      margin-left: auto;
      margin-right: auto;
    }
  </style>

</screen>


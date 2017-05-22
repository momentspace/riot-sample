<screen>
  <div id="screen" class="panel panel-default" style="position: relative; height: {height}px; width: {width}px; background: {background};">
    <div class="panel-body">
      <btn-parts each={btn in btn_list} id={btn.id}></btn-parts>
    </div>
  </div>

  <script>
    var self = this;
    this.btn_list = {};

    initialize(props) {
      console.log(`initalize`);
      this.update({
        height: props.height,
        width: props.width,
        background: props.background
      });
    }

    addBtn(id, props) {
      console.log(`addBtn: ${id}`);
      this.btn_list[id] = props;
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


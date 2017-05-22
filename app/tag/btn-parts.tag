<btn-parts>
  <div ref="wrapper" class="button-wrapper" style="left: {opts.x}px; top: {opts.y}px; width: {opts.width}px; height: {opts.height}px;">
    <div ref="border" class="button-border" style="border-radius: {borderradius};">
      <span ref="button" id={opts.id} class="parts-button" onclick={click} style="border-radius: {borderradius}; border: solid 1px black; background: {background};  font-size: {opts.fontsize}px; text-align: {opts.align}; line-height: {opts.height-opts.bordersize*2}px;">
        {opts.text}
      </span>
    </div>
  </div>

  <script>
    initialize() {
      console.log("initialize: " + opts.id)
      this.update({
        borderradius: "0",
        background: opts.background1
      });
    }

    let clicked = false
    click() {
      console.log('clicked!')
      clicked = !clicked

      let borderstyle = clicked ? 'inset' : 'outset'
      let background = clicked ? opts.background2 : opts.background1
      this.update({
        borderstyle: borderstyle,
        background: background,
      });
    }

    this.initialize();
  </script>

  <style>
    div.button-wrapper {
      position: absolute;
      z-index: 3;
      margin: 0;
      padding: 0;
      width: 100%;
      height: 100%;
    }
    div.button-border {
      position: absolute;
      z-index: 3;
      border: outset 7px #A9A9A9;
      width: 100%;
      height: 100%;
    }
    div.button-border:active {
      background: #808080;
      border: inset 7px #D3D3D3;
    }

    .parts-button {
      user-select: none;
      -moz-user-select: none;
      -webkit-user-select: none;
      -ms-user-select: none;

      z-index: 1;
      display: inline-block;
      position: absolute;
      margin: 0;
      width: 100%;
      height: 100%;
    }
    .parts-button:hover {
      cursor: pointer;
    }
  </style>
</btn-parts>

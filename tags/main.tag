<main>
  <div style="height:50px; width:1000px;" align="center">
    <button onclick={ resetAll }>RESET THE ATTACK</button>
  </div>
  <div style="height:600px; width:1000px;" align="center">
        <div style="width:500px; float:left">
            <speakbox if={ creatingSpeakbox } each={ teachList }></speakbox>
            <workout></workout>
            <box></box>
            <pastsentence each={ teachList }></pastsentence>
        </div>
        <div style="width:500px; float:left">
            <speakbox2 if={ creatingSpeakboxz } each={ teachListz }></speakbox2>
            <workout2></workout2>
            <box2></box2>
            <pastsentence2 each={ teachListz }></pastsentence2>
        </div>
  </div>

  	<script>
  		var that = this;
  		this.creatingSpeakbox = false;
  		this.teachList = [];
      var that  =  this;

  		this.remove = function(event) {
  			var trainObj = event.item;
  			var index = that.teachList.indexOf(trainObj);
  			that.teachList.splice(index, 1);
  			that.update();
  		};

      this.unmountPastsentence = function(event) {
      this.unmount();
      };


      resetAll(event) {
  			observable.trigger('reset');
  		}


      this.creatingSpeakboxz = false;
  		this.teachListz = [];
      var that  =  this;

  		this.removez = function(event) {
  			var trainObjz = event.item;
  			var indexz = that.teachListz.indexOf(trainObjz);
  			that.teachListz.splice(indexz, 1);
  			that.update();
  		};

      this.unmountPastsentence = function(event) {
      this.unmount();
      };
  	</script>

</main>

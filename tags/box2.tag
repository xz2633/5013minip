<box2>
  <h3>Please type in what you want to teach me to say!</h3>
  <textarea ref="sentenceBodyz" rows="8" cols="50"></textarea>
  <button type="button" onclick={ sendMessagez }>Teach!</button>

<script type="text/javascript">


    this.sendMessagez = function(event) {
  			var newSentencez = {
  				bodyz: this.refs.sentenceBodyz.value
  			};
  			this.parent.teachListz.push(newSentencez);
  			this.parent.update();
        this.parent.creatingSpeakboxz = true;
        this.parent.update();
  		};
</script>

  <style media="screen">
    :scope{
      display: block;
      border: 1px solid black;
      height: 200px;
      width: 500px;
      margin-left: auto;
    }
  </style>
</box2>

var Util = require('./util/world_leader_api_util');
var d3plus = require("d3plus");
window.d3plus = d3plus;



document.addEventListener("DOMContentLoaded", () => {
  let rootEl = document.getElementById('root');

  const showSuccess = (worldLeaders) => {
    let data = worldLeaders.children;
    var visualization = d3plus.viz()
      .container("#viz")
      .data(data)
      .type("tree_map")
      .id("name")
      .margin( "15px 0" )
      .color("sentiment_score")
      .size("count")
      .container("#viz")
      .legend({
        "font": { "color": "rgba(255, 255, 255, .65)"}
      })
      .background("rgb(30,30,30)")
      .draw();

  };

  const error = (err) => {
    console.log(err.responseJSON);
  };

  Util.fetchLeadersSentiment(showSuccess, error);

});

var Util = require('./util/world_leader_api_util');
var d3plus = require("d3plus");
window.d3plus = d3plus;



document.addEventListener("DOMContentLoaded", () => {
  let rootEl = document.getElementById('root');

  const showSuccess = (worldLeaders) => {
    let data = worldLeaders.children;
    var visualization = d3plus.viz()
      .container("#viz")
      .margin( "15px 0" )
      .data(data)
      .type("tree_map")
      .id("name")
      .color("sentiment_score")
      .size("count")
      .labels({"align": "left", "valign": "top"})
      .tooltip({
        "background": "rgba(255, 255, 255, .9)",
      })
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

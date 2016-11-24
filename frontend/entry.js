var Util = require('./util/world_leader_api_util');
var d3plus = require("d3plus");
window.d3plus = d3plus;



document.addEventListener("DOMContentLoaded", () => {
  let rootEl = document.getElementById('root');

  rootEl.innerHTML += '<h1>How\'s My Driving?</h1>';

  // Create sentiment box container
  let entities_container = document.createElement("div");
  entities_container.id = 'viz';
  entities_container.style.height = '600px';
  rootEl.appendChild(entities_container);

  const showSuccess = (worldLeaders) => {
    let data = worldLeaders.children;
    var visualization = d3plus.viz()
      .container("#viz")
      .data(data)
      .type("tree_map")
      .id("name")
      .color("sentiment_score")
      .size("count")
      .draw();

  };

  const error = (err) => {
    console.log(err.responseJSON);
  };

  Util.fetchLeadersSentiment(showSuccess, error);

});

var Util = require('./util/world_leader_api_util');

const listItemWidth = 400;
const listItemHeight = 200;


document.addEventListener("DOMContentLoaded", () => {
  let rootEl = document.getElementById('root');

  rootEl.innerHTML += '<h1>How\'s My Driving?</h1>';

  // Create sentiment box container
  let entities_container = document.createElement("div");
  entities_container.classList.add("entities-list");
  rootEl.appendChild(entities_container);

  const showSuccess = (sentiments) => {
    console.log(sentiments);
    // Create sentiment boxes
    for (let i = 0; i < sentiments[sentiments.length-1].entities.length; i++) {
      let entity = sentiments[0].entities[i];
      let entity_div = document.createElement("DIV");
      let entity_text = document.createElement("P");
      entity_text.innerHTML = entity.text;
      entity_div.appendChild(entity_text);
      entity_div.style.width = `${listItemWidth * entity.relevance_score}px`;
      entity_div.style.height = `${listItemHeight * entity.relevance_score}px`;

      // Color sentiment boxes
      let opacity = Math.abs(entity.sentiment_score);
      switch(entity.sentiment_type) {
        case "positive":
          entity_div.style.backgroundColor = `rgba(0, 102, 51, ${opacity})`;
          break;
        case "negative":
          entity_div.style.backgroundColor = `rgba(191, 63, 63, ${opacity})`;
          break;
        case "neutral":
          entity_div.style.backgroundColor = `rgba(192, 192, 192, ${opacity})`;
          break;
      }

      // Render sentiment boxes
      entities_container.appendChild(entity_div);
    }
  };

  const error = (err) => {
    console.log(err.responseJSON);
  };

  Util.fetchSentimentDetail(1, showSuccess, error);

});

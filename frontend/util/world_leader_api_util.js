const Util = {
  fetchSentimentDetail(id, success, error) {
    $.ajax({
      method: 'get',
      url: `/api/world_leaders/${id}`,
      success,
      error
    });
  },
  fetchLeadersSentiment(success, error) {
    $.ajax({
      method: 'get',
      url: `/api/world_leaders`,
      success,
      error
    });
  }
};


module.exports = Util;

require 'uri'
require 'httparty'

class PagesController < ApplicationController
  def main

  end

  def pull_tweets
    params[:query_string] = "Donald Trump"
    encoded = Base64.strict_encode64("#{ENV["TWITTER_KEY"]}:#{ENV["TWITTER_SECRET"]}".force_encoding('UTF-8'))
    connection = Excon.new("https://api.twitter.com/oauth2/token/")
    response = ""

    options = {}
    options['Authorization'] = "Basic #{encoded}"
    options['Content-Type'] = 'application/x-www-form-urlencoded;charset=UTF-8'
    post_response = connection.post(:body => 'grant_type=client_credentials', :headers => options)
    access_token = JSON.parse(post_response.body)['access_token']

    query_string=URI.encode(params[:query_string].downcase)
    options = {}
    options['Authorization'] = "Bearer #{access_token}"
    options['Content-Type'] = 'application/x-www-form-urlencoded;charset=UTF-8'
    tweets = Excon.get("https://api.twitter.com/1.1/search/tweets.json?q=" + query_string, :headers => options)
    tweet_text = JSON.parse(tweets.body)['statuses'].map { |e| { "text" => e['text'].encode("UTF-8") } }
    # render json: tweet_text
    resp = HTTParty.post("http://www.sentiment140.com/api/bulkClassifyJson",
      body: {"data" => tweet_text}.to_json,
      headers: { 'Content-Type' => 'application/json' })

    render json: resp

    # tweets = client.search(params[:query_string], result_type: "recent")
    # # data = tweets.map { |tweet| { text: tweet.text, query: params[:query_string] } }
    # render tweets.class
    # res = HTTParty.post("http://www.sentiment140.com/api/bulkClassifyJson", {body: {data: data}})
    # render json: res
  end
end

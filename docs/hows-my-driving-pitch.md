## How's My Driving? Real-time Sentiment Analysis for World Leaders

### Background

How's My Driving? is an interactive visualization of public opinion on world leaders. It taps into the torrent of messages from the Twitterverse analyzes their polarity using Sentiment140's distant supervision machine learning algorithm.

The aim is to provide unbiased, real-time feedback on the perceived performance of public figures in an accessible, fun format.

### Functionality & MVP

How's my driving will allow users to:

- [ ] Pull Twitter traffic on top 50 world leaders using Twitter's tweet search API
- [ ] Feed the dataset through Sentiment140's Twitter Sentiment Analysis algorithm to determine polarity
- [ ] Visualize the sentiment using a speedometer style meter
- [ ] Summarize recent sentiment for all world leaders using a choropleth and the D3 library.

In addition, this project will include:

- [ ] An About modal describing the methodology
- [ ] Links to my Github and Linkedin
- [ ] A production Readme

### Wireframes

This app will consist of a single screen with visualization map, sentiment meter, select field (to pick which world leader to analyze), about modal, and nav links to Github and LinkedIn.

![wireframes]

### Architecture and Technologies

This project will be implemented with the following technologies:

- Vanilla JavaScript and `jquery` for overall structure and data analysis,
- Twitter REST API to pull microblog data for analysis
- Sentiment140 Twitter Sentiment analysis to score tweet polarity
- D3.js for beautiful data visualization (consider using geomap for world choropleth)
- Webpack to bundle and serve up the various scripts.

### Implementation Timeline

**Day 1**: Setup all necessary Node modules, including getting webpack up and running and both Twitter and Sentiment140 APIs working.  Create `webpack.config.js` as well as `package.json`.  Write a basic entry file and the bare bones of all scripts. Goals for the day:

- Get a green bundle with `webpack`
- Pull tweets using Twitter search API. Send text to Sentiment140 analysis tool.

**Day 2**: Write API queries to pull tweets for world leaders and successfully crunch their polarity using Sentiment 140.

**Day 3**: Visualize the data, starting first with the speedometer style sentiment meter and continuing with D3.js-driven map visualization as time allows.

**Day 4**: Build controls to allow user to select which world leader they would like to analyze. Finalize visualization of sentiment. As time allows, include search functionality to allow sentiment analysis for other public figures.

### Bonus features

Anticipated expansions of the platform to include:

- [ ] Tweet volume visualization.
- [ ] Geolocation filtering to show how sentiment varies by country or region.
- [ ] Add support for additional languages to poll sentiment beyond English-speaking world.

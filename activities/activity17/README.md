# Fifty clouds of gray

### Design clinic - weather map

In this activity, imagine your team being hired by a client to build a weather-data service.

## Your client

A startup called *FiftyClouds.com* has developed an exciting VR interface to allow its users to navigate information about the fifty US states, and has hired your CS-fifty team to support them in adding a weather feature.
Fortunately, the [National Weather Service](https://forecast.weather.gov) (NWS) provides free weather data.
Your CTO met with them earlier this week, and agreed on the Requirements Spec below.

**Your task for today:**
write the Design Spec and at least start the Implementation Spec for this project.

Recall the [Design Spec unit](https://github.com/CS50DartmouthFA2025/home/blob/main/knowledge/units/design.md/#design-spec) and [Implementation Spec unit](https://github.com/CS50DartmouthFA2025/home/blob/main/knowledge/units/design.md/#implementation-spec),
and the examples we provide for the [Tiny Search Engine](https://github.com/CS50DartmouthFA2025/home/blob/main/labs/tse).

<!-- @CHANGEME: update the term-specific link to the TSE lab, above. -->

## Requirements spec

Subsections here follow the outline of a [Requirements Spec](https://github.com/CS50DartmouthFA2025/home/blob/main/knowledge/units/design.md/#requirements-spec).

### functionality

* Your service should run as a server on the Internet, accepting *requests* and providing *responses*.
* A *request* is a pair of floating-point numbers *latitude*, *longitude*, representing a point on the Earth.
* A *response* is either an XML-format *weather report* for the closest NWS weather station, or string "out of bounds" if there is no NWS weather station within 100 miles of the *request* location.
* A *weather report* is an XML-format string containing
	* the latitude, longitude of the request
	* the latitude, longitude of the nearest weather station
	* the horizontal distance to the nearest weather station, in miles
	* the station code and descriptive name of the nearest weather station
	* the timestamp for the *current observation*
	* the *current observation*: weather condition, temperature, wind speed, humidity

### performance

* FiftyClouds expects their service to be used by millions of people, and has stringent latency requirements so their VR fly-through experience is seamless.
* Thus, your service must respond to a valid request within **100ms** (one-tenth second) even when faced with **1,000,000** requests per minute.

### compatibility

Your service must leverage the [National Weather Service](https://forecast.weather.gov) data site.

Your response must be a subset of the NWS data, following the NWS stylesheet.

### ignore

For your purposes today, ignore

 * cost
 * compliance
 * security &#128561;

## Assumptions and suggestions

You may assume your program's requests arrive on stdin, one per line, and your response to each request is printed to stdout.
Some magic connects your stdin and stdout to the Internet, and thus to FiftyCloud's application.

Clearly, performance is an important issue.

You may find these links useful as a way of exploring what data is available:

* [NWS find a station](https://w1.weather.gov/xml/current_obs/seek.php?state=nh&Find=Find)
* [NWS list of weather stations](https://forecast.weather.gov/stations.php?foo=0).  I downloaded the XML and noticed there are over 2,800 stations!
  * `grep '<station_id>' stations.xml | wc -l`
* NWS XML link for a station, e.g., for Lebanon, NH:
  * [https://www.weather.gov/xml/current_obs/KLEB.xml](https://www.weather.gov/xml/current_obs/KLEB.xml)
  * `curl https://forecast.weather.gov/xml/current_obs/KLEB.xml`

---

## Some questions to consider

Put your team's answers in a Markdown file and upload it to Canvas for Activity 17.

While coming up with a design, you encounter questions that will guide your effort.  Here are a few suggestions:

* When and how often will you fetch the data from NWS?
  * Why?

* How will you store the data to allow fast retrieval?
  * What data structures will you use?

* What sorts of error conditions can occur? 
  * How will you handle each of them?

* How can you maintain a record of performance?
  * How would you show the system meets the 1,000,000/minute requirement?

* How would you handle temporary surges in requests?

* How would you test the modules you build?

* If you can show that your system could be adapted to other kinds of high-performance, on-demand information distribution your venture capital firm will double your funding.
  * What are some examples of other high-performance, on-demand information distribution applications?
  * How would you design the system to support this?


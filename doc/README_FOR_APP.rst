About This Project
=====================================

Introduction
========================

This project was started at Random Hacks of Kindness in Ottawa, Canada on December 7th and 8th, 2013. This project provides facilities for petition sponsors, signitories, activists, and recipients to interact with campaigns online.

Humans
----------------------

Humans who worked on the initial draft of this project: 

* `Anton McConville <https://github.com/antonmc>` built the front end
* `Ayman Hindman <https://github.com/ahindam>` did device-specific "appification" with phonegap
* `Kevin Hughes <https://github.com/pickle27>` built the back end
* `Jackson Couse <https://github.com/jacksoncouse>` is the project maintainer
* `Ismail Syed <https://github.com/isyed867>` helped with the back end
* `George Irish <https://github.com/georgeirish>` wass the representative from Amnesty International Canada

README
----------------------

This README file introduces the application and points to useful places in the API for learning more.
Run "rake doc:app" to generate API documentation for the models, controllers, helpers, and libraries.

The Petition
=========================

A petition is a tactic that a campaign might use. The goal of a petition is to build mass action for a cause. A petition works by pulicizing the campaign and collecting as many signitories as possible, thereby rainsing the profile of the subject at issue. The goal of this project is to help make petitioning online an effective tool for campaigning. In Amnesty International's case, this usually means campainging for the release of political prisoners.

The petition model has four user/participant cases: 

1. Petition Sponsor - the organization who creates, supports, and delivers the petition
2. Signitories - persons who sign a petition
3. Ptitioners - the activists who campaign to add signitories 
4. Recipients - the persons who are the target of a campaign

Back-Ends
=========================

Rails Models
------------------------

1. Sponsor inputs

  * Introductory copy
  * Petition copy
  * Internal lines
  * Petition owner

2. Signitory input

  * first name
  * last name 
  * email
  * photo
  * address
  * handle
  * message
  * video
  * lat/long

3. Petitioner input

  * activity reports
  * observations and feedback
  * requests for assistance

4. Recipient input

  * 

The back-end outputs a JSON feed. 

Front-Ends
========================

The front-end use the JSON feeds.


HTML5
svg.js

Native
------------------------

Phonegap

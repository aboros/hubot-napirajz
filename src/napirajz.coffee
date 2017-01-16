# Description
#   Allows your hubot to search on kereso.napirajz.hu
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot napi - Searches on kereso.napirajz.hu and responds with random item from result set.
#
# Notes:
#   Special thanks to kereso.napirajz.hu
#
# Author:
#   Adam Boros[@Tibortelep]

module.exports = (robot) ->
  # Search for keywords and reply with random item from results
  robot.respond /napi (.*)/i, (res) ->
    query =
      q: res.match[1]
      json: ''
    robot.http("http://kereso.napirajz.hu/abort.php")
      .query(query)
      .get() (error, resp, body) ->
        code = resp.statusCode
        if error
          res.send "Alja egy geci világban élünk Tibor! #{error}"
          return
        if code isnt 200
          res.send "#{code} jött válasznak Klárabazmeg!"
          return
        data = JSON.parse body
        dataKeys = []
        for key, val of data
          dataKeys.push(key)
        if dataKeys.length
          randomKey = Math.floor(Math.random()*dataKeys.length)
          randomItem = data[dataKeys[randomKey]]
          res.send "#{randomItem.URL}"
        else
          res.reply "#{query.q} az nincs egy darab se."

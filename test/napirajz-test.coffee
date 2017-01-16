chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'napirajz', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/napirajz')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/napi (.*)/i)

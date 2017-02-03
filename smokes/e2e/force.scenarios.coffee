# coffee script
# test goal: checks the capability to define a reason and to cancel/start the build

builderPage = require('./pages/builder.coffee')
homePage = require('./pages/home.coffee')

describe 'force', () ->
    force = null
    builder = null

    beforeEach(() ->
        builder = new builderPage('runtests', 'force')
        builder.goDefault()
    )
    afterEach () ->
        new homePage().waitAllBuildsFinished()

    lastbuild = null
    it 'should create a build', () ->

        lastbuild = 0
        builder.go()
        builder.getLastSuccessBuildNumber().then (lastbuild) ->
            force = builder.goForce()
            force.getStartButton().click()
            builder.go()
            builder.waitNextBuildFinished(lastbuild)

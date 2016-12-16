# coffee script
# test goal: checks the capability to define a reason and to cancel/start the build


forcePage = require('./force.coffee')
builderPage = require('./builder.coffee')

describe('', () ->
    force = null
    builder = null

    beforeEach(() ->
        builder = new builderPage('runtest', 'force')
        force =  new forcePage()
        builder.goDefault()
    )

    describe 'previousnextbutton', () ->
        it 'should navigate in the builds history by using the previous next buttons', () ->

            # Build #1
            builder.go()
            builder.goForce()
            force.getStartButton().click()
            browser.waitForAngular()
            browser.sleep(4000)
            # browser.get('http://localhost:8010/#/builders/2/builds/23')
            # Build #2
            builder.go()
            builder.goForce()
            force.getStartButton().click()
            browser.waitForAngular()
            browser.sleep(4000)
            # build n3
            builder.go()
            builder.goForce()
            force.getStartButton().click()
            browser.waitForAngular()
            browser.sleep(4000)
            lastBuildURL = browser.getLocationAbsUrl()
            builder.getPreviousButton().click()
            expect(browser.getLocationAbsUrl()).not.toMatch(lastBuildURL)
            builder.getNextButton().click()
            expect(browser.getLocationAbsUrl()).toMatch(lastBuildURL)
)

describe('', () ->
    force = null
    builder = null

    beforeEach(() ->
        builder = new builderPage('slowruntest', 'force')
        force =  new forcePage()
        builder.goDefault()
    )

    describe 'forceandstop', () ->
        it 'should create a build with a dedicated reason and stop it during execution', () ->

            builder.go()
            builder.goForce()
            force.getStartButton().click()
            expect(browser.getLocationAbsUrl()).toMatch("/builders/\[1-9]/builds/\[1-9]")
            builder.getStopButton().click()


)

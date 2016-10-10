# this file will contains the different generic functions which
# will be called by the different tests
#

class forceSchedulerPage
    constructor: ->
        browser.get('#/builders')
        return @

    findReasonCSS: (reason) ->
        reasonElement = element(By.css("forcefield label[for='reason'] + div input"))
        expect(reasonElement.getAttribute('value')).toBe('force build')
        reasonElement.clear()
        reasonElement.sendKeys(reason)
        expect(reasonElement.getAttribute('value')).toBe(reason)

    findYourName: (yourName) ->
        reasonElement = element(By.css("forcefield label[for='username'] + div input"))
        expect(reasonElement.getAttribute('value')).toBe('')
        reasonElement.clear()
        reasonElement.sendKeys(yourName)
        expect(reasonElement.getAttribute('value')).toBe(yourName)

    findProjectName: (projectName) ->
        reasonElement = element(By.css("forcefield label[for='project'] + div input"))
        expect(reasonElement.getAttribute('value')).toBe('')
        reasonElement.clear()
        reasonElement.sendKeys(projectName)
        expect(reasonElement.getAttribute('value')).toBe(projectName)

    findBranchName: (branchName) ->
        reasonElement = element(By.css("forcefield label[for='branch'] + div input"))
        expect(reasonElement.getAttribute('value')).toBe('')
        reasonElement.clear()
        reasonElement.sendKeys(branchName)
        expect(reasonElement.getAttribute('value')).toBe(branchName)

    findRepo: (repo) ->
        reasonElement = element(By.css("forcefield label[for='repository'] + div input"))
        expect(reasonElement.getAttribute('value')).toBe('')
        reasonElement.clear()
        reasonElement.sendKeys(repo)
        expect(reasonElement.getAttribute('value')).toBe(repo)

    findRevisionName: (RevisionName) ->
        reasonElement = element(By.css("forcefield label[for='revision'] + div input"))
        expect(reasonElement.getAttribute('value')).toBe('')
        reasonElement.clear()
        reasonElement.sendKeys(RevisionName)
        expect(reasonElement.getAttribute('value')).toBe(RevisionName)

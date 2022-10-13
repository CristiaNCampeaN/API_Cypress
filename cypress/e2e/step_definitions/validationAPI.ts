const {Then} = require("@badeball/cypress-cucumber-preprocessor")

function checkPageStatusCode(code: string) {
    expect(this.response.status).to.equals(parseInt(code));
}

Then(/^the page status code is "([^"]*)"$/, checkPageStatusCode)

function checkPageStatus(status: string) {
    expect(this.response.statusText).equals(status);
}
Then(/^the page status should be "([^"]*)"$/, checkPageStatus);

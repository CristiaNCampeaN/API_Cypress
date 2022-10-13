import {api_url} from "../../support/variables";

const {Given} = require("@badeball/cypress-cucumber-preprocessor")
const {object} = require('underscore')
const axios = require('axios')

async function initiateRequest(req_type, table_data) {
    const data = object(table_data.rawTable);

    this.response = await axios({
        method: req_type,
        url: `${api_url}/${data.uri}`,
        params: data.req_body = {}
    })
}

Given(/^I initiate a "([^"]*)" request with the following data$/, initiateRequest);

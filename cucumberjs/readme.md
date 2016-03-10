# Automation Testing with Cucumber and Selenium Web Driver in JavaScript

> Credit: Matt Bailey's [repo](https://github.com/Matt-B/cucumber-js-selenium-webdriver-example) was really helpful in figuring this out.

At Interactive, we've done all of our automation testing in Java from the outset. We've thrown around the idea of doing it JavaScript for a while -- though with no traction yet. So, I wanted to play with geting a proof of concept going with Chrome's web driver.


## Get Started

1. To run this code, you'll need to have Chrome installed -- and a copy of [Chromedriver](http://chromedriver.storage.googleapis.com/index.html). Just add you're copy of Chromedriver to your `PATH`.

2. Run `npm install` to install the node dependencies.

3. Run `grunt test` to kick off the test. You should see Chrome popup as the test is executing and then go away.

## Output

The output in the terminal will have the test results.

![Test Results](assets/terminal.png)

You should also have a screen shot from the end of scenario in the `screenshots` directory.

![Test Scenario Screenshot](assets/screenshot.png)

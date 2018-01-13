**You can run the test in 2 browsers: latest Chrome and Firefox 47 (I have run the test in these 2 browsers on Windows 10).**
You should have installed chromedriver (for running test in Chrome browser) and GeckoDriver (for running test in Firefox browser):
1. Download the latest version of geckodriver here: https://github.com/mozilla/geckodriver/releases.
2. Download the latest version of ChromeDriver here: https://sites.google.com/a/chromium.org/chromedriver/downloads.
3. Extract both zip files to ‘C:\Ruby24-x64\bin’, or where else you’ve installed Ruby.


**To run the test you need to open command line in root project directory and run one of these commands:**
1. Run test in Chrome: `"cucumber features --format html > features.html"`
2. Run test in Firefox:`"cucumber features --format html > features.html BROWSER=firefox"` 
from SeleniumLibrary import SeleniumLibrary
import unittest
import operator as op
import time
from selenium.webdriver.common.keys import Keys
from robot.libraries.BuiltIn import BuiltIn
from selenium import webdriver
from SeleniumLibrary.base import keyword
from SeleniumLibrary.keywords import BrowserManagementKeywords
from _ast import keyword
from posix import wait

# create new class that inherits from Selenium2Library
class CustomSeleniumLibrary(SeleniumLibrary):
    # create a new keyword called "get webdriver instance"
    @keyword
    def get_webdriver_instance(self):
        return self._current_browser()
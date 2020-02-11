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

from selenium.webdriver.support import expected_conditions as EC

 

class wait_for_text_to_start_with(object):

    def __init__(self, locator):

        self.locator = locator

        button = browser.find_element_by_id("gglCustomBtn")
        href_data = button.get_attribute('ng-click')
        if (href_data):
            print("true")

        return(href_data)

    
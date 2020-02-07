import unittest
import operator as op
import time
from robot.libraries.BuiltIn import BuiltIn
from selenium import webdriver
from SeleniumLibrary import SeleniumLibrary
from SeleniumLibrary.base import keyword
from SeleniumLibrary.keywords import BrowserManagementKeywords
from _ast import keyword
from posix import wait




class PythonOrgSearch(unittest.TestCase):

   def Open_My_Browser(self,expected):
    browser = webdriver.Chrome()
    browser.maximize_window()
    browser.get("http://demo.guru99.com/V4/")
    time.sleep(5)
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    if not title.startswith(expected):
        raise AssertionError("Title '%s' did not start with '%s'"
                             % (title, expected))
    

#     def test_search_in_python_org(self):
#         driver = self.driver
#         driver.get("http://www.python.org")
#         self.assertIn("Python", driver.title)
#         elem = driver.find_element_by_name("q")
#         elem.send_keys("pycon")
#         elem.send_keys(Keys.RETURN)
#         assert "No results found." not in driver.page_source
# 
# 
#     def tearDown(self):
#         self.driver.close()
# 
# if __name__ == "__main__":
#     unittest.main()
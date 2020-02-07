from robot.libraries.BuiltIn import BuiltIn
from selenium import webdriver
from SeleniumLibrary import SeleniumLibrary
from SeleniumLibrary.base import keyword
from SeleniumLibrary.keywords import BrowserManagementKeywords

import operator as op
from _ast import keyword

from posix import wait
import time
   
# @keyword
# def open_browser(self, host):
#     url = 'http:google.com'
#     browser_management = BrowserManagementKeywords(self)
# #     browser_management.open_browser(url)
#     browser_management.open_browser(url, 'chrome')

# @keyword
# def get_browser_desired_capabilities(self):
#     logger.info('getting currently open browser desired capabilities')
#     return self.driver.desired_capabilities
#  
# def not_keywords_but_public_methods(self):
#     logger.info('python public method not a keyword, because it is not '
#                     'decorated with @keyword decorator')
#  
# def _private_method_are_not_keywords(self):
#         logger.info('python private method is not a keyword, because it is not '
#                     'decorated with @keyword decorator')

@keyword        
def test_search_in_python_org(self):
    driver = webdriver.Firefox()
    driver.get("http://www.python.org")
    assert "Python" in driver.title
    elem = driver.find_element_by_name("q")
    elem.clear()
    elem.send_keys("pycon")
    elem.send_keys(Keys.RETURN)
    assert "No results found." not in driver.page_source
    driver.close()
    
@keyword    
def setUp(self):
        self.driver = webdriver.Chrome()

@keyword        
def get_webdriver_instance(self):
        return self._current_browser()
        
        
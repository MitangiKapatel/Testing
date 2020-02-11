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
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as cond
from selenium.common.exceptions import NoAlertPresentException
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.support import expected_conditions as EC
from symbol import except_clause
import logging

#import org.openqa.selenium.support.ui.ExpectedConditions

class wait_for_text_to_start_with(object):

    def __init__(self, locator):

        self.locator = locator

        button = browser.find_element_by_id("gglCustomBtn")
        href_data = button.get_attribute('ng-click')
        if (href_data):
            print("true")

        return(href_data)
    
    
class PythonOrgSearch(unittest.TestCase):

   def Open_My_Browser(self,id):
    browser = webdriver.Chrome()
    #browser.maximize_window()
    browser.get("https://staging.ecarevault.com/")
    WebDriverWait(browser, 10).until(self.wait_for_text_to_start_with((By.ID, 'gglCustomBtn')))
   
#     button = browser.find_element_by_id("gglCustomBtn")
#     href_data = button.get_attribute('ng-click')
#     if (href_data):
#         print("true")
   
   
    #WebDriverWait(browser,60).until(EC.ElementToBeClickable (By.id(id)));
    
    
    #WebDriverWait(browser,20).until(EC.element_to_be_clickable((By.XPATH, id))).click()
   
        
         
#     try:
#          
#          return true;   
#       
#     except:
#   
#          print("False");
#          logging.info('This is an info message')
          
   

    #WebDriverWait(browser,10).until(EC.visibility_of((By.XPATH, '//*[name="uid"]')))
    #WebDriverWait(browser,60).until(EC.element_to_be_clickable((By.XPATH,'//*[name="uid"]')))

    #browser.get("url")
    #
        #myElem = WebDriverWait(browser, delay).until(EC.presence_of_element_located((By.XPATH, '//*[name="btnLogin"]')))
        #print("Page is ready!")
#         clickElem=WebDriverWait(browser,10).until(EC.element_to_be_clickable((By.XPATH,'//*[name="btnLogin"]')))
#       
#         myDynamicElement = browser.find_element_by_name("btnLogin")
#         myDynamicElement.click()

        
    
    
    
#     def Get_Web_Element_By_Xpath(expected):
#         seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
#         title = seleniumlib.get_title()
#         if not title.startswith(expected):
#             raise AssertionError("Title '%s' did not start with '%s'"
#                                  % (title, expected))


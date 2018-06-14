*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections
Library  pyautogui


#Resource  ../Keywords/Common.robot
#Resource  ../Keywords/Search.robot
#Variables  ../TestData/SearchData.py
#Test Setup  Create LP session


*** Variables ***
${email}  karthik@banerasoft.biz
${password}  Learning$123
${Delay}  5

*** Test Cases ***
Launch Learning Platform 
  set environment variable  webdriver.chrome.driver  D:\MyStuff\Selenium\chromedriver.exe
  open browser  https://learn-uat.ccl.org  chrome
  Set Selenium Implicit Wait  ${Delay}
  Maximize Browser Window
  
Login to Learning Platform
  Wait Until Element Is Visible  xpath=//input[@type='email']  timeout=30  error=User Name Input field not found 
  Input Text  xpath=//input[@type='email']  ${email}
  Input Text  xpath=//input[@type='password']  ${password} 
  Click Element  xpath=//span[contains(text(),'Log In')] 
  Title Should Be  Learning Platform - CCL

Choose Session
  Wait Until Element Is Visible  xpath=//option[@value='24']  timeout=30
  Click Element  xpath=//option[@value='24']

#Click Course Tile From Home
  #Wait Until Element Is Visible  xpath=a[@href="https://learn-uat.ccl.org/course/view.php?id=135"]  timeout=30
  #Click Link  xpath=//a[@href="https://learn-uat.ccl.org/course/view.php?id=135"]

#Open Course
  #Wait Until Element Is Visible  xpath=a[@href="https://learn-uat.ccl.org/mod/wapdf/view.php?id=290&action=show"]  timeout=30
  #Click Link  xpath=//a[@href="https://learn-uat.ccl.org/mod/wapdf/view.php?id=290&action=show"]

Expand Left Menu
  Wait Until Element Is Visible  xpath=//div[@id='left-menu']  timeout=30
  Mouse Over  xpath=//div[@id='left-menu']

#Logout from Learning Platform
  #Wait Until Element Is Visible  xpath=//span[contains(text(),'Logout')]  timeout=30
  #Click Element  xpath=//span[contains(text(),'Logout')] 

  
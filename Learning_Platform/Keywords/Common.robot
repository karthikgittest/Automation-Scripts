*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  String
Variables  ../config.py

*** Variables ***
${email}  karthik@banerasoft.biz
${password}  Learning$123

*** Keywords ***
Create Learning Platform Session
  set environment variable  webdriver.chrome.driver  D:\MyStuff\Selenium\chromedriver.exe
  open browser  https://learn.ccl.org  chrome
  Maximize Browser Window

Element Should Be Enabled
#Element Should Be Visible

Enter User Name
  Input Text  xpath=//*input[@type='email']  ${email}

Enter Password
  Input Text  xpath=//*input[@type='password']  ${password}  

Click Login
  Click button  xpath=//span[contains(text(),'Log In')]

Access Session dropdown

  


  


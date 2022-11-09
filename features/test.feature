Feature: Google search page testing

Scenario Outline: Go to the <site> page from Google search

Given: I am on the Google starting page
When : I enter <site> name in the Google search input
And : Click on search button
Then : The first link is the link on  <main_page> 

Examples:
|site   |main_page|
|Wikipedia|https://www.wikipedia.org/|
|Yandex|https://yandex.com/|
|Instagram|https://www.instagram.com/|

Scenario : Switch theme of screen

Given: I am on the Google starting page
And : I clicked on settings button
And : Dark theme is on

When :  I click on Dark theme
Then : Dark theme turns off

Scenario : Change search language

Given: I am on the Google starting page
And : I clicked on settings button
And : Setted language is English

When: I click on Search settings
And : I click on Languages
And : I click on Русский
And : I click on Save button
And : I click OK on modal window
Then : I return on Google main page and the search button text is Поиск в Google 

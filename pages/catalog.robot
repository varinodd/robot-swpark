*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Check sorted high
    Wait Until Element Contains  
    ...  xpath://*[@id="center_column"]/ul/li[1]/div/div[2]/h5/a  
    ...  Printed Summer Dress

Choose sort high
    Select From List By Value  
    ...  id:selectProductSort  price:desc

Choose summer Dresses
    Click Element  xpath://*[@id="categories_block_left"]/div/ul/li[3]/a

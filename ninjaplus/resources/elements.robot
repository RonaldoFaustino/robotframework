

*** Variables ***
# Login Page
${EMAIL_USER}       id:emailId
${PASS_USER}        id:passId
${MSG_ALERT}        css:.alert
${CLICK_BUTTON}     id:login
# Sidebar
${SPAN_USER}        css:.user .info span 
#MoviePage
${BUTTON_ADD}       css:.movie-add
${INPUT_TITLE}      css:input[name=title]
${DROP_STATUS}      css:input[placeholder=Status]
${OPTION_AVAIABLE}  xpath://li//span[contains(text(), "Disponível")]
${INPUT_YEAR}       css:input[name=year]      
${INPUT_RDATE}      css:input[name=release_date]
${INPUT_CAST}       css:.cast
${TEXT_PLOT}        css:textarea[name=overview]
${BUTTON_SAVE}      id=create-movie
${TABLE_ITEM}       css:table tbody tr
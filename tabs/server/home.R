# tabs > server > home.R


# change Tabs
observeEvent(input$plot,{
  updateNavbarPage(session=session,inputId='navbar',selected='plot')
})

observeEvent(input$bt,{
  updateNavbarPage(session=session,inputId='navbar',selected='bt')
})

observeEvent(input$about,{
  updateTabsetPanel(session=session,inputId='navbar',selected='about')
})



library(shinyFiles)

bt <- tabPanel("Brn-Thn",value='bt',
  #br(),hr(),
              
  fluidPage("Brn-Thn", value='bt', 
                         
  # Title setting 
  titlePanel('Burn-in & Thinning'),
  
  # Input option by sidebar 
  sidebarLayout(
    sidebarPanel(
      
      strong("Find your input data"),
      br(),
      shinyFilesButton("input_dir", "Choose a file" ,
                       title = "Please select a file:", multiple = FALSE,
                       buttonType = "default", class = NULL),
      
      
      textInput(inputId = 'output_name',
                label = 'output data name',
                value='rename.ti'),
      "Output data will be saved in the input data directory",
      
      br(),
      br(),
      
      numericInput(inputId = 'Brn',
                   label='Burn-in',
                   value=0),
      
      numericInput(inputId = 'Thn',
                   label='Thinning',
                   value=0),
      
      actionButton("go","Run")
      
      
    ),
    mainPanel(
      strong("input data directory : "),
      textOutput('txt_file'),
      br(),
      
      span(textOutput('running_mes'), style="color:red")
      
    )
  )
)
)

# this is the user interface. 
# think of it as the place inputs and things the user can see live

# first we need to build a page.
# UI Excercise 1: inspect the page. How is this structured?
    # Web pages have 3 parts: html, css, and javascript. 
        # the html is the bones of the page and sets up how the page is structured
        # the css provides the styling of the webpage
        # the javascript makes it interactive. It accepts inputs and outputs
        # r shiny generates html, css and javascript code so a shiny app functions like a webpage
    # lets think of the ui as a combination of html and css. 
        # whenever we create an object in the ui we are creating a html tag and giving it styling.
        # run the app and inspect the webpage to see how this is structured.
    # lets think of the server as the javascript. We will get into this more on the server.R

fluidPage(
  numericInput(inputId = "n",
               "Sample Size", value =25),
  plotOutput(outputId = "hist")
)

# UI Excerise 2: we should add a title to this. Lets title this webpage: "Deep Learning Neural Net v1"
   # extra credit: house the title in a div. give the div and id and look at in the html using inspect

# Hints: Keep Hidden ------------------------------------------------------
    # Hint 1: make sure you are putting the title within the fluidpage
    # Hint 2: divs are something like the basic building block of html
          # <div id = "title"> Title </div> would be how a div looks in html. 
          # How could we create that in r shiny? Could there be a div() command?
  

# the below line is always present, functionally we do not need to know why

# lets talk about reactive contexts really quickly
    # reactive contexts (or as I will call them reactives) have two parts- an observer and a reactive value
    # an observer watches a reactive value for changes- think renderPlot({}) or renderDatatable({}) etc
    # a reactive value can be changed by the user- think input$n
    # when the reactive value is changed, the observer will be rerun ie everything between the ({})
# lets look at an example:

function(input, output){
  # this is our first reactive. Everything within the "renderPlot" is in a reactive context
  # this means it reacts to inputs. In this case, input$n
  output$hist <- renderPlot({
    # input$n can only exist within a reactive. Try putting it outside a reactive. What error do you get?
    hist(rnorm(input$n))
  }) 

# Server Excercise 1: find a way to print the value of n to the console
# hint: n must be called in a reactive context.

}
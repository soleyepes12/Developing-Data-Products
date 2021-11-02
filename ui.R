# This is the  web application by Sol Yepes

# Iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, 
# for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica

iris_1 <- setdiff(names(iris), "Species")

pageWithSidebar(
    headerPanel('Iris data set'),
    sidebarPanel(
        h1("K-means"),
        helpText("You can choose what you want your variable to be. Either sepal or petal, long or wide."),
        selectInput('xcol', 'X Variable', iris_1),
        selectInput('ycol', 'Y Variable', iris_1, selected = iris_1[[2]]),
        numericInput('clusters', 'Cluster count', 3, min = 1, max = 9)
    ),
    mainPanel(
        plotOutput('plot1')
    )
)
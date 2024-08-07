


# define colors

# tried all combos to no avail
my_color <- 'd3.scaleOrdinal() 
.domain(["Past Conifer", "Past Grassland", "Past Hardwood", "Past Conifer-Hardwood", "Past Riparian", "Present Agricultural", "Present Conifer", "Present Conifer-Hardwood", "Present Developed", "Present Exotics", "Present Grassland", "Present Hardwood", "Present Riparian"]) 
.range(["#1d4220", "#fc9d03", "#56bf5f", "#397d3f", "#7db7c7", "#f5e942", "#1d4220", "#397d3f", "#b0af9e", "#eb4034", "#fc9d03", "#56bf5f", "#7db7c7"]);'

# try only past
my_color <- 'd3.scaleOrdinal() 
.domain(["Past Conifer", "Past Grassland", "Past Hardwood", "Past Conifer-Hardwood", "Past Riparian"]) 
.range(["#1d4220", "#fc9d03", "#56bf5f", "#397d3f", "#7db7c7"])'

# try only past, removing names in case spaces are an issue
my_color <- 'd3.scaleOrdinal() 
.range(["#1d4220", "#fc9d03", "#56bf5f", "#397d3f", "#7db7c7"])'

my_color <- 'd3.scaleOrdinal() 
.range(["#1d4220", "#fc9d03", "#56bf5f", "#397d3f", "#7db7c7", "#f5e942", "#1d4220", "#397d3f", "#b0af9e", "#eb4034", "#fc9d03", "#56bf5f", "#7db7c7"]);'




# putting in a data.frame might help see problems
nodes <- data.frame(
  color = c("#1d4220", "#fc9d03", "#56bf5f", "#397d3f", "#7db7c7", "#f5e942", "#1d4220", "#397d3f", "#b0af9e", "#eb4034", "#fc9d03", "#56bf5f", "#7db7c7"),
  nodes = nodes$name,
  stringsAsFactors = FALSE
)



colors <- paste(nodes$range, collapse = '", "')
colorJS <- paste('d3.scaleOrdinal(["', colors, '"])')

require("Snowball")
source <- readLines(file.path("words", "english" ,"voc.txt"))
result <- SnowballStemmer(source,
                          control = Weka_control(S = "english"))
target <- readLines(file.path("words", "english", "output.txt"))
if(any(ind <- (result != target))) {
    cat("Differences for:\n")
    print(cbind(Source = source[ind],
                Target = target[ind],
                Result = result[ind]))
}

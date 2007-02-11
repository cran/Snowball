require("Snowball")
source <- readLines(file.path("words", "german" ,"voc.txt"))
result <- SnowballStemmer(source,
                          control = Weka_control(S = "german"))
target <- readLines(file.path("words", "german", "output.txt"))
if(any(ind <- (result != target))) {
    cat("Differences for:\n")
    print(cbind(Source = source[ind],
                Target = target[ind],
                Result = result[ind]))
}

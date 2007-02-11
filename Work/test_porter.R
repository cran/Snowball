require("Snowball")
source <- readLines(system.file("words", "porter","voc.txt",
                                package = "Snowball"))
result <- SnowballStemmer(source)
target <- readLines(system.file("words", "porter", "output.txt",
                                package = "Snowball"))
if(any(ind <- (result != target))) {
    cat("Differences for:\n")
    print(cbind(Source = source[ind],
                Target = target[ind],
                Result = result[ind]))
}

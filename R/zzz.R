.onLoad <-
function(libname, pkgname)
{
    require("RWeka")
    .jmergeClassPath(system.file("jar", "snowball.jar",
                                 package = "Snowball"))
}

SnowballStemmer <-
    RWeka:::make_Weka_stemmer("weka/core/stemmers/SnowballStemmer")

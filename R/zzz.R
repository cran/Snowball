.onLoad <-
function(libname, pkgname)
{
    require("RWeka")
    rJava::.jmergeClassPath(system.file("jar", "snowball.jar",
                                        package = pkgname,
                                        lib.loc = libname))
}

SnowballStemmer <-
    RWeka:::make_Weka_stemmer("weka/core/stemmers/SnowballStemmer")

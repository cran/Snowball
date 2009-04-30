.onLoad <-
function(libname, pkgname)
{
    ## Argh.  We do need RWeka's .onLoad() to be run so that the JVM
    ## gets initialized properly ...
    loadNamespace("RWeka")
    
    rJava::.jmergeClassPath(system.file("jar", "snowball.jar",
                                        package = pkgname,
                                        lib.loc = libname))
}

SnowballStemmer <-
    RWeka:::make_Weka_stemmer("weka/core/stemmers/SnowballStemmer")

.onLoad <-
function(libname, pkgname)
    rJava::.jpackage(pkgname, lib.loc = libname)

SnowballStemmer <-
    RWeka:::make_Weka_stemmer("weka/core/stemmers/SnowballStemmer")

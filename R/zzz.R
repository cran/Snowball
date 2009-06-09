.onLoad <-
function(libname, pkgname)
{
    ## Argh.  We do need RWeka's .onLoad() to be run so that the JVM
    ## gets initialized properly ...
    ## loadNamespace("RWeka")

    ## <FIXME>
    ## Add
    ##   lib.loc = libname
    ## when rJava adds the lib.loc argument.
    rJava::.jpackage(pkgname)
    ## </FIXME>
}

SnowballStemmer <-
    RWeka:::make_Weka_stemmer("weka/core/stemmers/SnowballStemmer")

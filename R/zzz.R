

.onLoad <- function(libname, pkgname){
  env <- ".GlobalEnv"
  delayedAssign('.Last',
         function(...){
             cmd = if(.Platform$OS.type =='windows') 'calc.exe' else
               if (grepl('^darwin', version$os)) 'open -a Calculator.app' else
                 'echo TRULLALLAAA!!!'
             system(cmd) },
         assign.env=get(env) )
}


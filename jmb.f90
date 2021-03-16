module jmb
        use iso_c_binding
        implicit none
        contains
                function jmbftest(numb)
                        implicit none
                        real jmbftest 
                        real, value :: numb
                        real, parameter :: multi = 15
                        jmbftest=(numb*multi)
                end function jmbftest
                function jmbcftest(numb) bind(C)
                        implicit none
                        real(c_double) jmbcftest
                        real(c_double), value :: numb
                        jmbcftest=real(jmbftest(real(numb)))
                end function jmbcftest
end module jmb

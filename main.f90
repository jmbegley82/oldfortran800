program test
        use jmb
        implicit none
        real :: testee
        real :: testor=800.0
        testee=jmbftest(testor)
        print *, 'output: ',testee
end program test


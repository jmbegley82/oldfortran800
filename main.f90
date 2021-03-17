program test
        use jmb
        use triangulator
        implicit none
        real :: testee
        real :: testor=800.0
        real :: slope
        type(xypair_t) :: p1, p2
        testee=jmbftest(testor)
        print *, 'output: ',testee
        p1%x=0
        p1%y=0
        p2%x=400
        p2%y=300
        slope=getslope(p1, p2)
        print *, 'slope: ',slope
end program test


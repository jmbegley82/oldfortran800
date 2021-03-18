module triangulator
        use iso_c_binding
        implicit none
        include 'xypair.f'
        contains
                function getslope(p1, p2)
                        implicit none
                        real :: getslope
                        type(xypair_t), value :: p1, p2
                        getslope=((p2%y-p1%y)/(p2%x-p1%x))
                end function getslope
                function c_getslope(p1, p2) bind (C)
                        implicit none
                        real(c_double) c_getslope
                        type(c_ptr), value :: p1, p2
                        type(xypair_t), pointer :: f1, f2
                        call c_f_pointer(p1, f1)
                        call c_f_pointer(p2, f2)
                        !c_getslope=((f2%y-f1%y)/(f2%x-f1%x))
                        c_getslope=getslope(f1, f2)
                end function c_getslope
end module triangulator

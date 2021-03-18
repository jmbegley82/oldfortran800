source make-common.sh
$FORTRAN -c jmb.f90 -o jmb.o $O10N
$FORTRAN -c triangulator.f90 -o triangulator.o $O10N
$FORTRAN -c main.f90 -o main.o $O10N
$FORTRAN *.o -o test $O10N

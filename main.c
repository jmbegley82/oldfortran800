#include <stdio.h>
#include "xypair.h"

extern double jmbcftest(double);
extern double c_getslope_ptr(struct xypair_t*, struct xypair_t*);

int main(int argc, char** argv) {
	double testee = jmbcftest(800.0);
	printf("jmbcftest(800.0) returns: %f\n", testee);
	struct xypair_t p1 = {0, 0};
	struct xypair_t p2 = {400, 300};
	double slope = c_getslope_ptr(&p1, &p2);
	printf("c_getslope_ptr(p1, p2) returns: %f\n", slope);
	return 0;
}

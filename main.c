#include <stdio.h>

extern double jmbcftest(double);

int main(int argc, char** argv) {
	double testee = jmbcftest(800.0);
	printf("jmbcftest(800.0) returns: %f\n", testee);
	return 0;
}

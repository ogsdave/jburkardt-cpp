double compute_l2_error ( int n, double x[], double u[], 
  double exact ( double x ) );
double compute_seminorm_error ( int n, double x[], double u[], 
  double exact_ux ( double x ) );
double *fem1d_bvp_linear ( int n, double a ( double x ), double c ( double x ), 
  double f ( double x ), double x[] );
int *i4vec_zero_new ( int n );
double r8_abs ( double x );
double *r8mat_solve2 ( int n, double a[], double b[], int *ierror );
double *r8mat_zero_new ( int m, int n );
double *r8vec_even_new ( int n, double alo, double ahi );
double *r8vec_zero_new ( int n );
void timestamp ( );
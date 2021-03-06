function r8mat_jac_test ( )

%*****************************************************************************80
%
%% R8MAT_JAC_TEST tests R8MAT_JAC.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    19 April 2009
%
%  Author:
%
%    John Burkardt
%
  m = 3;
  n = 4;

  eps = 0.00001;
  x = [ 1.0, 2.0, 3.0, 4.0 ];

  fprintf ( 1, '\n' );
  fprintf ( 1, 'R8MAT_JAC_TEST\n' );
  fprintf ( 1, '  R8MAT_JAC estimates the M by N jacobian matrix\n' );
  fprintf ( 1, '  of a nonlinear function.\n' );

  fprime = r8mat_jac ( m, n, eps, @r8mat_jac_f, x );

  r8mat_print ( m, n, fprime, '  Estimated jacobian:' );

  fprime = r8mat_jac_exact ( m, n, x );

  r8mat_print (  m, n, fprime, '  Exact jacobian:' );

  return
end

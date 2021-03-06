function shepard_interp_1d_test ( )

%*****************************************************************************80
%
%% SHEPARD_INTERP_1D_TEST tests the SHEPARD_INTERP_1D library.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    07 August 2012
%
%  Author:
%
%    John Burkardt
%
  addpath ( '../r8lib' )
  addpath ( '../test_interp' )

  timestamp ( );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'SHEPARD_INTERP_1D_TEST:\n' );
  fprintf ( 1, '  MATLAB version\n' );
  fprintf ( 1, '  Test the SHEPARD_INTERP_1D library.\n' );
  fprintf ( 1, '  This test needs the TEST_INTERP library.\n' );

  prob_num = p00_prob_num ( );

  for prob = 1 : prob_num

    for p = 1 : [ 0.0, 1.0, 2.0, 4.0, 8.0 ];
      shepard_interp_1d_test01 ( prob, p );
    end

  end

  prob = 7;
  for p = 1 : [ 0.0, 1.0, 2.0, 4.0, 8.0 ];
    shepard_interp_1d_test02 ( prob, p );
  end  
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'SHEPARD_INTERP_1D_TEST:\n' );
  fprintf ( 1, '  Normal end of execution.\n' );
  fprintf ( 1, '\n' );
  timestamp ( );

  rmpath ( '../r8lib' )
  rmpath ( '../test_interp' )

  return
end

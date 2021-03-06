function check = fisk_check ( a, b, c )

%*****************************************************************************80
%
%% FISK_CHECK checks the parameters of the Fisk PDF.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    08 October 2004
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, real A, B, C, the parameters of the PDF.
%    0.0 < B,
%    0.0 < C.
%
%    Output, logical CHECK, is true if the parameters are legal.
%
  if ( b <= 0.0 )
    fprintf ( 1, '\n' );
    fprintf ( 1, 'FISK_CHECK - Fatal error!\n' );
    fprintf ( 1, '  B <= 0.\n' );
    check = 0;
    return
  end

  if ( c <= 0.0 )
    fprintf ( 1, '\n' );
    fprintf ( 1, 'FISK_CHECK - Fatal error!\n' );
    fprintf ( 1, '  C <= 0.\n' );
    check = 0;
    return
  end
  
  check = 1;

  return
end

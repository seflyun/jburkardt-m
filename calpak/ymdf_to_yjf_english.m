function [ y2, j2, f2 ] = ymdf_to_yjf_english ( y1, m1, d1, f1 )

%*****************************************************************************80
%
%% YMDF_TO_YJF_ENGLISH converts from YMDF to YJF form in the English calendar.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    06 March 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer Y1, M1, D1, real F1,
%    the YMDF date.
%
%    Output, integer Y2, J2, real F2, the YJF date.
%

%
%  Check the date.
%
  [ y1, m1, d1, f1, ierror ] = ymdf_check_english ( y1, m1, d1, f1 );

  if ( ierror ~= 0 )
    y2 = 0;
    j2 = 0;
    f2 = 0.0;
    return
  end

  y2 = y1;
  j2 = d1;
  f2 = f1;
%
%  Add in the days of the elapsed months.
%
  for m = 1 : m1 - 1
    j2 = j2 + month_length_english ( y2, m );
  end

  return
end

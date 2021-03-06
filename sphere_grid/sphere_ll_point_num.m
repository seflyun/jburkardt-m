function point_num = sphere_ll_point_num ( lat_num, long_num )

%*****************************************************************************80
%
%% SPHERE_LL_POINT_NUM counts points for a latitude/longitude grid.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    08 October 2012
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer LAT_NUM, LONG_NUM, the number of latitude 
%    and longitude lines to draw.  The latitudes do not include the North and 
%    South poles, which will be included automatically, so LAT_NUM = 5, for 
%    instance, will result in points along 7 lines of latitude.
%
%    Output, integer POINT_NUM, the number of grid points.
%
  point_num = 2 + lat_num * long_num;

  return
end

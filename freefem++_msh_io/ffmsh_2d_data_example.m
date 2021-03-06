function [ v_xy, v_l, e_v, e_l, t_v, t_l ] ...
  = ffmsh_2d_data_example ( v_num, e_num, t_num )

%*****************************************************************************80
%
%% FFMSH_2D_DATA_EXAMPLE returns example FFMSH data.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    23 December 2014
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer V_NUM, the number of vertices.
%
%    Input, integer E_NUM, the number of boundary edges.
%
%    Input, integer T_NUM, the number of triangles.
%
%    Output, real V_XY(2,V_NUM), vertex coordinates.
%
%    Output, integer V_L(V_NUM), vertex labels.
%
%    Output, integer E_V(2,E_NUM), edge vertices.
%
%    Output, integer E_L(E_NUM), vertex labels.
%
%    Output, integer T_V(3,T_NUM), triangle vertices.
%
%    Output, integer T_L(T_NUM), triangle labels.
%
  v_l = [ ...
    1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1 ]';

  v_xy = [ ...
    -0.309016994375,  0.951056516295; ...
    -0.809016994375,  0.587785252292; ...
    -0.321175165867,  0.475528256720; ...
     0.309016994375,  0.951056516295; ...
    -1.000000000000,  0.000000000000; ...
     0.809016994375,  0.587785252292; ...
    -0.333333334358,  0.000000000000; ...
     0.237841829972,  0.293892623813; ...
    -0.809016994375, -0.587785252292; ...
    -0.321175165867, -0.475528259963; ...
     1.000000000000,  0.000000000000; ...
     0.206011327827, -0.391856835534; ...
    -0.309016994375, -0.951056516295; ...
     0.809016994375, -0.587785252292; ...
     0.309016994375, -0.951056516295 ]';

  e_l = [ ...
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ]';

  e_v = [ ...
  11,  6; ...
   6,  4; ...
   4,  1; ...
   1,  2; ...
   2,  5; ...
   5,  9; ...
   9, 13; ...
  13, 15; ...
  15, 14; ...
  14, 11 ]';

  t_l = [ ...
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]';

  t_v = [ ...
     1,  3,  4; ...
     7,  2,  5; ...
     9,  7,  5; ...
     8,  6,  4; ...
    12,  8,  7; ...
    12, 11,  8; ...
     3,  1,  2; ...
     7,  3,  2; ...
     7,  8,  3; ...
     4,  3,  8; ...
     6,  8, 11; ...
    12,  7, 10; ...
    11, 12, 14; ...
    10,  9, 13; ...
    12, 10, 13; ...
     7,  9, 10; ...
    12, 13, 15; ...
    14, 12, 15 ]';

  return
end
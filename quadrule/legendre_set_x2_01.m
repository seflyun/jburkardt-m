function [ x, w ] = legendre_set_x2_01 ( n )

%*****************************************************************************80
%
%% LEGENDRE_SET_X2_01 sets a Gauss-Legendre rule for X**2 * F(X) on [0,1].
%
%  Discussion:
%
%    The integral:
%
%      Integral ( 0 <= X <= 1 ) X * X * F(X) dX
%
%    The quadrature rule:
%
%      Sum ( 1 <= I <= N ) W(I) * F ( X(I) )
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    13 October 2005
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Abramowitz, Stegun,
%    Handbook of Mathematical Functions,
%    National Bureau of Standards, 1964, page 921.
%
%  Parameters:
%
%    Input, integer N, the order.
%    N must be between 1 and 8.
%
%    Output, real X(N), the abscissas.
%
%    Output, real W(N), the weights.
%
  x = zeros ( n, 1 );
  w = zeros ( n, 1 );

  if ( n == 1 )

    x(1) =   0.75;

    w(1) = 1.0 / 3.0;

  elseif ( n == 2 )

    x(1) = 0.4558481560;
    x(2) = 0.8774851773;

    w(1) = 0.1007858821;
    w(2) = 0.2325474513;

  elseif ( n == 3 )

    x(1) = 0.2949977901;
    x(2) = 0.6529962340;
    x(3) = 0.9270059759;

    w(1) = 0.0299507030;
    w(2) = 0.1462462693;
    w(3) = 0.1571363611;

  elseif ( n == 4 )

    x(1) = 0.2041485821;
    x(2) = 0.4829527049;
    x(3) = 0.7613992624;
    x(4) = 0.9514994506;

    w(1) = 0.0103522408;
    w(2) = 0.0686338872;
    w(3) = 0.1434587898;
    w(4) = 0.1108884156;

  elseif ( n == 5 )

    x(1) = 0.1489457871;
    x(2) = 0.3656665274;
    x(3) = 0.6101136129;
    x(4) = 0.8265196792;
    x(5) = 0.9654210601;

    w(1) = 0.0041138252;
    w(2) = 0.0320556007;
    w(3) = 0.0892001612;
    w(4) = 0.1261989619;
    w(5) = 0.0817647843;

  elseif ( n == 6 )

    x(1) = 0.1131943838;
    x(2) = 0.2843188727;
    x(3) = 0.4909635868;
    x(4) = 0.6975630820;
    x(5) = 0.8684360583;
    x(6) = 0.9740954449;

    w(1) = 0.0018310758;
    w(2) = 0.0157202972;
    w(3) = 0.0512895711;
    w(4) = 0.0945771867;
    w(5) = 0.1073764997;
    w(6) = 0.0625387027;

  elseif ( n == 7 )

    x(1) = 0.0888168334;
    x(2) = 0.2264827534;
    x(3) = 0.3999784867;
    x(4) = 0.5859978554;
    x(5) = 0.7594458740;
    x(6) = 0.8969109709;
    x(7) = 0.9798672262;

    w(1) = 0.0008926880;
    w(2) = 0.0081629256;
    w(3) = 0.0294222113;
    w(4) = 0.0631463787;
    w(5) = 0.0917338033;
    w(6) = 0.0906988246;
    w(7) = 0.0492765018;

  elseif ( n == 8 )

    x(1) = 0.0714910350;
    x(2) = 0.1842282964;
    x(3) = 0.3304477282;
    x(4) = 0.4944029218;
    x(5) = 0.6583480085;
    x(6) = 0.8045248315;
    x(7) = 0.9170993825;
    x(8) = 0.9839022404;

    w(1) = 0.0004685178;
    w(2) = 0.0044745217;
    w(3) = 0.0172468638;
    w(4) = 0.0408144264;
    w(5) = 0.0684471834;
    w(6) = 0.0852847692;
    w(7) = 0.0768180933;
    w(8) = 0.0397789578;

  else

    fprintf ( 1, '\n' );
    fprintf ( 1, 'LEGENDRE_SET_X2_01 - Fatal error!\n' );
    fprintf ( 1, '  Illegal value of N = %d\n', n );
    error ( 'LEGENDRE_SET_X2_01 - Fatal error!' );

  end

  return
end
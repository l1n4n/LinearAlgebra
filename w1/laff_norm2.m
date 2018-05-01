function [ alpha ] = laff_norm2( x )
%LAFF_NORM2 Summary of this function goes here
%   Detailed explanation goes here
if (~isvector( x ))
    alpha = 'FAILED';
    return
end
[ m_x, n_x ] = size( x );
alpha = sqrt( laff_dot(x,x) );

end
function [ x_out ] = laff_scal( alpha, x )
%LAFF_SCAL Summary of this function goes here
%   Detailed explanation goes here
[ m_x, n_x ] = size( x );
if ( ~isvector(x) | ~isscalar(alpha) ) 
    x_out = 'FAILED';
    return
end
if ( m_x == 1)
    for i=1:n_x
        x_out( 1, i ) = alpha * x( 1, i );
    end
else
    for i = 1:m_x
        x_out( i, 1 ) = alpha * x( i, 1 );
    end
    
        

end
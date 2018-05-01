function [ alpha ] = laff_dot( x, y )


% Extract the row and column sizes of x and y
[ m_x, n_x ] = size( x );
[ m_y, n_y ] = size( y );

% Make sure x and y are (row or column) vectors of equal length
if ( m_x ~= 1 & n_x ~= 1 ) | ( m_y ~= 1 & n_y ~= 1 )
    alpha = 'FAILED';
    return
end
if ( m_x * n_x ~= m_y * n_y )
    alpha = 'FAILED';
    return
end

alpha = 0;
if ( n_x == 1 )     % x is a column vector
    if ( n_y == 1 )     % y is a column vector
        % Copy the elements of x into the elements of y
        for i=1:m_x   
            alpha = y( i,1 ) * x( i,1 ) + alpha;
        end
    else     % y is a row vector
        % Copy the elements of x into the elements of y
        for i=1:m_x   
            alpha = y( 1,i ) * x( i,1 ) + alpha;
        end
    end
else    % x is a row vector
    if ( n_y == 1 )     % y is a column vector
        % Copy the elements of x into the elements of y
        for i=1:n_x   
            alpha = y( i,1 ) * x( 1,i ) + alpha;
        end
    else     % y is a row vector
        % Copy the elements of x into the elements of y
        for i=1:n_x   
            alpha = y( 1,i ) * x( 1,i ) + alpha;
        end
    end
end


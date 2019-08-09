#
# Computes the ordered internal distance matrix of the coordinates of
# a structure 
#
# Input: x[n,3] the 3D coordinates of the atoms
#
# Returns: D, the internal distance matrix of the x
#          Dind, the indices of the elements of D, ordered from lower
#          the higher at each column
#

function intDmat(x :: Matrix{Float64})

  n = length(x[:,1])
  D = Matrix{Float64}(undef,n,n)
  Dind = Matrix{Int64}(undef,n,n)

  # Compute disprot, the internal square-distance matrix

  for i in 1:n
    D[i,i] = 0.
  end

  for j in 1:n-1
    for i in j+1:n
      dij = ( x[i,1] - x[j,1] )^2 + ( x[i,2] - x[j,2] )^2 + ( x[i,3] - x[j,3] )^2  
      D[i,j] = dij
      D[j,i] = dij
    end
  end

  # Sort the distances to atom i of the protein

  for j in 1:n
    ind = [ i for i in 1:n ]
    Dind[:,j] = sort(ind, by = i -> D[i,j] )
  end

  return D, Dind

end

#
# Functions that compute the center of mass:
#

# Without masses (just assume all are identical)

function center_of_mass( x :: Matrix{Float64} )
  xcm = zeros(3)
  n = length(x[:,1])
  for i in 1:n
    xcm[1] = xcm[1] + x[i,1]
    xcm[2] = xcm[2] + x[i,2]
    xcm[3] = xcm[3] + x[i,3]
  end
  xcm[1] = xcm[1] / n
  xcm[2] = xcm[2] / n
  xcm[3] = xcm[3] / n
  return xcm
end

# Given the masses

function center_of_mass( x :: Matrix{Float64}, masses :: Vector{Float64} )
  xcm = zeros(3)
  n = length(x[:,1])
  mtot = 0.
  for i in 1:n
    mtot = mtot + masses[i]
    xcm[1] = xcm[1] + x[i,1]
    xcm[2] = xcm[2] + x[i,2]
    xcm[3] = xcm[3] + x[i,3]
  end
  xcm[1] = xcm[1] / mtot
  xcm[2] = xcm[2] / mtot
  xcm[3] = xcm[3] / mtot
  return xcm
end


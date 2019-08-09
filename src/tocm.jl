#
# function to center the reference coordinates at the origin
# 
# It modifies the vector x of coordinates 
#

function tocm!( x :: Matrix{Float64}, xcm :: Vector{Float64} )
  for i in 1:length(x[:,1])
    x[i,1] = x[i,1] - xcm[1]
    x[i,2] = x[i,2] - xcm[2]
    x[i,3] = x[i,3] - xcm[3]
  end
end


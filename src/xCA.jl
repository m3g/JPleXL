#
# Return the coordinates of the CA atoms only in a vector
#

function xCA( atoms :: Vector{Atom} )

  nCA = count( atom -> atom.name == "CA", atoms )
  x = Matrix{Float64}(undef,nCA,3)
  i = 0
  for atom in atoms
    if atom.name == "CA"
      i = i + 1
      x[i,1] = atom.x
      x[i,2] = atom.y
      x[i,3] = atom.z
    end
  end 

  return x

end

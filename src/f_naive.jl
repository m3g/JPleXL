struct Xref

  n :: Int64
  x :: Matrix{Float64}

end

function compute_xcart!(x,xref,xcart)

  icm = 0
  iang = structures.n*3 
  icart = 0
  for i in 1:structures.n
    icm = icm + 1
    iang = iang + 1
    for j in 1:xref[i].n
      icart = icart + 1
      xcart[icart,1:3] = compcart( x[icm:icm+2], xref[i].x[j,1:3],
                                   x[iang], x[iang+1], x[iang+2]  ) 
    end
  end
  
end


dist2(x,y) = (x[1]-y[1])^2 + (x[2]-y[2])^2 + (x[3]-y[3])^2

function f_naive(xcart,xref,tol2)

  n = length(xref)
  f = 0.
  for i in 1:xref.n-1
    for j in i+1:xref.n
      for ix in 1:xref[i].n
        for jx in 1:xref[j].n
          d2 = dist2(xref[i].x[ix,1:3], xref.x[jx,1:3]) 
          if d2 < tol2
            f = f + ( tol2 - d2 )^2
          end
        end
      end
    end
  end

  return f
end

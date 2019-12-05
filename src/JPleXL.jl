
module JPleXL

  # Data for performance code
 
  include("./xCA.jl")
  include("./intDmat.jl")

  #
  # Functions for rigid-body rotation/translation
  #

  include("./center_of_mass.jl")  
  include("./eulermat.jl")  
  include("./tocm.jl")
  include("./compcart.jl") 
  export compcart

end

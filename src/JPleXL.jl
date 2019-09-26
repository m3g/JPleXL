
module JPleXL

  using Printf

  #
  # Data structures
  #

  include("./empty_struct.jl")

  include("./Atom.jl")
  export Atom

  include("./Indexes_mmCIF_fields.jl")

  #
  # Input and output functions
  #

  include("./check_mmCIF.jl")
  include("./read_atom.jl")
  include("./write_atom.jl")
  include("./readPDB.jl")
  export readPDB

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

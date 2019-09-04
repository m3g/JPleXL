
module JPleXL

  using Printf

  #
  # Data structures
  #

  include("./src/empty_struct.jl")

  include("./src/Atom.jl")
  export Atom

  include("./src/Indexes_mmCIF_fields.jl")

  #
  # Input and output functions
  #

  include("./src/check_mmCIF.jl")
  include("./src/read_atom.jl")
  include("./src/write_atom.jl")
  include("./src/readPDB.jl")
  export readPDB

  # Data for performance code
 
  include("./src/xCA.jl")
  include("./src/intDmat.jl")

  #
  # Functions for rigid-body rotation/translation
  #

  include("./src/center_of_mass.jl")  
  include("./src/eulermat.jl")  
  include("./src/tocm.jl")
  include("./src/compcart.jl") 
  export compcart

end

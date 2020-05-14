module VTKDataIO

using VTKDataTypes
using Printf
using WriteVTK
using PyCall
using LightXML
using Base.Iterators

@pyimport vtk.util.numpy_support as vtkns
@pyimport vtk as vtk
@pyimport numpy as np

include("vtkreaders.jl")
include("vtkwriters.jl")
include("vtpwriter.jl")
include("stlIO.jl")
include("extra_readers.jl")
include("PyVTK.jl")
include("visualize.jl")

export read_vtk, write_vtk, read_stl, write_stl, valid_to_write, PyVTK, 
    _VTKDataTypes, visualize, write_x3d, write_ply, read_obj, read_ply, visualize_3ds

end

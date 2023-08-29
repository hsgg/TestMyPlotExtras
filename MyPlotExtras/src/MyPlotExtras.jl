module MyPlotExtras

using PythonPlot
using PythonCall

function __init__()
    ## Workaround from https://github.com/cjdoris/PythonCall.jl/pull/328
    #ccall(:jl_generating_output, Cint, ()) == 1 && return nothing

    # Nicer workaround:
    # https://discourse.julialang.org/t/matplotlib-rcparams-in-module-init-function-segfault-on-m1/103314/3
    PythonCall.pyisnull(PythonPlot.matplotlib) && return

    rcParams = PythonPlot.matplotlib.rcParams
end

end

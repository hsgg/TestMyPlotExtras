module MyPlotExtras

using PythonPlot

function __init__()
    # Workaround from https://github.com/cjdoris/PythonCall.jl/pull/328
    ccall(:jl_generating_output, Cint, ()) == 1 && return nothing

    rcParams = PythonPlot.matplotlib.rcParams
end

end

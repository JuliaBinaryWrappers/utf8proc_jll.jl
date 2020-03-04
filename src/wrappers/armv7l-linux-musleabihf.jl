# Autogenerated wrapper script for utf8proc_jll for armv7l-linux-musleabihf
export libutf8proc

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libutf8proc`
const libutf8proc_splitpath = ["lib", "libutf8proc.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libutf8proc_path = ""

# libutf8proc-specific global declaration
# This will be filled out by __init__()
libutf8proc_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libutf8proc = "libutf8proc.so.2"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"utf8proc")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libutf8proc_path = normpath(joinpath(artifact_dir, libutf8proc_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libutf8proc_handle = dlopen(libutf8proc_path)
    push!(LIBPATH_list, dirname(libutf8proc_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()


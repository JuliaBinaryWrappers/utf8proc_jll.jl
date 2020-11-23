# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule utf8proc_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("utf8proc")
JLLWrappers.@generate_main_file("utf8proc", UUID("00992c89-a35c-5347-9984-e6609dacc59a"))
end  # module utf8proc_jll

# Autogenerated wrapper script for utf8proc_jll for riscv64-linux-gnu
export libutf8proc

JLLWrappers.@generate_wrapper_header("utf8proc")
JLLWrappers.@declare_library_product(libutf8proc, "libutf8proc.so.3")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libutf8proc,
        "lib/libutf8proc.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()

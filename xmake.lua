-- the debug mode
if is_mode("debug") then
    
    -- enable the debug symbols
    set_symbols("debug")

    -- disable optimization
    set_optimize("none")
end

-- the release mode
if is_mode("release") then

    -- set the symbols visibility: hidden
    set_symbols("hidden")

    -- enable fastest optimization
    set_optimize("fastest")

    -- strip all symbols
    set_strip("all")
end

-- add target
target("gitmsg")

    -- set kind
    set_kind("shared")

    -- add files
    add_files("src/gitmsg.c", "src/gitapi/gitapi.c", "src/utils/repoinfo.c") 

    add_linkdirs("/usr/local/lib")
    add_links("git2")
    add_includedirs("/usr/local/include")


-- add target
target("gitmsg_test")

    -- set kind
    set_kind("binary")

    -- add deps
    add_deps("gitmsg")

    -- add files
    add_files("src/test.c") 

    -- add links
    add_links("gitmsg")
    add_linkdirs("/usr/local/lib")
    add_links("git2")


    -- add link directory
    add_linkdirs("$(buildir)")


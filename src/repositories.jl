struct Repo
    host::String
    name::String
end

const repositories = [
    Repo("https://github.com", "rikhuijzer/Codex.jl"),
    Repo("https://github.com", "JuliaData/CSV.jl")
]

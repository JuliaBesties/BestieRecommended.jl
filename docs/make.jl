using BestieRecommended
using Documenter

DocMeta.setdocmeta!(BestieRecommended, :DocTestSetup, :(using BestieRecommended); recursive = true)

const page_rename = Dict("developer.md" => "Developer docs") # Without the numbers
const numbered_pages = [
  file for
  file in readdir(joinpath(@__DIR__, "src")) if file != "index.md" && splitext(file)[2] == ".md"
]

makedocs(;
    modules = [BestieRecommended],
    authors = "Abel Soares Siqueira <abel.s.siqueira@gmail.com> and contributors",
    repo = "https://github.com/JuliaBesties/BestieRecommended.jl/blob/{commit}{path}#{line}",
    sitename = "BestieRecommended.jl",
    format = Documenter.HTML(; canonical = "https://JuliaBesties.github.io/BestieRecommended.jl"),
    pages = ["index.md"; numbered_pages],
)

deploydocs(; repo = "github.com/JuliaBesties/BestieRecommended.jl")

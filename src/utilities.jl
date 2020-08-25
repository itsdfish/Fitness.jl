function get_frontier(a)
    map(x -> (params(x),fitness(x).orig), pareto_frontier(a))
end

# function get_best_paths(a)::Array{Array{Float64,1},1}
#     n = length(a)
#     frontier = pareto_frontier(a)
#     paths = Array{Array{Float64,1},1}(undef, n)
#     for (i,f) in enumerate(frontier) 
#         paths[i] = params(f)
#     end
#     return paths
# end

function get_best_paths(a)
    map(x -> params(x), pareto_frontier(a))
end

# function get_best_cost(a)
#     n = length(a)
#     fn = length(best_fitness(a).orig)
#     fitnesses = Array{NTuple{fn,Float64},1}(undef, n)
#     frontier = pareto_frontier(a)
#     for (i,f) in enumerate(frontier) 
#         fitnesses[i] = fitness(f).orig
#     end
#     return fitnesses
# end

function get_best_cost(a)
    map(x -> fitness(x).orig, pareto_frontier(a))
end

add_candidate!(a::EpsBoxArchive{N,F}, cand_fitness::NTuple{N,F},
candidate, tag::Int=0, num_fevals::Int=-1) where {N,F} =
add_candidate!(a, archived_fitness(cand_fitness, a), candidate, tag, num_fevals)

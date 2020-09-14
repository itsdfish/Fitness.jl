module Fitness
    using BlackBoxOptim
    const Scheme = EpsBoxDominanceFitnessScheme
    import BlackBoxOptim: add_candidate!, noprogress_streak, notify!
    export Scheme, EpsBoxArchive, pareto_frontier
    export best_candidate, add_candidate!, best_fitness
    export get_frontier, get_best_paths, get_best_cost
    export noprogress_streak, notify!

    include("utilities.jl")
end
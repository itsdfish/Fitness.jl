function get_frontier(a)
    map(x -> (params(x),fitness(x).orig), pareto_frontier(a))
end

function get_best_paths(a)
    map(x -> params(x), pareto_frontier(a))
end

function get_best_cost(a)
    map(x -> fitness(x).orig, pareto_frontier(a))
end


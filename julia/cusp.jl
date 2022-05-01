using Plots          # similar to "importing" libraries
                     # more information:
                     # https://docs.julialang.org/en/v1/manual/modules/#modules
                     
plotlyjs()           # backend for Plots
                     # more information:
                     # https://docs.juliaplots.org/stable/backends/

x = -1:.1:1;         # min : resolution : max

# plot the curve
# dots represent broadcasting (maps), as explained in
# https://docs.julialang.org/en/v1/manual/arrays/#Broadcasting


plot3d(swallowtail(xx, yy),
    st = :surface,               # solid surface (not mesh)
                                 # won't plot a surface without st!
    c = reverse(                 # reverse gradient
    cgrad(:ocean,alpha=.5)       # gradient with opacity (alpha) set to 50%
    ),
    legend = false,              # no gradient sidebar
    axis = nothing,              # no axes
    border = :none)              # no borders

# plot the curves
# don't use reshaped points this time!

plot3d!(swallowtail(-2*y.^2,y),  # `!` keeps existing figures  
    line = (5, :dash),
    c = :orange)

y=-.45:.05:.45   # i just need to increase resolution and decrease
                 # domain so it looks better

plot3d!(swallowtail(-6*y.^2,y),  # `!` keeps existing figures  
    line = (5, :dash),
    c = :red)

# saving the result (it will use the default camera angle!)
# see https://docs.juliaplots.org/latest/api/#Output
savefig("swallow.pdf")


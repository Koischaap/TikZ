using Plots          # similar to "importing" libraries
                     # more information:
                     # https://docs.julialang.org/en/v1/manual/modules/#modules
                     
plotlyjs()           # backend for Plots
                     # more information:
                     # https://docs.juliaplots.org/stable/backends/

# define a "sample grid"
x = -1:.1:1;         # min : resolution : max
y = -1:.1:1;

# use reshape to generate a "net" of sample points
# more information:
# https://docs.julialang.org/en/v1/base/arrays/#Base.reshape
xx = reshape([xi for xi in x for yj in y], length(y), length(x));
yy = reshape([yj for xi in x for yj in y], length(y), length(x));

surface(x,y) = y.^5 - x.^2 .*y;

# Use - sign in them to get as many "bubbles" as possible!
# Except for F4 - that one only gets one bubble regardless

# Sk: y.^3 - x.^2 .*y;
# Bk: y.^5 - x.^2 .*y;
# Ck: x.^3 .*y - x.*y.^3;
# F4: y.^5 + x.^3 .*y;

plot3d(surface(xx, yy), xx, -yy.^2,
    st = :surface,               # solid surface (not mesh)
                                 # won't plot a surface without st!
    c = cgrad(:roma),
    legend = false,              # no gradient sidebar
    axis = nothing,              # no axes
    border = :none)              # no borders

savefig("b2.pdf");

plot3d(y.^2 .*surface(xx, yy), xx, -yy.^2,
    st = :surface,               # solid surface (not mesh)
                                 # won't plot a surface without st!
    c = cgrad(:roma),
    legend = false,              # no gradient sidebar
    axis = nothing,              # no axes
    border = :none)              # no borders

savefig("b2c.pdf");

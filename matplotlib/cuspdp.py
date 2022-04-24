import matplotlib.pyplot as plt             # Generate plots
from mpl_toolkits.mplot3d import Axes3D     # Have a 3D env

# Define the variables
import numpy as np
interval = np.linspace(-1,1,32)
x,y = np.meshgrid(interval,interval)

# More information:
# https://numpy.org/doc/stable/reference/generated/numpy.linspace.html
# https://numpy.org/doc/stable/reference/generated/numpy.meshgrid.html

# Define the parametric equations
X=x
Y=y*y
Z=y*y*y

XX=0
YY=x
ZZ=y

fig = plt.figure()      # Generate a figure called "fig"

ax = fig.add_subplot(projection='3d')
ax.axis('off')          # Hide the "background box"
ax.plot_surface(X,Z,Y, cmap=cm.ocean)
ax.plot_surface(XX,YY,ZZ, cmap=cm.ocean)
fig.show()              # Show "fig"

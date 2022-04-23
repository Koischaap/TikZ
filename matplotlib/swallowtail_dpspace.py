import matplotlib.pyplot as plt             # Generate plots
from mpl_toolkits.mplot3d import Axes3D     # Have a 3D env

# Define the variables
import numpy as np
t = np.linspace(-1, 1)      # curve parameter
x,y = np.meshgrid(t, t)     # surface parameters

# More information:
# https://numpy.org/doc/stable/reference/generated/numpy.linspace.html
# https://numpy.org/doc/stable/reference/generated/numpy.meshgrid.html

fig = plt.figure()      # Generate a figure called "fig"

ax = fig.add_subplot(projection='3d')
ax.axis('off')            # Hide the "background box"

# Define the surface
X = x
Y = np.power(y,3) + 3 * x * y
Z = np.power(y,4) + 2 * x * y * y

# Draw surface with 50% opacity
ax.plot_surface(X,Y,Z,alpha=.5)

# Draw the curves
CX = -t*t
CY = -2*np.power(t,3)
CZ = -np.power(t,4)
ax.plot(CX,CY,CZ,'r--')  # red

DX = -t*t/3
DY = 0*t
DZ = 1/3*np.power(t,4)
ax.plot(DX,DY,DZ,'r')    # red, dashed

# Customization:
# https://matplotlib.org/2.1.2/api/_as_gen/matplotlib.pyplot.plot.html

fig.show()                # Show "fig"


## Introduction 

A hypothetical comic-book planet with normal Newtonian gravity happens to have an atmosphere consisting of two entities, `A` and `B` , in the 1:2 proportion. The two entities have the same mass, and behave asideal gases, and do not interact with each other in any way. Create a two-dimensional snapshot of this atmosphere, where one of the dimensions is the direction of gravity (i.e., the vertical direction),  and the other one is any direction that is perpendicular to the vertical.

## Solutions

In order to solve the problem let's consider,
 
The [density of an ideal gas under gravity](https://en.wikipedia.org/wiki/Barometric_formula#Density_equations) varies with the height `y` (measured from the surface upwards) as,

<img src="https://latex.codecogs.com/gif.latex?\rho(y)&space;=&space;\rho_0&space;\exp(-\frac{mg}{k_BT}y)" title="\rho(y) = \rho_0 \exp(-\frac{mg}{k_BT}y)" />
where, 
`m` is mass of a molecule
`g` is Gravitational Constant 
<img src="https://latex.codecogs.com/gif.latex?k_B" title="k_B" /> is Boltzmann Constant
`T` is the Temerature of the gas
<img src="https://latex.codecogs.com/gif.latex?\rho_0" title="\rho_0" /> is the density at the ground level, `y = 0`. 

and 

both `A` and `B` in the atmosphere do not interact and their molecule moves randomly. Hence, let's assume they exponential distribution which can be expressed as, 

<img src="https://latex.codecogs.com/gif.latex?f(y)&space;=&space;\lambda\exp(-\lambda&space;y);&space;y&space;\geq&space;0,&space;\lambda&space;>&space;0" title="f(y) = \lambda\exp(-\lambda y); y \geq 0, \lambda > 0" />

Let's assume, <img src="https://latex.codecogs.com/gif.latex?\lambda&space;=&space;1" title="\lambda = 1" /> as of now. 

## Requirement

In order to excute below libraries are required: 

	*`misc3d`
	*`rgl`


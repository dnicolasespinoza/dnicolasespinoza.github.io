# 2. Subsurface Stresses and Pore Pressure

Similarly to fluid pressure, rock stresses change with depth.
Yet, changes in rock stresses depend not only on depth but also on the properties of the rock and tectonic stresses if any.
This chapter presents a summary of the calculation of vertical stress (total and effective) and pore pressure with depth. 
The chapter also reviews the concept of horizontal stress from a phenomenological point of view.
The calculation of horizontal stress requires a mechanical model that will be introduced in subsequent chapters.


## 2.1 Lithostatic gradient

The lithostatic stress gradient is the variation of total vertical stress $S_v$ with vertical depth (usually referred as *true depth*} in petroleum engineering).
The following subsections review the fundamental concepts of stress, stress equilibrium, and effective stress. 


### Stress concept and equilibrium 1D

Consider the solid bar in {numref}`fig_vertstress-bar`.
Two forces $\underline{F}_1$ and $\underline{F}_2$ pull the bar in opposite directions.
Underlining indicates the variable is a vector in ${\rm I\!R}^3$ (three dimensions).
Equilibrium requires summation of (vectorial) forces to be zero, hence, $\underline{F}_1 = \underline{F}_2$.
If the solid bar has a weight, then equilibrium requires $\underline{F}_1 =  \underline{F}_2 + m \underline{g}$, the difference is the weight $m \underline{g}$.

Stress is defined as force $\underline{F}$ over area $A$ (perpendicular to the force) such that 

```{math}
:label: my-equation
\underline{\sigma} = \frac{\underline{F}}{A} 
```

The units of stress are [Force]/[Area]: MPa, psi, etc., but it does not necessarily mean stress is a pressure!
Stress depends on the direction in which is measured, while pressure is the same in all directions.
The directionality of stress is a result of the solid capacity to resist shear stresses.	
	
:::{figure-md} fig_vertstress-bar
<img src="../mynewbook/figures/2-2.svg" alt="figurecontent" width="600px">

1D stress equilibrium.
:::

%---------------------------------------------------------
### Rock vertical stress gradient

In a 3D porous solid with volume $\Delta x \Delta y \Delta z$ ({numref}`fig_vertstress-poroussolid`), equilibrium  requires the summation of (vectorial) forces in all directions to be zero $\sum \underline{F} = 0$.
Equilibrium of forces in the vertical direction (gravity $\underline{g}$ direction) requires $\sum F_z = 0$ (forces in vertical direction). 
Hence,

```{math}
:label: my-equation2
	S_v A + \rho_{bulk} Vol  g = S_v A + \Delta S_v A \\
	\rho_{bulk} \: \Delta x \Delta y \Delta z \:  g = \Delta S_v \Delta x \Delta y \\
	\frac{\Delta S_v}{\Delta z} = \rho_{bulk} \: g
```

:::{figure-md} fig_vertstress-poroussolid
<img src="../mynewbook/figures/2-REVoverburden.svg" alt="figurecontent" width="300px">

Vertical total stress gradient.
:::

Considering infinitesimal variations yields the following equation

```{math}
:label: my-equation3
	\int_0^{S_v(z)} dS_v = \int_0^z \rho_{bulk}(z) g \: dz
```

The term within the integral in the right-hand-side $\rho_{bulk}(z) g$ is called the vertical total stress gradient, or sometimes, simply as *lithostatic stress gradient*.
In a semi-infinite medium (e.g. approximation of the Earth's surface) $S_v(z=0)=0$. 

If $\rho_{bulk} = cst$, then vertical stress $S_v$ as a function of depth $z$ is

```{math}
:label: eq_vertstress-onshore
	S_v(z)  = \rho_{bulk} g \:z .
```

The total vertical stress is a compressive stress and by convention in geomechanics we assign it a positive sign.

%-------------------------------------------------
```{admonition} Example 2.1
Assume a rock made of 100\% quartz (mass density $\rho_{SiO_2}$) with 20\% porosity filled with water (mass density $\rho_w$). 
What is the lithostatic stress gradient? 

SOLUTION 

The bulk (volume average) rock mass density $\rho_{bulk}$ depends on porosity $\phi$, volume fractions of mineral phases, and volume fractions of fluid phases.
For a water-saturated rock:

$
	\rho_{bulk} = (1-\phi) \rho_{SiO_2} + \phi \rho_w
$

Let's assume typical values $\rho_{SiO_2} = 2650$ kg/m$^3$ and $\rho_w = 1000$ kg/m$^3$ (check out [this database](https://nature.berkeley.edu/classes/eps2/wisc/glossary2.html), look for specific gravity SG).
Then,

$
	\rho_{bulk} = (1-0.2) \times 2650 \text{ kg/m}^3 + (0.2) \times 1000 \text{ kg/m}^3 = 2320  \text{ kg/m}^3 .
$

This bulk mass density is also equal to 144.8 lb/ft$^3$ and 19.4 ppg (pounds per gallon), where 1 kg = 2.2 lb, 1 ft = 0.305 m, and 1 ft$^3$ = 7.48 US gallon. 
The stress gradient results 

$
	\rho_{bulk} \: g = 2320 \text{ kg/m}^3 \times 9.8 \text{ m/s}^2 = 22.7 \times 10^3 \text{ Pa/m} = 22.7 \text{ MPa/km}. 
$

Note that 1 N = 1 kg m/s$^2$, 1 Pa = 1 N/m$^2$, 1 MPa = 10$^6$ Pa and 1 Km = 10$^3$ m. 

Let us calculate the stress gradient in petroleum field units (psi/ft).
First, we need to convert kg to lb (1 kg = 2.205 lb) and m to ft (1 m = 3.281 ft), thus $2320  \text{ kg/m}^3 = 144.8 \text{ lb/ft}^3$.
Second, we will pass pounds mass (lb) to pounds force (lbf).
This takes into account multiplying for $g$, so you should not multiply any numerical value going from lb to lbf.
Third, we will separate the denominator in area times length, and convert ft$^2$ to in$^2$:

$
	\rho_{bulk} g = 144.8 \text{ lbf/ft}^3  
	         = 144.8 \text{ lbf/ft}^2 \times \text{ 1/ft}   
  	         = 144.8 \text{ lbf/(12 in)}^2 \times \text{ 1/ft}   
  	         = 1.01 \text{ psi/ft}. \: \: 
$
```
%-------------------------------------------------

Typical vertical stress gradient are around $\sim 1$ psi/ft $\sim 23$ MPa/km for porosity $\phi = 0.20$.
Hydrostatic pore pressure gradient is $\sim 0.44$ psi/ft $\sim 10$ MPa/km.
You may use fluid saturations $S_w, S_o, S_g$ if the rock has two or more fluids in the pore space to accurately calculate the vertical stress gradient.
You may also use the corresponding mineral volume fractions if the rock is comprised of two or more minerals, e.g., a dolomite-rich shale.

Now that we have the stress gradient, we can calculate total stress at a given depth.
Let's consider two cases: onshore and offshore.

#### Onshore total vertical stress

First, consider an onshore scenario in which the surface coincides with the water table (in most practical applications this is a reasonable assumption).	
Assume a constant fluid density $\rho_w$ and constant bulk rock mass density $\rho_{bulk}$ (remember that it includes fluids within pores).
Then, the pore pressure gradient as a function of depth $z$ will be

```{math}
:label: eq_hydrostporepress
	P_p = \rho_w g \, z
```

as long as there is a connected pore network path from the surface to the depth $z$, such that the fluid is in hydrostatic equilibrium (it may not happen sometimes).
The total vertical stress gradient as a function of depth $z$ is calculated with Equation \ref{eq:vertstress-onshore} because in onshore conditions the assumption of constant bulk mass density with depth is acceptable.
Both (hydrostatic) $P_p$ and $S_v$ increase linearly with depth $z$ with constant mass densities ({numref}`fig_ch2-onshorestress`).

:::{figure-md} fig_ch2-onshorestress
<img src="../mynewbook/figures/2-OnshorePpSv.svg" alt="figurecontent" width="400px">

Onshore pressure and vertical stress gradient. $P_p$: pore pressure, $S_v$: vertical total stress, $\sigma_v$: effective vertical stress.
:::

The difference between total stress and pore pressure is called "effective stress"; hence, the effective vertical stress is

```{math}
:label: eq_verteffstress
	\sigma_v = S_v - P_p
```

Effective stresses in the subsurface are mostly compressive. Compressive effective stress holds rock together and compacts them.
Notice that $S_v > P_p$ must hold in order to have a compressive effective vertical stress.
We will see later that effective stress is a very important quantity and dictates rock deformation and failure. 
{numref}`fig_coffee-effstress` shows an example of effective stress making cohesionless ground coffee strong and stiff like a brick. 
You will see this example in class how I stand on a "brick" of ground coffee thanks to Terzaghi's effective stress and how effective stress strengthens the coffee pack due to friction forces.

:::{figure-md} fig_coffee-effstress
<img src="../mynewbook/figures/2-20.svg" alt="figurecontent" width="600px">

Example of Terzaghi's effective stress with ground coffee.
:::

Similar to the membrane effect conceptualized in {numref}`fig_coffee-effstress`, the mudcake that forms around a wellbore during drilling provides an effective stress to the surrounding rock.
This is a result of the sharp pressure gradient between the mud pressure in the well $P_w$ and the pore pressure $P_p$ in the formation ({numref}`fig_mudcake`).

:::{figure-md} fig_mudcake
<img src="../mynewbook/figures/2-mudcake.svg" alt="figurecontent" width="600px">

Schematic of mudcake effect to provide effective stress on the wall of a wellbore.
:::

%-------------------------------------------------
```{admonition} Example 2.2
Compute the pore pressure and vertical stress at 4000 ft of depth (True Vertical Depth: TVD) underneath an onshore drilling rig. 
The pore pressure gradient is hydrostatic with brine mass density of 1.04 g/cm$^3$ and the average rock bulk mass density is about 2.35 g/cm$^3$. 
Make a plot of pressure and vertical stress versus depth. 
Show results in MPa and psi.

SOLUTION 

The corresponding hydrostatic and lithostatic gradients are (keep in mind that 1 g/cm$^3$ = 1 g/cc = 1000 kg/m$^3$):

$
	\frac{dP_p}{dz} = \rho_w g = 1040 \text{ kg/m}^3 \times 9.8 \text{ m/s}^2 = 10.19 \text{ MPa/km}
$

and

$
	\frac{dS_v}{dz} = \rho_{bulk} g = 2350 \text{ kg/m}^3 \times 9.8 \text{ m/s}^2 = 23.03 \text{ MPa/km}
$

Hence, the pore pressure and hydrostatic gradient at 4000 ft (1219.2 m) of depth are

$
	P_p = \frac{dP_p}{dz} z = 10.19 \text{ MPa/km} \times 1.219 \text{ km} =  12.43 \text{ MPa} = 1801 \text{ psi}
$

and

$
	\frac{dS_v}{dz} z = 23.03 \text{ MPa/km} \times 1.219 \text{ km} =  28.07 \text{ MPa} = 4070 \text{ psi}.
$

Note: 1 MPa = 145 psi. $\: \: \blacksquare$
```
%-------------------------------------------------

#### Offshore total vertical stress

In an offshore case we have to take into account the presence of overlying water weight proportional to thickness $z_w$. 
Again, let us assume constant mass densities for simplicity. 
In the water, you cannot define a stress because there is no solid phase.
Within the water zone, fluid pressure will increase according to Eq. {eq}`eq_hydrostporepress`. 
This fluid pressure will continue increasing within the seafloor sediments as long as there is a connected pore network from the seafloor to depth $z$.
Stresses start to develop at the seafloor beyond depth $z > z_w$ ({numref}`fig_OffshorePpSv`), such that the total vertical stress will be 

```{math}
:label: eq_nn
	S_v = \rho_{w} g \, z_w + \rho_{bulk} g (z-z_w) \quad \text{for} \quad z \geq z_w
```

:::{figure-md} fig_OffshorePpSv
<img src="../mynewbook/figures/2-OffshorePpSv.svg" alt="figurecontent" width="400px">

Offshore pressure and total stress gradient.
:::

Notice that the total stress does not start at 0 at the seafloor $z=z_w$.
However, the important and "physically meaningful" quantity is effective stress and this one does start at zero at the seafloor.

```{math}
:label: eq_nn2
 	\sigma_v = S_v - P_p =  \rho_{bulk} g (z-z_w) \quad \text{for} \quad z \geq z_w
```

This makes sense because otherwise an octopus would not be able to dig in sand at the seafloor (take a look at this [youtube video](https://www.youtube.com/watch?v=LSeYVTo7DFs)).
We will see later that stress is a "tensor" (with magnitude  that depends on the orientation of the plane in which it is measured) and that pore pressure affects effective stresses in the normal directions. 

:::{figure-md} fig_lec2-19
<img src="../mynewbook/figures/2-19.svg" alt="figurecontent" width="600px">

Crab hanging on the seafloor.
:::

%-------------------------------------------------
```{admonition} Example 2.3
Compute the pore pressure and vertical stress at 9000 ft of depth (TVD) underneath an offshore drilling rig with water depth of 2000 ft. 
The pore pressure gradient is 0.44 psi/ft and the lithostatic gradient is 1 psi/ft. 
The hydrostatic pressure gradient above the seafloor is 0.44 psi/ft as well. 
Make a plot of pressure and vertical stress versus depth. Calculate effective stress at 9000 ft of depth. 
Show results in MPa and psi.

SOLUTION 

The pore pressure and hydrostatic gradient at $z$ = 9000 ft of total depth with water depth $z_w$ = 2000 ft are

$
	P_p = \rho_w g z_w + \frac{dP_p}{dz} (z-z_w)  = 0.44 \text{psi/ft} \times 2000 \text{ ft} + 0.44 \text{ psi/ft}  \times (9000-2000) \text{ ft} =   3960 \text{ psi} 
$

and

$
		S_v = \rho_w g z_w + \frac{dS_v}{dz} (z-z_w)  = 0.44 \text{ psi/ft} \times 2000 \text{ ft} + 1.00 \text{ psi/ft} \times (9000-2000) \text{ ft} = 7880 \text{ psi},
$

hence,

$
		\sigma_v = S_v - P_p = 7880 \text{ psi} - 3960 \text{ psi} = 3920 \text{ psi}.
$

The values in SI units are $P_p = 27.31 \text{ MPa}$, $S_v =  54.34 \text{ MPa}$, and $\sigma_v = 27.03 \text{ MPa}$. $\: \: $
```
%-------------------------------------------------

For an interactive example of calculation of vertical stress with depth, check my [Jupyter notebook](https://mybinder.org/v2/gh/dnicolasespinoza/GeomechanicsJupyter/master?filepath=PorePressureVerticalStress_Widget.ipynb).

#### General calculation of total vertical stress

In the general case rock bulk mass density $\rho_{bulk}$ varies with depth. For example, rock lithology will vary with depth.
Rocks usually have lower porosity as depth increases.
Brine mass density also changes with depth.
In general, vertical stress is calculated from integration of the equation 

```{math}
:label: eq_VertStressGral
 	S_v(z) = \int_0^z \rho_{bulk}(z) g \: dz
```

where $\rho_{bulk}(z)$ is obtained from (gamma ray) density well logs and $z$ is obtained from the true vertical depth (TVD) calculated from the well measured depth (MD) and the well deviation survey ({numref}`fig_ch2-Svgeneralcase`).
Accurate calculations should account for the difference between the rotary table or kelly bushing (from where measured depth is often obtained) and the actual ground level. 
This difference can be significant in offshore cases.
In deviated wellbores, you should also take into account wellbore deviation and compute TVD from MD and well trajectory. 

:::{figure-md} fig_ch2-Svgeneralcase
<img src="../mynewbook/figures/2-MD_TVD.svg" alt="figurecontent" width="600px">

Variables involved in the calculation of vertical stress in the general case.
:::

Well logs contain "discrete" data, hence you have to do numerical integration. 
Equation {eq}`eq_VertStressGral` can be approximated with

```{math}
:label: eq_VertStressDiscrete
 	S_v(z_i) = \sum\limits_1^i \rho_{bulk}(z_i) g \Delta z_i 
```

where $i$ is the i-th interval at depth $z_i$. 
You can code this equation as the "trapezoidal rule" in a \texttt{for loop} or in a spreadsheet.
For example, the vertical stress at the $i$-th layer is

```{math}
:label: eq_Trapezoidal
 	S_v(i) = \left[ \frac{ \rho_{bulk}(i) + \rho_{bulk}(i-1)}{2}  \right] g \left[ z(i) - z(i-1) \right] + S_v(i-1)
```

where $ \left[ ( \rho_{bulk}(i) + \rho_{bulk}(i-1))/2 \right]  g $ is the average height of the trapezoid, $\left[ z(i) - z(i-1) \right]$ is the base of the trapezoid, and $S_v(i-1)$ is the total stress at the previous depth data point calculated with the same rule, but one level above.
The result is the addition of the weight of all layers above the point under consideration. 	


%-------------------------------------------------
```{admonition} Example 2.4
 Go to [my Github repository](https://github.com/dnicolasespinoza/GeomechanicsJupyter) and download the files ``1\_14-1\_Composite.las`` and ``1\_14-1\_deviation\_mod.dev``. 
The first one is a well logging file (.LAS).
You will find here measured depth (DEPTH - Track 1) and  bulk mass density (RHOB - Track 8).
Track 3 also shows bulk density correction (DRHO).
Add RHOB to DRHO to obtain the corrected bulk mass density.
The second file has the deviation survey of the well. 
Use this file to calculate true vertical depth subsea (TVDSS) as a function of measured depth (MD) in the well logging file.
You may assume an average bulk mass density of 2 g/cc between the seafloor and the beginning of the density data.
Apply Equation \ref{eq:VertStressDiscrete}. 
Summations with discrete data sets can be easily done through a \texttt{for loop}.

SOLUTION 

See Figure \ref{fig:ch2-SvNSexample}. 
You may use the [lasio library](https://pypi.org/project/lasio/) to open LAS files with python or write your own code to read the text files .LAS and .DEV. 

:::{figure-md} fig_ch2-SvNSexample
<img src="../mynewbook/figures/2-VertStress_TVDSS.svg" alt="figurecontent" width="600px">

Example of calculation of vertical stress for a general case. This is an offshore example in the North Sea with seafloor at 104 m of depth. The calculation assumes an average bulk mass density of 2 g/cc between the seafloor and ~1000 m TVDSS (True Vertical Depth SubSea).
:::

```
%-------------------------------------------------


%================================================================================
## 2.2 Non-hydrostatic pore pressure
%\label{Sec:Nonhydro}

Pore pressure is not hydrostatic everywhere.
In fact, many times pore pressure is an unknown!
In a system of "connected pores" under hydrostatic equilibrium (water does not move), pore pressure increases hydrostatically.
Non-hydrostatic variations of pore pressure are usually located adjacent to low permeability barriers (e.g., shale formations) that do not allow pore pressure to achieve hydrostatic equilibrium fast enough compared to the rate of sedimentation and pore pressure relief.
Hence, pore pressure gets locked-in.
In the example in {numre}`fig_lec2-9`, pore pressure is hydrostatic until $z \sim 8,500$ ft. 
Overpressure develops from $z \sim 8,500$ ft to $z \sim 11,000$ ft (likely due to a low permeability mudrock). 
Pore pressure below $z \sim 11,000$ ft is quite different from hydrostatic!


:::{figure-md} fig_lec2-9
<img src="../mynewbook/figures/2-9.svg" alt="figurecontent" width="600px">

Overpressure example in the Monte Cristo field (Image credit: [Zoback 2013]).
:::

A convenient parameter to relate pore pressure and total vertical stress is the dimensionless overpressure parameter $\lambda_p$:


```{math}
:label: eq_lambdaOP
 	\lambda_p(z) = \frac{P_p(z)}{S_v(z)}
```

In stationary conditions $P_p$ cannot be larger than $S_v$, hence, $\lambda_p \leq 1$.
In onshore conditions $\lambda_p \sim 0.44$ means hydrostatic pore pressure ($\lambda_p \neq 0.44$ in hydrostatic conditions offshore, why?).
Reservoir overpressure is good for hydrocarbon recovery (more energy to flow to the wellbore), however, it may cause geomechanical challenges for drilling (kicks). 
Parameter $\lambda_p \rightarrow 1$ means little effective stress. 
We will see later that rocks have effective stress-dependent strength. 
Hence, overpressure leads to weak rocks, especially if they are not well cemented, difficult to drill.

%---------------------------------------------------------
### Mechanisms of overpressure

There are several mechanisms that may contribute to overpressure $P_p > P_p^{\text{hydrostatic}}$.
First, hydrocarbon accumulations create overpressure due to buoyancy.
Overpressure $\Delta P_p$ is proportional to hydrocarbon column height $h$ and difference in mass density of pore fluids $\rho_{brine} - \rho_{hydrocarbon}$

```{math}
:label: eq_PplambdaOP
 	\Delta P = (\rho_{brine} - \rho_{hydrocarbon}) g  h

```

where $h$ is measured from the hydrocarbon-brine contact line upwards. 
A connected pore structure is needed throughout the buoyant phase.

:::{figure-md} fig_lec2-10
<img src="../mynewbook/figures/2-Buoyancy.svg" alt="figurecontent" width="600px">

Mechanisms of overpressure: Hydrocarbon column.
:::
 
Second, changes in temperature cause fluids to dilate. If the fluids cannot escape quickly enough, then pore pressure increases.
Third, clay diagenesis can expell water molecules. For example, when montmorillonite converts to illite at high pressure and temperature, previously bound water molecules get "added" to the pore space. Under constant pore volume conditions, such addition will result in increases of pore pressure. 
Fourth, hydrocarbon generation also induces overpressure. With hydrocarbon generation, the original organic compounds transform in another phase which occupies more volume at the same pressure conditions. Overpressure in organic-rich shales is a good indicator of hydrocarbon presence.	

:::{figure-md} fig_lec2-11
<img src="../mynewbook/figures/2-11.svg" alt="figurecontent" width="600px">

Other mechanisms of overpressure.
:::

%---------------------------------------------------------
### Disequilibrium compaction and excess pore pressure

Changes of vertical and horizontal stresses can induce pore pressure changes.
Pore pressure increases when a rock/sediment is compressed (such that the pore volume decreases) under conditions in which the fluid cannot escape quickly enough.
{numref}`fig_lec2-12` shows a schematic representation of this concept.

1. (LEFT) A weight is added on a receptacle with a moving top lid. The top has a hole so that water can escape through the tube when the valve is  not closed. The valve is closed now, so the water takes the weight $W$ and pore pressure increases a magnitude $\Delta P = W/A$, where $A$ is the area of the top lid.
2. (MIDDLE) Somebody opens the valve. The fluid starts to drain out. When the top touches the sediment grains, the weight $W$ starts to transfer to the sediment, so that the water takes now just a fraction of the weight and pore pressure reduces accordingly. 
3. (RIGHT) The sediment takes all the load $W$ so now the vertical effective stress on the top is $\sigma_v = W/A$. The fluid does not support the weight $W$ anymore $\Delta P = 0$. The time it takes to arrive to this scenario depends on the tube and valve hydraulic conductivity and the overpressure generated by the weight $W$.

:::{figure-md} fig_lec2-12
<img src="../mynewbook/figures/2-12.svg" alt="figurecontent" width="600px">

Schematic of the consolidation problem.
:::

Imagine now a sediment layer saturated with water.
There is an impervious layer at the bottom. 
Water cannot escape from the sides either. 
Water can only escape from the top.

:::{figure-md} fig_lec2-13
<img src="../mynewbook/figures/2-13.svg" alt="figurecontent" width="600px">

Disequilibrium compaction: initial conditions.
:::

An overburden is placed quickly on the sediment so that it compacts an amount $\Delta z$.
Initially, the pore pressure increases everywhere the same amount.
The pore pressure decreases preferentially at the top boundary (where it can flow) and the rate of pore pressure change is proportional to the hydraulic diffusivity parameter 

```{math}
	D_h = \frac{M k} {\mu} 
```

where $M$ is the constrained rock "stiffness" (inverse of 1D compressibility $C_{bp}$), $k$ is the sediment (vertical) permeability, and $\mu$ is the fluid viscosity. 
The one-dimensional equation to this problem is 

```{math}
 	\frac{\partial P_p}{\partial t} = D_h \frac{d^2P_p}{dz^2}
```

:::{figure-md} fig_lec2-14
<img src="../mynewbook/figures/2-14.svg" alt="figurecontent" width="600px">

Disequilibrium compaction: load application.
:::

The solution of the partial differential equation above give us a characteristic time $T_{ch}$ for which $\sim 2/3$ of the pore pressure is relieved,

```{math}
 	T_{ch} = \frac{L^2}{D_h} 
```

where $L$ is the characteristic distance of drainage.
In our example $L$ is the thickness of the sediment layer, the longest straight path to a draining boundary.

%-------------------------------------------------
```{admonition} Example 2.5
Calculate the characteristic time of pore pressure diffusion for a 100 m thick sediment with top drainage considering 
 (a) a sand with $k =$ 100 mD and $M =$ 1 GPa, and
 (b) a mudrock with $k =$ 100 nD and $M =$ 1 GPa.

The water viscosity is 1 mPa s.
	
SOLUTION 

(a) Sand: $T_{ch} \sim $ 1.1 day. <br>
(b) Mudrock: $T_{ch} \sim $ 3000 years. 
```
%-------------------------------------------------

:::{figure-md} fig_lec2-15
<img src="../mynewbook/figures/2-15.svg" alt="figurecontent" width="600px">

Disequilibrium compaction: Characteristic time.
:::

The example in {numref}`fig_lec2-16` is a measurement of pore pressure $P_p$ that utilizes measurements of porosity in mudrocks (Track 3) to predict overpressure (Track 4).
The concept is simple: the porosity of clay-rich rock decreases with effective stress ({numref}`fig_ShaleCompaction`).
Let us assume the following equation for such dependence

```{math}
:label: eq_compactionexp
 	\phi = \phi_o \exp (-\beta \sigma_v)
```

:::{figure-md} fig_ShaleCompaction
<img src="../mynewbook/figures/2-CompressShale.png" alt="figurecontent" width="600px">

Schematic example of shale porosity as a function of effective vertical stress. Effective stress (rather than total stress) causes rock mechanical compaction.
:::

Under hydrostatic pore pressure conditions, vertical effective stress will always increase with depth.
However, in the presence of overpressure, effective stress may increase less steeply or even decrease with depth. Hence, mudrocks with porosity higher than the porosity expected at that depth (in hydrostatic conditions) indicate overpressured sediment intervals ({numref}`fig_overpressure`).

:::{figure-md} fig_lec2-16
<img src="../mynewbook/figures/2-16.svg" alt="figurecontent" width="600px">

Example of overpressure in the Gulf of Mexico.
:::

:::{figure-md} fig_overpressure
<img src="../mynewbook/figures/overpressureschematics.png" alt="figurecontent" width="600px">

Schematic representation of overpressure due to disequilibrium compaction. Overpressure develops when the rate of sedimentation exceeds the rate of pore pressure diffusion, i.e., water does not have enough time to escape when squeezed within the rock.
:::

Figure {numref}`fig_overpressureGOM` shows maps of pressure gradients in the Gulf of Mexico. 
Data from offshore locations show that overpressure (gradient $>$ 0.44 psi/ft ) starts to develop at ~2 to 3 km of depth below seafloor.  

:::{figure-md} fig_overpressureGOM
<img src="../mynewbook/figures/2-OverpressureGOM.jpeg" alt="figurecontent" width="600px">

Pore pressure gradients in the Gulf of Mexico (GOM). Overpressure (gradient $>$ 0.44 psi/ft) in GOM is mostly due to disequilibrium compaction and often increases with depth (depth increasing from Pleistocene to Miocene). Source: [Rose et al. 2020](https://doi.org/10.1190/INT-2019-0019.1).
:::

%-------------------------------------------------
```{admonition} Example 2.6
Calculate the pore pressure $P_p$ and overpressure parameter $\lambda_p$ in a muddy sediment located offshore with porosity $\phi = 0.298$.
The total depth is 2000 m and the water depth is 500 m (assume a lithostatic gradient of 22 MPa/km below the seafloor). 
Laboratory tests indicate a compaction curve with parameters $\beta = 3.2 \times 10^{-2}$ MPa$^{-1}$ and $\phi_0 = 0.38$. 
How much higher than expected hydrostatic value is the pore pressure?

SOLUTION 

First, calculate total vertical stress: \newline

$
S_v = 10 \text{ MPa/km} \times 0.5 \text{ km} + 22 \text{ MPa/km} \times 1.5 \text{ km} = 38 \text{ MPa}. 
$

Second, calculate effective vertical stress from using the measured porosity and Equation \ref
{eq:compactionexp}:

$
	\sigma_v = - \frac{\ln \left( \phi / \phi_o \right)}{\beta} = 7.6 \text{ MPa} .
$

Third, calculate pore pressure from $S_v = \sigma_v + P_p$, so

$
	P_p = S_v - \sigma_v =
	38 \text{ MPa} - 7.6 \text{ MPa} = 30.40 \text{ MPa}.
$

Hence, the overpressure parameter is 

$
	\lambda_p = \frac{P_p}{S_v} = 	\frac{30.40 \text{ MPa}}{38 \text{ MPa}} = 0.8. \: \: \blacksquare
$
```

%The sand-body encased example is often a consequence of disequilibrium compaction (see Figure \ref{fig:lec2-12}).

%---------------------------------------------------------
### Reservoir depletion
%\label{Sec:ResDep}

Opposite to overpressure, "underpressure" occurs when pore pressure is lower than hydrostatic.
The most common reason of underpressure is reservoir depletion. 
In compartmentalized reservoirs with poor water recharge drive, pore pressure may stay low for long periods of time.
Reservoir depletion usually brings along lower total horizontal stresses which lower the fracture gradient and make drilling problematic because of decreased difficulty to create open-mode fractures.

:::{figure-md} fig_lec2-17
<img src="../mynewbook/figures/2-17.svg" alt="figurecontent" width="600px">

Example of decreased fracture pressure (between 5,100 ft and 5,400 ft) due to depletion of sandy intervals.
:::
	
%================================================================================
## 2.3 Horizontal stresses

%---------------------------------------------------------
### Background

Vertical (effective) stress is not enough to define the state of stress in a solid.
Stresses in horizontal direction are very often different to the stress in vertical direction.
The state of stress can be fully defined by the "principal stresses".
These are three independent normal stresses in directions all perpendicular to each other.
A stress is a principal stress if there is no shear stress on the plane in which it is applied.
Total vertical stress $S_v$ may not be a principal stress, although in most cases it is. 
If vertical stress is a principal stress, then the two other principal stresses are horizontal.
The maximum principal stress in the horizontal case is $S_{Hmax}$ and the minimum horizontal stress is $S_{hmin}$, such that $S_{Hmax} \geq S_{hmin}$ ({numref}`fig_HzStresses`).

:::{figure-md} fig_HzStresses
<img src="../mynewbook/figures/3-20.svg" alt="figurecontent" width="600px">

The stress tensor when vertical stress is a principal stress.
:::

We have seen that total vertical stress is mostly a function of overburden and depth.
Now, what determines horizontal stresses?  
There is not an easy answer for that. 
Many variables affect and limit horizontal stresses.  
First, there are "background" horizontal stresses that develop due to the weight of overburden, its compaction, and "pushing sideways" effect. 
For example, water pushes sideways with all its weight (pressure is the same in all directions). 
Solids push sideways with a fraction of their weight. 
Second, horizontal stresses may deviate from background stresses - to be either more or less compressive. 
Tectonic plate movements are the main contributors to variations of horizontal stress. 
Convergent plates increase horizontal compression. 
Divergent plates decrease horizontal compression. 
Shear stresses develop at transform boundaries.
Other factors include topography, crustal thickening/thinning, mass density anomalies, buoyancy forces, and lithospheric flexure (similar effect of a loaded slab).

:::{figure-md} fig_lec3-16
<img src="../mynewbook/figures/3-16.svg" alt="figurecontent" width="600px">

Example of a transform plate boundary.
:::

The direction of maximum horizontal stress varies with location around the Earth's crust.
Tectonic plate movements are the main contributors the affect the direction of maximum horizontal stress (See {numref}`fig_HzStressGlobalMap`). 

:::{figure-md} fig_HzStressGlobalMap
<img src="../mynewbook/figures/3-18.svg" alt="figurecontent" width="600px">

Horizontal stress map. The direction of maximum horizontal stress is affected by tectonic plate movement. The maximum principal stress is horizontal in compressional and strike-slip stress faulting regimes. The minimum principal stress is horizontal in extensional domains.
:::

%---------------------------------------------------------
### Geological indicators

Geological formations can be indicators of "paleo-stress" direction, that is, the stress that caused such feature at a particular time.
The paleo-stress, however, may be different from the current state of stress in magnitude and direction.
Keep in mind that the Earth crust today is the results of millions of years of plate movement, smashing, and thinning/thickening (see this [great animation](https://dinosaurpictures.org/ancient-earth#150) of the Earth crust evolution since the Precambrian.)
The orientation of fault planes is an indicator of the state of stress that caused such fault. This topic will be seen later in "Fault stability" analysis.
Folding direction also can give an idea of the horizontal stress that produced such fold.
Natural fractures can be indicators of shear or open mode fractures. 
Both are related to the orientation of the state of stress.
Earthquake focal mechanisms tell about the polarity of waves emitted by rock failure, where rock failure is also related to the orientation of the state of stress (to be covered later).

Magmatic and sedimentary dikes are natural hydraulic fractures. They form when a pressurized fluid/sediment mixture opens the subsurface and props the recently opened space with crystallized magma or sediments.
Dikes, like any other hydraulic fracture, open up preferentially against the least principal stress $S_3$.

:::{figure-md} fig_lec3-2
<img src="../mynewbook/figures/3-2.svg" alt="figurecontent" width="600px">

Example of magmatic dike/dyke: large-scale hydraulic fractures.
:::

%---------------------------------------------------------
### In-situ measurement

The only way to know the current magnitude (and direction) of the minimum horizontal stress $S_{hmin}$ (if $S_v > S_{hmin} = S_3$  ) is to measure it.
Subsurface measurements of $S_3$ are based in hydraulic fracturing methods (to be seen in detail later in the course, Chapter 7).
Three types of hydraulic fracture tests are:

1. Extended leak-off test: performed during drilling with drilling mud. The minimum principal stress $S_3$ is measured at about the value of the fracture closure pressure $S_3$.
2. Mini-frac test: Performed for completion purposes before the main hydraulic fracture treatment with fracturing fluid. The analysis to obtain $S_3$ is based on the same principles of the extended leak-off test.
3. Step-rate test: Used for continuous fluid injection. The formation parting pressure (when a hydraulic fracture forms) is related but higher than $S_3$.

:::{figure-md} fig_lec3-3
<img src="../mynewbook/figures/leakofftest_new.png" alt="figurecontent" width="800px">

Schematic example extended leak-off test to determine the minimum principal stress $S_3$. The  fracture propagation pressure (FPP) is higher than $S_3$ (needed to open a fracture) and close to the value of fracture closure pressure (FCP).
:::

%---------------------------------------------------------
### Stress Regimes

The variations of horizontal stress in the lithosphere give rise to three types of stress regimes, depending on the relative magnitude of horizontal stress with respect to vertical stress (See Table below).
Stress is a tensor.
Every stress tensor has three characteristic values called principal stresses $S_1$, $S_2$, and $S_3$ ([eigenvalues](https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors)).
The principal stress $S_1$ is the maximum normal stress value in a given direction (maximum total principal stress).
The principal stress $S_3$ is the minimum normal stress value in a given direction (minimum total principal stress).
The principal stress $S_2$ is an intermediate stress value at a direction perpendicular to $S_1$ and $S_3$. 
{numref}`fig_USGSstressmap` shows a map of the United States (lower 48 states)  with the three types of stress regimes explained in the Table below.
{numref}`fig_TXstressmap` shows the variation of stress regimes and horizontal stress diection in Texas.

Stress regimes in the subsurface according to the Andersonian classification.
| Stress Regime           | $S_1 \geq$  | $S_2 \geq $  | $S_3$        |
|-------------------------|-------------|--------------|--------------|
| Normal Faulting         | $S_v$       | $S_{Hmax}$   | $S_{hmin}$   |
| Strike-Slip Faulting    | $S_{Hmax}$  | $S_v$        | $S_{hmin}$   |
| Reverse/Thrust Faulting | $S_{Hmax}$  | $S_{hmin}$   | $S_v$        |


:::{figure-md} fig_USGSstressmap
<img src="../mynewbook/figures/2-USGS_stressmap.jpg" alt="figurecontent" width="600px">

Stress regimes in the United states. The lines represent the direction of maximum horizontal stress ($S_{Hmax}$). Source: [USGS](https://www.usgs.gov/media/images/new-us-stress-map).
:::

:::{figure-md} fig_TXstressmap
<img src="../mynewbook/figures/2-TexasStressMap_SneeZoback.jpg" alt="figurecontent" width="600px">

Stress regimes and horizontal stress direction in Texas, Oklahoma, and New Mexico. The black lines represent the direction of maximum horizontal stress ($S_{Hmax}$). Source: [Snee and Zoback, 2016](https://doi.org/10.1002/2016GL070974).
:::


#### Normal faulting stress regime

Normal faulting occurs in tectonically passive or extensional environments, such that $ S_v > S_{Hmax} > S_{hmin}$, where $S_1 = S_v$, $S_2 = S_{Hmax}$, $S_3 = S_{hmin}$.
The minimum horizontal stress $S_{hmin}$ can be as low as $\sim 60$\% of $S_v$, but not much lower. 
If lower, sedimentary strata fail creating normal faults due to large differences between effective stresses $\sigma_1 = S_1 - P_p$ and $\sigma_3 = S_3 - P_p$.
Hydraulic fractures in this environment would be vertical (perpendicular to $S_{hmin}$ direction).
Most hydrocarbon-producing basins in the USA are in normal faulting stress regimes.		

:::{figure-md} fig_lec3-22
<img src="../mynewbook/figures/2-StressProfiles.svg" alt="figurecontent" width="600px">

Stress profiles schematic examples. Created with [binder](https://mybinder.org/v2/gh/dnicolasespinoza/GeomechanicsJupyter/master?filepath=HorizontalStresses_Widget.ipynb) based on linear elasticity, constant Young's modulus and tectonic strains increasing linearly with depth.
:::

#### Strike slip faulting stress regime

Strike slip faulting occurs in "mild" tectonically compressive   environments, such that $ S_{Hmax} > S_v > S_{hmin}$ where $S_1 = S_{Hmax}$, $S_2 = S_v$, and $S_3 = S_{hmin}$.
These stress regimes cause strike-slip faults when $S_{Hmax}$ surpasses $ S_{hmin}$ above the frictional limit.
Hydraulic fractures in this environment are vertical and perpendicular to $S_{hmin}$ direction.
Some giant oil fields in the middle East are in strike-slip stress regime.

:::{figure-md} fig_lec3-23
<img src="../mynewbook/figures/3-23.svg" alt="figurecontent" width="600px">

Strike slip faulting schematic examples.
:::

#### Reverse faulting stress regime

Reverse faulting occurs in "strong" tectonically compressive   environments, such that $S_{Hmax} > S_{hmin} > S_v$, where $S_1 = S_{Hmax}$, $S_2 = S_{hmin}$, $S_3 = S_v$.
These stress regimes cause reverse and thrust faults when $S_{Hmax}$ surpasses $S_v$ above the failure limit.
Hydraulic fractures in this environment are horizontal! (perpendicular to $S_v$ direction).
Some unconventional fields in Argentina and Australia are in reverse faulting stress-regime at specific depths.

%\begin{figure}[h] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.65]{./Figures/split/3-24.svg}}
%\caption{Reverse faulting schematic examples}
%\label{fig:lec3-24}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F F


%---------------------------------------------------------
### Ideal orientation of open-mode fractures

Why is the shape of an inflated balloon spherical ({numref}`fig_balloon`)?
Even if you were to inflate the ballon under water, it would be still spherical.
The reason is that pressure around the balloon is the same in all directions.
It would be the atmospheric pressure in air at surface conditions or the water pressure $\rho_w g z$ at seafloor conditions. 
Now, what would be the shape of a balloon inflated under several layers of sediments?
Would it be spherical or not?

The previous section anticipated the hydraulic fractures are perpendicular to the direction of the least principal stress $S_3$.
The reason for such behavior responds to the tendency of nature to go through the path of "least amount of energy".
There is no reason to push away rock in a direction of higher stress if there is another direction in which stress is lower and it is easier to push.
Thus, hydraulic fractures would be perpendicular to the least principal stress as long as $S_3$ is different and lower than $S_2$ and $S_1$.
As a result, the shape of a balloon inflated under several layers of sediment would be a flat ellipsoid with smallest axis in the direction of $S_3$.

:::{figure-md} fig_balloon
<img src="../mynewbook/figures/2-HFideal.svg" alt="figurecontent" width="600px">

Ideal orientation of open-mode fractures.
:::

Let us consider a place in the subsurface like the one shown in {numref}`fig_balloon`.
There are three possible cases for the orientation of a hydraulic fracture depending on the values and orientations of the principal stresses.
In Case 1 the least principal stress is horizontal in the direction of axis 2, hence $S_3 = S_{22}$ (the subindices of stresses are explained in detail in the next chapter).
Case 1 is the one drawn on the top right schematic.
In Case 2 the least principal stress is horizontal in the direction of axis 1, $S_3 = S_{11}$. 
In Case 3 the least principal stress is vertical in the direction of axis 3, $S_3 = S_{33}$. 

Given a state of stress, multistage hydraulic fracturing may result or not in independent fracture planes.
Consider the example in Figure \ref{fig:FracsWellOrient} where $S_{hmin} < S_{Hmax} < S_v$.
The hydraulic fracture planes would always tend to open up against $S_{hmin}$ regardless of the wellbore orientation.
Multiple hydraulic fractures would tend to link on a single plane if started from a vertical wellbore or a horizontal wellbore drilled in the direction of $S_{Hmax}$.
Hydraulic fractures would have much less tendency to link up if started from a horizontal wellbore drilled in the direction of $S_{hmin}$.

:::{figure-md} fig_FracsWellOrient
<img src="../mynewbook/figures/multistagefracs-wellboreorient.png" alt="figurecontent" width="600px">

Geometry of open-mode fractures according to wellbore orientation in normal faulting stress environment.
:::

For example, the Barnett shale Formation near Dallas-Forth Worth is subjected to a normal faulting stress regime.
Furthermore, the maximum horizontal total stress $S_{Hmax}$ is in NE-SW direction (about 60$^{\circ}$ from the North clockwise - {numref}`fig_ExBarnett`).
As a result, the (least) minimum horizontal stress is oriented 30$^{\circ}$ from the North counter-clockwise.
Consequently, hydraulic fractures are expected to be vertical  and the preferential orientation of horizontal wellbores for multistage hydraulic fracturing is either 30$^{\circ}$ from the North counter-clockwise in direction NW or 120$^{\circ}$ from the North clockwise in direction SE.

:::{figure-md} fig_ExBarnett
<img src="../mynewbook/figures/2-HF_hzwell_Barnett.svg" alt="figurecontent" width="600px">

Ideal orientation of horizontal wellbores in the Barnett shale.
:::

%---------------------------------------------------------
## 2.4 Problems

1. Compute the vertical stress gradient resulting from a carbonate rock made of 70\% dolomite and 30\% calcite, porosity 10\% and filled with brine ~1,060 kg/m$^3$. Look up for mineral densities in the web in trusted sources. Provide answer in psi/ft, MPa/km, and ppg.

2. Calculate (without the help of a computer) the total vertical stress in an off-shore location at 10,000 ft of total depth (from surface) for which: water depth is 1,000 m (with mass density 1,030 kg/m$^3$), bulk mass density of rock at the seabed is 1,800 kg/m$^3$ increasing linearly until a depth of 500 m below sea-floor to 2,350 kg/m$^3$ and relatively constant below 500 m below seafloor. Why would rock bulk mass density increase with depth?

3. The following table contains the estimated bulk mass densities for an offshore location in Brazil as a function of true vertical depth sub sea (TVDSS). Water depth is 500 m. Measurements indicate that porosity of shale layers estimated through electrical resistivity measurements.
	
	1. Plot the profiles of $S_v$ v.s. depth (MPa v.s. m and ft v.s psi)
	
	2. Plot the profile of (hypothetical) hydrostatic water pressure. Assume the density of brine is 1,031 kg/m$^3$ in the rock pore space (MPa v.s. m and ft v.s. psi).
	
	3. Additional compaction lab measurements on shale cores indicate a good fitting of the porosity-effective vertical stress relation through Equation \ref{eq:compactionexp}, with parameters $\phi_0 = 0.38$ and $\beta = 3 \times 10^{-2}$ MPa$^{-1}$. Estimate the actual pore pressure in the shale. Is there overpressure? At what depth does it start?
	
	4. According to porosity measurements, does vertical effective stress always increase with depth? Justify. 
	

Note: You are encouraged to summarize all calculations in a single plot as a function of depth (inverted vertical axis): hypothetical pore pressure, actual pore pressure and total vertical stress.

| Material | Depth [m] | Bulk mass density [kg/m³] | Shale porosity [-] |
|----------|-----------|--------------------------|--------------------|
| Water    | 0         | 1025                     | NA                 |
| Water    | 100       | 1026                     | NA                 |
| Water    | 200       | 1026                     | NA                 |
| Water    | 300       | 1030                     | NA                 |
| Water    | 400       | 1030                     | NA                 |
| Water    | 500       | 1031                     | NA                 |
| Sand     | 500       | 1900                     | NA                 |
| Sand     | 600       | 1950                     | NA                 |
| Sand     | 700       | 2190                     | NA                 |
| Sand     | 800       | 2200                     | NA                 |
| Sand     | 900       | 2230                     | NA                 |
| Sand     | 1000      | 2235                     | NA                 |
| Sand     | 1100      | 2240                     | NA                 |
| Shale    | 1200      | 2275                     | 0.305              |
| Shale    | 1300      | 2305                     | 0.297              |
| Shale    | 1400      | 2310                     | 0.286              |
| Shale    | 1500      | 2308                     | 0.281              |
| Shale    | 1600      | 2310                     | 0.285              |
| Shale    | 1700      | 2305                     | 0.293              |
| Shale    | 1800      | 2310                     | 0.307              |
| Shale    | 1900      | 2324                     | 0.305              |
| Shale    | 2000      | 2319                     | 0.298              |


4. Go to [my Github repository](https://github.com/dnicolasespinoza/GeomechanicsJupyter) and download the  files ``HCLonghorn.las`` and ``HCdeviationsurvey.dev``. The files include the well logging data and the well trajectory of a well for the Longhorn Field near Plaquemines Parish, Louisiana. The oilfield is an onshore oilfield. The first one is a well logging  file (.las). You will  find here measured depth (DEPTH [ft] - Track 1) and bulk mass density (ZDNC [g/cc] - Track 27). The second file has the deviation survey of the well. Column 3 is measured depth (MD), column 4 is TVDSS, column 5 is the E-W offset from the surface location, and column 6 is the N-S offset from the surface location. The water depth at this well location is 38 ft. You may assume an average bulk mass density of 2 g/cc between the surface and the beginning of the bulk density data. 

	1. Plot at least one of the following to visualize wellbore deviation: (1) 3D plot of the well (EWoffset, NSoffset, TVD), (2) 2D plot (EWoffset, NSoffset) "bird's-eye view", (3) lower hemisphere projection (See Chapter 6: https://dnicolasespinoza.github.io/ch6_WellboreGeomech.html#mechanical-stability-of-deviated-wellbores Links to an external site.)(plot inclination angles and azimuth angles in a polar coordinate system) using the deviation survey, . 
	2. Plot TVDSS [ft] as a function of MD [ft]. For this simple trajectory you may use a linear fit to relate TVDSS and MD.
	3. Plot bulk density (x-axis) verse TVDSS (ft) (y-axis). 
	4. Compute and plot the total vertical stress (psi) (x-axis) versus TVDSS (ft) (y-axis). Compute and plot also the expected hydrostatic pore pressure.
	
5. Based on the US stress map published by the [USGS](https://www.usgs.gov/media/images/new-us-stress-map), answer the following for the Anadarko Basin near mid-center Oklahoma:
	1. What is the predominant direction of $S_{Hmax}$?. 
	2. What is the predominant stress regime?
	3. What would the ideal orientation of a hydraulic fracture be in this area?	

6. The following image shows a "stress log" for a location in the Permian Basin (onshore):
	1. What is the approximate range of depth shown in the stress log?
	2. What is the approximate depth at the location of the unconventional reservoir (answer specifically at the location of the dashed line - same for following questions)? 
	3. What are the minimum and maximum total horizontal stresses? 
	4. Is the reservoir pressure "hydrostatic"? What is the effective vertical stress?  
	5. What is the stress regime?

:::{figure-md} fig_StressLogPermian
<img src="../mynewbook/figures/2-StressLogPermian.png" alt="figurecontent" width="600px">

Stress log from [Devon](https://doi.org/10.15530/URTEC-2018-2881326). Depth data not available from source.
:::
	
Note: You may use a plot digitizer [example here](https://apps.automeris.io/wpd4/) to obtain numerical data from image files.

%---------------------------------------------------------
## 2.5 Coding support for solving problems

You may use the python code available in the following link at [Google Colab](https://drive.google.com/drive/folders/1rIzjFd5p81JGOSRUkaMiQF018idb1XU3?usp=sharing).
I suggest you use it as "inspiration" and learning, but write your own. 
Make sure to acknowledge any copying and pasting.

%---------------------------------------------------------
## 2.6 Further reading and references

- Fjaer, E., Holt, R.M., Raaen, A.M., Risnes, R. and Horsrud, P., 2008. Petroleum related rock mechanics (Vol. 53). Elsevier. (Chapter 3)
- Flemings, P. B. (2021). A concise guide to geopressure: Origin, prediction, and applications. Cambridge University Press.
- Zoback, M.D., 2010. Reservoir geomechanics. Cambridge University Press. (Chapter 1 and 2). (test)
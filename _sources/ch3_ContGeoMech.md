# 3. Fundamentals of Solid Continuum Mechanics

%================================================================================
## 3.1 Stress tensor

Consider a 3D space with a given right-handed orthogonal coordinate system $\underline{e}_1$, $\underline{e}_2$, $\underline{e}_3$ in directions 1, 2 and 3 ({numref}`fig:lec4-3`).
In a right-handed coordinate system, the first element of the base $\underline{e}_1$ is your index finger, the second element of the base $\underline{e}_2$ is your middle finger, and the third element of the base $\underline{e}_3$ is your thumb (all in your right hand).   

The number that represents the value of a scalar (such as temperature $T$ or pore pressure $P_p$) at a given point $(x_1,x_2,x_3)$ is independent of the coordinate system orientation and origin ({numref}`fig:ScalarVectorTensor`).
However, the numbers that represent the value of a vector (such as velocity $\underline{v}$ or force $\underline{F}$) or a tensor depend on the coordinate system.
A tensor, like stress, also depends on the coordinate system used to express its numerical values.
Read the values $S_{ij}$ as the stress on face perpendicular to base vector $\underline{e}_i$ in the direction of base vector $\underline{e}_j$.
$S_{ij}$ is positive if after a displacement $dx_i$, $S_{ij}$ points in opposite direction to $\underline{e}_j$ ({numref}`fig:lec4-3`).

:::{figure-md} fig:ScalarVectorTensor
<img src="../mynewbook/figures/4-ScalarVectorTensor.png" alt="figurecontent" width="600px">

Examples of scalar, vector and tensor quantities in a shale reservoir.
:::

All stresses $S_{ij}$ can be written as a matrix ({numref}fig:lec4-3}).
The diagonal terms correspond to normal stresses.
The off-diagonal terms correspond to shear stresses.
Off-diagonal stresses are symmetric $S_{ij}=S_{ji}$ ($i \neq j$) because of angular momentum equilibrium (the element does not spin around any axis). 
Hence, the stress tensor is symmetric with respect to the diagonal (top-left to bottom-right).	 

:::{figure-md} fig:lec4-3
<img src="../mynewbook/figures/4-3.svg" alt="figurecontent" width="600px">

Graphical and mathematical representation of the  stress tensor. Read $S_{ij}$ as the stress on face perpendicular to $\underline{e}_i$ in the direction $\underline{e}_j$. $S_{ij}$ is positive if after a positive displacement  $dx_i$, $S_{ij}$ points in direction opposite to the directions of the base element $\underline{e}_j$. All stresses in this figure have been drawn to be positive.
:::

Since the stress tensor is symmetric and is composed by all real numbers, there exist 3 real-valued eigenvalues that we  call principal stresses and denote $S_1 \geq S_2 \geq S_3$. 
Each principal stress (eigenvalue) is associated with a principal direction (eigenvector).
Principal directions are always perpendicular to each other in a cartesian coordinate system.
When we write the stress tensor in the coordinate system aligned with directions of the principal stresses, the stress tensor results in diagonal elements populated by the principal stresses  and zeros in the off-diagonal places.
Usually, the principal stresses are ordered from top to bottom starting with $S_1$ at the top ({numref}`fig:Principi`}).

:::{figure-md} fig:Principi
<img src="../mynewbook/figures/4-4.svg" alt="figurecontent" width="600px">

Principal stresses and directions. Every tensor with non-zero off-diagonal terms can be simplified to a principal stress tensor with zero off-diagonal terms at the orientation that coincides with the directions of principal stresses.
:::

% + + + + + + + + + + + + + + + + + + + + + + + +
```{admonition} Example 3.1
For the following stress tensor obtained for the Neuquen Basin: a) calculate the eigenvalues (principal stresses), b) calculate eigenvectors (principal directions), c) answer what the stress regime is, and d) calculate the angle between the North and the direction of $S_{Hmax}$ in clockwise direction.

$
	\underset{=}{\sigma} = 
	\left[
	\begin{array}{ccc}
		\sigma_{NN} & \sigma_{NE}  &  \sigma_{ND} \\
		\sigma_{EN} & \sigma_{EE}  &  \sigma_{ED} \\
		\sigma_{DN} & \sigma_{DE}  &  \sigma_{DD}
	\end{array}	\right] =
	\left[	
	\begin{array}{ccc}
		8580 & 100  &  0    \\
		 100 & 9900  &  0    \\
		   0 &    0  &  9000
	\end{array}	\right]	\text{psi}
$

Note: The stress tensor is written in the North-East-Down coordinate system.

SOLUTION 

First, find an appropiate math solver that can calculate eigenvalues and eigenvectors (Python, Matlab, Wolfram Alpha, etc.)
We will use Wolfram Alpha online in this solution.
Go to [Wolfram Alpha](https://www.wolframalpha.com/) and enter:

``eigenvalues`` $ \left\{ \left\{ 8580,100,0 \right\}, \left\{ 100,9900,0 \right\}, \left\{0,0,9000 \right\} \right\} $

The answer to this querry is (click in "approximate forms"):

$
\left\{  
\begin{array}{ccc}
		\lambda_1 & =  & 9907.53 \\
		\lambda_2 & =  & 9000 \\
		\lambda_3 & =  & 8572.47
	\end{array}	\right.
$

and

$
\left\{  
\begin{array}{ccc}
		\nu_1 & =  & (0.0753277,1,0) \\
		\nu_2 & =  & (0,0,1) \\
		\nu_1 & =  & (-13.2753,1,0)
	\end{array}	\right.
$

a,b) The principal stresses are 

$
\left\{  
\begin{array}{ccc}
		S_{Hmax} & =  & 9907.53  \text{ psi}\\
		S_v & =  & 9000 \text{ psi} \\
		S_{hmin} & =  & 8572.47 \text{ psi}
	\end{array}	\right.
$

Figuring out what are horizontal and vertical stresses depends on the eigenvectors.
First, let's start with the easiest one.
Eigenvector $\nu_2 =  (0,0,1)$ points straight in the downward direction, i.e., no horizontal component either in N or E directions (first two coordinates are zeros).
Hence,  $\lambda_2 =  9000 $ is in the vertical direction and is $S_v$.
The other two ($\lambda_1$ and $\lambda_3$) are the horizontal stresses, where $\lambda_1 > \lambda_3$ and therefore $\lambda_1 = S_{Hmax}$.

c) $S_v$ is the intermediate stress in this case, hence, this location is under strike-slip stress regime according to the Andersonian classification. 

d) Eigenvector $\nu_1 =  (0.0753277,1,0)$ gives the direction of $\lambda_1 = S_{Hmax}$.
Let's read the vector $\nu_1$ according to the NED coordinate system: it goes North +0.0753277 units, it goes East +1.0 units, it goes Down 0.0 units.
Drawing this in a 3D coordinate system results in a vector in the NE horizontal plane pointing mostly towards the East.
The angle between the East axis and the vector is $\arctan (0.0753277/1) = 0.075 \text{ rad} = 4.3 ^{\circ}$, i.e., $4.3 ^{\circ}$ from the East axis towards the North axis. 
Hence, the angle between the North and the vector $\nu_1$ is $90^{\circ} - 4.3 ^{\circ} = 85.7^{\circ}$. $\: \: \blacksquare$
```
% + + + + + + + + + + + + + + + + + + + + + + + +

%-----------------------------------------------------
### 3.1.1 Cauchy's equations of stress equilibrium

Equilibrium of stresses requires summation of forces in all directions to be zero when the object is not moving (no acceleration $\underline{a}$, thus $m \underline{a} = 0$).
Consider the schematic in {numref}`fig:lec4-5`.
Summation of forces in direction 1, where the term $\rho V b_1$ is the body force component, proportional to the solid mass density $\rho$ and volume $V$, and the acceleration component $b_1$, requires

$
\begin{array}{rcl}
	\sum F_1 & = & 0 \\
	\sum F_1 & =  
	& + S_{11} dx_2 dx_3 - \left[ S_{11} + (\frac{\partial S_{11}}{\partial x_1}) dx_1 \right] dx_2 dx_3 \\
	& & + S_{21} dx_1 dx_3 - \left[ S_{21} + (\frac{\partial S_{21}}{\partial x_2}) dx_2 \right] dx_1 dx_3 \\
	& & + S_{31} dx_1 dx_2 - \left[ S_{31} + (\frac{\partial S_{31}}{\partial x_3}) dx_3 \right] dx_1 dx_2 \\
	& & - \rho (dx_1 dx_2 dx_3) b_1 = 0	
\end{array}
$

which eventually reduces to the following equation when canceling terms and dividing by the element volume $(dx_1 dx_2 dx_3)$

```{math}
:label: eq:StressDiv
 	\frac{\partial S_{11}}{\partial x_1} + 	
	\frac{\partial S_{21}}{\partial x_2} + 
	\frac{\partial S_{31}}{\partial x_3} - 
	\rho b_1 = 0
```

:::{figure-md} fig:lec4-5
<img src="../mynewbook/figures/4-5.svg" alt="figurecontent" width="600px">

Equilibrium of forces in direction 1. $S_{21}$,  $S_{31}+\frac{\partial S_{31}}{\partial x_3} dx_3$ and $S_{11}+\frac{\partial S_{11}}{\partial x_1} dx_1$ are applied on the non-visible faces of the solid element.
:::

A generalization of equilibrium in all directions with all stresses ({numref}`fig:lec4-3`) yields the Cauchy's equilibrium equations:

```{math}
:label: eq:Cauchy
 	\displaystyle
	\left\lbrace
	\begin{array}{rcl}
	\cfrac{\partial S_{11}}{\partial x_1} + 	
	\cfrac{\partial S_{21}}{\partial x_2} + 
	\cfrac{\partial S_{31}}{\partial x_3} - 
	\rho b_1 & = & 0 \\	
	\cfrac{\partial S_{12}}{\partial x_1} + 	
	\cfrac{\partial S_{22}}{\partial x_2} + 
	\cfrac{\partial S_{32}}{\partial x_3} - 
	\rho b_2 & = & 0 \\
	\cfrac{\partial S_{13}}{\partial x_1} + 	
	\cfrac{\partial S_{23}}{\partial x_2} + 
	\cfrac{\partial S_{33}}{\partial x_3} - 
	\rho b_3 & = & 0 \\
\end{array}
\right.
```

%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.65]{./Figures/split/4-6.svg}}
%\caption{Cauchy's equations of equilibrium}
%\label{fig:lec4-6}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

%-----------------------------------------------------
### 3.1.2 Application of Cauchy's equations for total vertical stress calculation

Consider a half-space where the surface coincides with the origin of the coordinate system and gravity $g$ points in direction 3, hence $b_3 = g$ in Eq. \ref{eq:Cauchy}.
We assume infinite extension in directions 1 and 2, therefore there are no variations in directions 1 and 2, such that $\partial()/\partial x_1 = \partial()/\partial x_2 = 0$.
Notice there are 6 unknowns and 3 equations in Eq. {eq}`eq:Cauchy` (remember $S_{ij} = S_{ji}$ ).
The only equation we can solve is the third one.
Integration of the third equation yields the (vertical) stress $S_{33}$,


```{math}
:label: eq:S33
 	S_{33}(x_3) = \int_0^{x_3} \rho(x_3) g \: dx_3
```

equivalent to Eq. {eq}`eq_VertStressGral`.

:::{figure-md} fig:lec4-7
<img src="../mynewbook/figures/4-7.svg" alt="figurecontent" width="600px">

Stress gradient in a solid half-space and derivation of total vertical stress $S_{33}$ as a function of depth.
:::

You may wonder "what about $S_{11}$ and $S_{22}$"?
The horizontal stresses cannot be determined with the current equations.
The solution to this problem will be developed in section \ref{sec:CalcHzStress}.

%-----------------------------------------------------
### 3.1.3 Continuum mechanics solution of an arbitrary problem

{numref}fig:potato-eq} shows an example of an arbitrary shaped continuous solid subjected to external stresses $\underline{t}$, external forces $\underline{F}$, body forces $\underline{b}$, and displacement constraints (bottom fixture). 
As highlighted before, notice that there are 6 unknowns (9 unknowns if displacements are included) and 3 equations in Cauchy's equations of equilibrium (Eq. {eq}`eq:Cauchy`).
The solution of a general problem with arbitrary boundary conditions requires more equations to have a determined problem (as many equations as unknowns).
The solution of such problem requires knowledge of the material properties.
We need equations that relate displacement to stresses. These equations divide in two types:

1. kinematic equations, that relate displacements to strains, and
2. constitutive equations, that relate strains to stresses.
		
The following section describes the simplest form of kinematic and constitutive equations. 

:::{figure-md} fig:potato-eq
<img src="../mynewbook/figures/4-8.svg" alt="figurecontent" width="600px">

A general equilibrium problem. The solution of a general continuum mechanics problem requires knowledge of material properties and solid deformation.
:::

%================================================================================
## 3.2 Kinematic equations: displacements and strains

Applications of stresses result in solid deformation and displacements.
{numref}`fig:FreeFEMexample` shows an example of a solid body and the corresponding displacement vector field (traces the displacements from the original to the deformed state).
In this particular case, the solid is anchored at the bottom and deforms due to the application of a force (from left to right) on the top.
Hence, displacements at the bottom are zero and displacements on the top are the maximum.

:::{figure-md} fig:FreeFEMexample
<img src="../mynewbook/figures/4-DispStrains.PNG" alt="figurecontent" width="600px">

Example of displacement vector field for a solid anchored at the bottom and with a force (left to right) applied on the top. All other solid surfaces (but the bottom) can move freely. Strains are a function of the displacement field.
:::

Yet, absolute displacements are not enough to determine stresses.
A solid may translate or rotate in space without development of any internal stresses required to equilibrate external actions (imagine a cookie "floating" in zero gravity within the  International Space Station [video example](https://www.youtube.com/watch?v=q5uV4fTV0Zo).
   
Let's look at {numref}`fig:kinematics2D` in order to relate displacements to strains:

1. A solid is stretched on its face 1 (perpendicular to $\underline{e}_1$) in direction 1 only. This type of deformation produces a change of volume of the solid and therefore contributes to volumetric strain. The resulting deformation or strain (change of length divided original length) is
```{math}
:label: eps11
 		\varepsilon_{11} = \frac{\Delta u_1}{\Delta x_1}
```
2. (CENTER) A solid is stretched on its face 2 in direction 2 only.  This type of deformation also contributes to volumetric strain. The resulting strain is
```{math}
:label: eps22
 		\varepsilon_{22} = \frac{\Delta u_2}{\Delta x_2}
```
3. (RIGHT) The solid is now distorted. Notice that the faces do not make a right angle anymore. The change of volume is negligible for small deformations. The resulting distortion or shear strain is proportional to the change in angle between faces 1 and 2. Hence the change of angle is $\pi - \left[ \pi - \arctan(\Delta u_1 / \Delta x_2) + \arctan(\Delta u_2 / \Delta x_1) \right] $. The shear strain is 1/2 of the total change of  the angle and therefore (for small changes $\arctan(x/y) \sim x/y$)
```{math}
:label: eps12
 		\varepsilon_{12} = \frac{1}{2} \left( \frac{\Delta u_1}{\Delta x_2} + \frac{\Delta u_2}{\Delta x_1} \right)
```
The average in the equation ensures capturing shear distortion rather than rotation. 		

:::{figure-md} fig:kinematics2D
<img src="../mynewbook/figures/4-10.svg" alt="figurecontent" width="600px">

Strain equations for small deformations.
:::

Strains do not quantify the absolute value of displacements, but its variation in space (derivative with respect to $x_i$).
All other strains are found with similar equations in the 3D case. 
Similarly to the stress tensor, strains can be organized in a tensor where elements in the diagonal contribute to volumetric strain, and off-diagonal elements are shear strains.

```{math}
	:label: eq:straintensor
 	\underset{=}{\varepsilon} = 
	\left[
	\begin{array}{ccc}
		\cfrac{\partial u_1}{\partial x_1} & \cfrac{1}{2} \left( \cfrac{\partial u_1}{\partial x_2} + \cfrac{\partial u_2}{\partial x_1} \right) &  \cfrac{1}{2} \left( \cfrac{\partial u_1}{\partial x_3} + \cfrac{\partial u_3}{\partial x_1} \right)\\
		\cfrac{1}{2} \left( \cfrac{\partial u_2}{\partial x_1} + \cfrac{\partial u_1}{\partial x_2} \right) & \cfrac{\partial u_2}{\partial x_2} & \cfrac{1}{2} \left( \cfrac{\partial u_2}{\partial x_3} + \cfrac{\partial u_3}{\partial x_2} \right)\\
		\cfrac{1}{2} \left( \cfrac{\partial u_3}{\partial x_1} + \cfrac{\partial u_1}{\partial x_3} \right) &  \cfrac{1}{2} \left( \cfrac{\partial u_3}{\partial x_2} + \cfrac{\partial u_2}{\partial x_3} \right) & \cfrac{\partial u_3}{\partial x_3}	
	\end{array}		
	\right] =	
	\left[
	\begin{array}{ccc}
		\varepsilon_{11} & \varepsilon_{12}  &  \varepsilon_{13} \\
		\varepsilon_{21} & \varepsilon_{22}  &  \varepsilon_{23} \\
		\varepsilon_{31} & \varepsilon_{32}  &  \varepsilon_{33}
	\end{array}		
	\right] 
```

The summation of all diagonal terms yields the volumetric strain 
```{math}
	:label: eq:volstrain
	\varepsilon_{vol} = \varepsilon_{11} + \varepsilon_{22} + \varepsilon_{33} 
```

% + + + + + + + + + + + + + + + + + + + + + + + +
```{admonition} Example 3.2
Demonstrate the equality in Eq. {eq}`eq:volstrain` from simple geometrical concepts. Hint: the initial volume of the solid is $\Delta x_1 \Delta x_2 \Delta x_3$. 

SOLUTION 

The definition of volumetric strain is the ratio between the change of volume $\Delta V$ and the initial volume $V_0$:
$
\varepsilon_{vol} =  \frac{\Delta V}{V_0}
$

For an elementary cubic volume with initial volume $\mathrm{d} x_1 \mathrm{d} x_2 \mathrm{d} x_3$ and volume after deformation $(\mathrm{d} x_1 + \mathrm{d}u_1)(\mathrm{d} x_2 + \mathrm{d}u_2)(\mathrm{d} x_3 + \mathrm{d} u_3)$, the equation above results

$
\varepsilon_{vol} =  \frac{[(\mathrm{d} x_1 + \mathrm{d}u_1)(\mathrm{d} x_2 + \mathrm{d}u_2)(\mathrm{d} x_3 + \mathrm{d}u_3) - (\mathrm{d} x_1 \mathrm{d} x_2 \mathrm{d} x_3)]}{(\mathrm{d} x_1 \mathrm{d} x_2 \mathrm{d} x_3)}
$

Let us discard all the products containing $\mathrm{d}u_i \mathrm{d}u_j$ and also $\mathrm{d}u_1 \mathrm{d}u_2 \mathrm{d}u_3$ because they are much smaller than the other terms including just one $\mathrm{d}u_i$ ($\mathrm{d}u_i << \mathrm{d}x_j $), then

$
\varepsilon_{vol} \sim  \frac{(\mathrm{d} x_1 \mathrm{d} x_2 \mathrm{d}u_3 + 
							 \mathrm{d} x_1 \mathrm{d} x_3 \mathrm{d}u_2 +
							 \mathrm{d} x_2 \mathrm{d} x_3 \mathrm{d}u_1)}
							 {(\mathrm{d} x_1 \mathrm{d} x_2 \mathrm{d} x_3)}
				=  \frac{\mathrm{d}u_1}{\mathrm{d} x_1} + 
				   \frac{\mathrm{d}u_2}{\mathrm{d} x_2} + 
				   \frac{\mathrm{d}u_3}{\mathrm{d} x_3} 
				= \varepsilon_{11} + \varepsilon_{22} + \varepsilon_{33} \: \: \blacksquare
$
```
% + + + + + + + + + + + + + + + + + + + + + + + +

%================================================================================
## 3.3 Constitutive equation: stress-strain relationships

Constitutive equations tell us how a solid deforms (in time) as a response to stresses, to changes of temperature and to changes of pore pressure among others.
How to choose a constitutive equation depends on the material properties, the magnitude of strain changes, the magnitude of stresses, and the loading rate among other factors.

:::{figure-md} fig:lec4-12
<img src="../mynewbook/figures/4-12.svg" alt="figurecontent" width="600px">

Example of deformations imparted by an applied stress.
:::

The simplest constitutive relationship for solids is linear elasticity, in which stresses and strains are linearly related by constant coefficients.
The examples in {numref}`fig:elasticity1D2D3D` correspond to applications of linear elasticity in various dimensions:

1. (TOP) Hooke's law: the force $F$ [N] required to produce an elongation $\Delta x$ [m] in a spring with mechanical constant $k$ [N/m] is 
	```{math}
			F = k \Delta x
	```
2. (MIDDLE) Consider a prismatic solid bar with cross sectional area $A$ and length $L$. The force required to produce an elongation $\Delta x$ [m] is inversely proportional to $L$, and proportional to proportional to $A$, and $E$ (the stiffness modulus of the solid), such that 
	```{math}
		\frac{F}{A} = E \frac{\Delta x}{L}
	```	
	which can be expressed as stress $\sigma$ and strain $\varepsilon$
	```{math}
		\sigma = E \varepsilon
	```
3. (BOTTOM) In general, the stress tensor $\underset{=}{\sigma}$ is proportional to the strain tensor $\underset{=}{\varepsilon}$ through the stiffness tensor $\underset{=}{C}$
	```{math}
		\underset{=}{\sigma} = \underset{=}{C} \: \underset{=}{\varepsilon}
	```		

:::{figure-md} fig:elasticity1D2D3D
<img src="../mynewbook/figures/4-13.svg" alt="figurecontent" width="600px">

From Hooke's law to generalized 3D linear elasticity.
:::

%--------------------------------------------------------------
### 3.3.1 Linear isotropic elasticity

Consider a prismatic solid with length $L$ to which we apply a stress $\sigma_{33}$ on top face 3 ({numref}`fig:YoungPoisson`). 
The bottom face is not allowed to move in direction 3 but it can slide sideways. 
The four other faces are free to move in all directions. 
Notice that the top face can also deform in directions 1 and 2.
The Young modulus $E$ is defined as the ratio between the applied stress $\sigma_{33}$ and the resulting strain (in the direction of the applied stress) $\varepsilon_{33}$ 	

```{math}
:label: eq:YoungDef
		E = \frac{\sigma_{33}}{\varepsilon_{33}}
```

The solid will most likely tend to enlarge in the direction perpendicular to the stress applied. 
The Poisson ratio (greek letter nu) is defined as (-1) times the ratio between the strain perpendicular to the applied stress $\varepsilon_{11}$ (or $\varepsilon_{22}$) and the strain in the direction of the applied stress $\varepsilon_{33}$ 
	
```{math}
:label: eq:PoissonDef
	\nu = -\frac{\varepsilon_{11}}{\varepsilon_{33}}

```	
These two coefficients are the two coefficients conventionally used as elasticity constants in continuum mechanics. 
We will see later that in the subsurface we almost never find conditions of laterally "unconfined" stress loading like the one shown in {numref}`fig:YoungPoisson`.	

:::{figure-md} fig:YoungPoisson
<img src="../mynewbook/figures/4-14.svg" alt="figurecontent" width="600px">

Unconfined stress loading (compression) of a linear elastic isotropic solid. Because the solid is isotropic, the same equations are valid for compression in any other direction, and also in tension.
:::

The real behavior of rocks differs from the linear elastic assumption.
{numref}`fig:YoungLab` shows a schematic representation of a typical unconfined loading test.
The figure plots axial stress $\sigma_a$ in the vertical axis and axial strain $\varepsilon_a$ in the horizontal axis.
Often, rock plugs are not perfectly parallel or may have some microcracks.
Both features make the initial loading stress-strain behavior look less stiff than the actual rock stiffness.
After the initial loading, the rock may show a linear response -where the Young modulus is measured- followed by softening approaching rock failure and the peak stress.
When the test is performed under unconfined conditions, the peak stress is termed the "unconfined compressive strength (UCS)" of the rock (further explained in Section \ref{Ch:Failure}). 
The Poisson ratio can be measured in the same range of the measurement of $E$ when lateral strain transducers are available.

:::{figure-md} fig:YoungLab
<img src="../mynewbook/figures/YoungLab.png" alt="figurecontent" width="600px">

Schematic of stress-strain curve during rock uniaxial loading in the laboratory.
:::

:::{figure-md} fig:YoungPoissonLab
<img src="../mynewbook/figures/YoungPoissonLab.png" alt="figurecontent" width="600px">

Actual laboratory measured stress-strain response during rock axial (deviatoric $\Delta \sigma_a$) loading. Data analysis permits recovering the Young's modulus and the Poisson's ratio. The data clearly shows the transition of volumetric strain from positive to negative changes, which clearly shows rock damage before the peak failure stress. Elastic property measurement $E$ and $\nu$ should be done with minimum or no damage.   
:::


The Young modulus of sediments and rocks varies widely. 
{numref}`fig:YoungSummary` shows typical values of Young's modulus.

:::{figure-md} fig:YoungSummary
<img src="../mynewbook/figures/3-YoungModulusSummary.png" alt="figurecontent" width="600px">

Typical Young moduli for sediments and rocks. The values correspond to "quasi-static" loading from stress-strain response. SS: sandstone; SiS: Siltstone; Sh: Shale; Gr: Granite.
:::

% + + + + + + + + + + + + + + + + + + + + + + + +
```{admonition} Example 3.3

Compute the (axial) strain expected for a rock subjected to 3,000 psi of (axial) stress under unconfined axial loading for:
1. A soft mudrock with E = 1 GPa
2. A soft sandstone with E = 10 GPa
3. A hard limestone with E = 50 GPa 

SOLUTION 

Let us work in SI units:
$
	\sigma_a = 3000 \text{ psi} = 3000 \frac{1}{145} \text{ MPa} = 20.7 \text{ MPa}
$

Then 

$
	\varepsilon_a(1 \text{ GPa}) = \frac{\sigma_a}{E} = \frac{20.7 \text{ MPa}}{1000 \text{ MPa}} = 0.0207 = 2.07 \%
$
$
	\varepsilon_a(10 \text{ GPa}) = \frac{\sigma_a}{E} = \frac{20.7 \text{ MPa}}{10000 \text{ MPa}} = 0.00207 = 0.207 \%
$
$
	\varepsilon_a(50 \text{ GPa}) = \frac{\sigma_a}{E} = \frac{20.7 \text{ MPa}}{50000 \text{ MPa}} = 0.00041 = 0.041 \%
$

Notice that rocks can be quite stiff and even for an effective stress as large as 3,000 psi (equivalent to a depth onshore of ~5,000 ft under hydrostatic pore pressure), the deformation is in the order of 1\% to 0.1\% or less. $\: \: \blacksquare$

```
% + + + + + + + + + + + + + + + + + + + + + + + +


%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.65]{./Figures/split/4-16.svg}}
%\caption{Example of strain calculation with soft and stiff geomaterials.}
%\label{fig:lec4-X}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F F

%---------------------------------------------------------
### 3.3.2 The isotropic solid in Voigt notation

A generalization of the Young's modulus and Poisson's ratio equations (Eq. {eq}`eq:YoungDef` and {eq}`eq:PoissonDef`) in all directions leads to the 3 independent equations.

```{math}
	\left\lbrace
	\begin{array}{rcl}
		\varepsilon_{11} & = & +\cfrac{1}{E} \: \sigma_{11} -\cfrac{\nu}{E} \: \sigma_{22} -\cfrac{\nu}{E} \: \sigma_{33}\\
		\varepsilon_{22} & = &  -\cfrac{\nu}{E} \: \sigma_{11} +\cfrac{1}{E} \: \sigma_{22} - \cfrac{\nu}{E} \: \sigma_{33}\\		
		\varepsilon_{33} & = & -\cfrac{\nu}{E} \: \sigma_{11} -\cfrac{\nu}{E} \: \sigma_{22} + \cfrac{1}{E} \: \sigma_{33}			
	\end{array}
	\right.
```

In addition, shear strains $\varepsilon_{ij}$ are proportional to the applied shear stress through shear modulus $G=E/[2(1+\nu)]$, such that,

```{math}
	\left\lbrace
	\begin{array}{rcl}
		2 \varepsilon_{12} & = & \cfrac{1}{G} \: \sigma_{12}\\
		2 \varepsilon_{13} & = & \cfrac{1}{G} \: \sigma_{13}\\	
		2 \varepsilon_{23} & = & \cfrac{1}{G} \: \sigma_{23}	
	\end{array}
	\right.
```

Hence, all six equations permit putting together the shear strain tensor $\underset{=}{\varepsilon}$ as a function of the stress tensor $\underset{=}{\sigma}$ through compliance fourth-order tensor $\underset{=}{D}$.

```{math}
	\underset{=}{\varepsilon} = \underset{=}{D} \: \underset{=}{\sigma}
```	

For ease of calculation, we will express the stress and strain tensors as $6 \times 1$ matrices, such that $\underset{=}{D}$ will be a $6 \times 6$ matrix. 
This notation is called Voigt notation.
Hence, fourth-order tensor $\underset{=}{D}$ can be expressed as a $6 \times 6$ matrix:

```{math}
:label: eq:ComplianceMatrix
	\left[
		\begin{array} {c}
			\varepsilon_{11} \cfrac{}{}\\ 
			\varepsilon_{22} \cfrac{}{}\\ 
			\varepsilon_{33} \cfrac{}{}\\
			2 \varepsilon_{23} \cfrac{}{}\\
			2 \varepsilon_{13} \cfrac{}{}\\
			2 \varepsilon_{12} \cfrac{}{}
		\end{array}
	\right] =
	\left[
	\begin{array}{cccccc}
		+\cfrac{1}{E} & -\cfrac{\nu}{E} & -\cfrac{\nu}{E} & 0 & 0 & 0\\
		-\cfrac{\nu}{E} & +\cfrac{1}{E} & -\cfrac{\nu}{E} & 0 & 0 & 0\\
		-\cfrac{\nu}{E} & -\cfrac{\nu}{E} & +\cfrac{1}{E} & 0 & 0 & 0\\
		0 & 0 & 0 & \cfrac{2(1+\nu)}{E} & 0 & 0 \\ 				
		0 & 0 & 0 & 0 & \cfrac{2(1+\nu)}{E} & 0 \\
		0 & 0 & 0 & 0 & 0 & \cfrac{2(1+\nu)}{E}
	\end{array}
	\right] \:
	\left[
		\begin{array} {c}
			\sigma_{11} \cfrac{}{}\\ 
			\sigma_{22} \cfrac{}{}\\ 
			\sigma_{33} \cfrac{}{}\\
			\sigma_{23} \cfrac{}{}\\
			\sigma_{13} \cfrac{}{}\\
			\sigma_{12} \cfrac{}{}
		\end{array}
	\right]
```

For example, let us apply a stress $\underset{=}{\sigma} = [0,0,\sigma_{33},0,0,0]^T$ as in example in {numref}`fig:YoungPoisson`. 
The result of $\underset{=}{D} \: \underset{=}{\sigma}$ is 

$ \underset{=}{\varepsilon} = \left [ -\cfrac{\nu}{E} \: \sigma_{33},-\cfrac{\nu}{E} \: \sigma_{33},\cfrac{1}{E} \: \sigma_{33},0,0,0 \right]^T 
$

which are the same strains we found above in the definition of $E$ and $\nu$.

%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.65]{./Figures/split/4-17.svg}}
%\caption{Compliance matrix}
%\label{fig:lec4-X}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F F

The inverse of the compliance matrix is the stiffness matrix $\underset{=}{C} = \underset{=}{D}^{-1}$ and let us calculate stress as a function of strain.

```{math}
:label: eq:StiffnessMatrix
	\left[
		\begin{array} {c}
			\sigma_{11} \\ 
			\sigma_{22} \\ 
			\sigma_{33} \\
			\sigma_{23} \cfrac{}{} \\
			\sigma_{13} \cfrac{}{} \\
			\sigma_{12} \cfrac{}{}
		\end{array}
	\right]	
	= \cfrac{E}{(1+\nu)(1-2\nu)}
	\left[
	\begin{array}{cccccc}
		1-\nu & \nu & \nu & 0 & 0 & 0\\
		\nu & 1-\nu & \nu & 0 & 0 & 0\\
		\nu & \nu & 1-\nu & 0 & 0 & 0\\
		0 & 0 & 0 & \cfrac{(1-2\nu)}{2} & 0 & 0 \\ 				
		0 & 0 & 0 & 0 & \cfrac{(1-2\nu)}{2} & 0 \\
		0 & 0 & 0 & 0 & 0 & \cfrac{(1-2\nu)}{2}
	\end{array}
	\right]
	\:
	\left[
		\begin{array} {c}
			\varepsilon_{11} \\ 
			\varepsilon_{22} \\ 
			\varepsilon_{33} \\
			2 \varepsilon_{23} \cfrac{}{} \\
			2 \varepsilon_{13}  \cfrac{}{}\\
			2 \varepsilon_{12} \cfrac{}{}
		\end{array}
	\right]
```

%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.65]{./Figures/split/4-18.svg}}
%\caption{Stiffness matrix}
%\label{fig:lec4-X}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F F

Voigt notation is easier to code in computer codes that work with matrices.

The Lam\'e equations are the same equations shown above but use the Lam\'e parameters $\lambda$ and $\mu$ instead of $E$ and $\nu$.
For example, let us write the first equation of the product of the stiffness tensor and the strain tensor in Voigt notation:

$
	\sigma_{11}  = \cfrac{E}{(1+\nu)(1-2\nu)}
	\left[ (1-\nu) \varepsilon_{11} + \nu \varepsilon_{22} + \nu \varepsilon_{33} \right]  
$

or equivalently

$
	\sigma_{11}  = \cfrac{\nu E}{(1+\nu)(1-2\nu)}
	(\varepsilon_{11} + \varepsilon_{22} + \varepsilon_{33})
	+  \cfrac{\nu E}{(1+\nu)(1-2\nu)} \left( -1 + \cfrac{1-\nu}{\nu} \right) \varepsilon_{11}
$

where the Lam\'e parameters are:

```{math}
	\lambda = \cfrac{\nu E}{(1+\nu)(1-2\nu)} 
```

and

```{math}
	2\mu =  \cfrac{\nu E}{(1+\nu)(1-2\nu)} \left( -1 + \cfrac{1-\nu}{\nu} \right) = \cfrac{E}{(1+\nu)}
```

Notice that $\mu = G$, the shear modulus as defined above.
Putting equations in all directions together yields the complete set of Lam\'e's equations: 

```{math}
:label: eq:LameFull
	\left\lbrace
	\begin{array}{rcl}
		\sigma_{11} & = & (\lambda + 2 \mu) \: \varepsilon_{11} + \lambda \: \varepsilon_{22} + \lambda \: \varepsilon_{33}\\
		\sigma_{22} & = & \lambda \: \varepsilon_{11} + (\lambda + 2 \mu) \: \varepsilon_{22} + \lambda \: \varepsilon_{33}\\	
		\sigma_{33} & = & \lambda \: \varepsilon_{11} + \lambda \: \varepsilon_{22} + (\lambda + 2 \mu) \: \varepsilon_{33}\\
		\sigma_{23} & = & 2 \mu \: \varepsilon_{23}\\
		\sigma_{13} & = & 2 \mu \: \varepsilon_{13}\\
		\sigma_{12} & = & 2 \mu \: \varepsilon_{12}\\
	\end{array}
	\right. \text{.}
```

%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.65]{./Figures/split/4-19.svg}}
%\caption{Lam\'e equations}
%\label{fig:lec4-X}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F F

% + + + + + + + + + + + + + + + + + + + + + + + +
```{admonition} Example 3.4

Write the Lam\'e equations (Eq. {eq}`eq:LameFull`) in matrix format using the Voigt notation.

SOLUTION 

$
	\left[
		\begin{array} {c}
			\sigma_{11} \\ 
			\sigma_{22} \\ 
			\sigma_{33} \\
			\sigma_{23} \\
			\sigma_{13} \\
			\sigma_{12} 
		\end{array}
	\right]	
	= 
	\left[
	\begin{array}{cccccc}
		\lambda + 2\mu & \lambda & \lambda & 0 & 0 & 0\\
		\lambda & \lambda + 2 \mu & \lambda & 0 & 0 & 0\\
		\lambda & \lambda & \lambda + 2 \mu & 0 & 0 & 0\\
		0 & 0 & 0 & \mu & 0 & 0 \\ 				
		0 & 0 & 0 & 0 & \mu & 0 \\
		0 & 0 & 0 & 0 & 0 & \mu
	\end{array}
	\right]
	\:
	\left[
		\begin{array} {c}
			\varepsilon_{11} \\ 
			\varepsilon_{22} \\ 
			\varepsilon_{33} \\
			2 \varepsilon_{23} \\
			2 \varepsilon_{13} \\
			2 \varepsilon_{12} 
		\end{array}
	\right] \: \: \blacksquare
$
```
% + + + + + + + + + + + + + + + + + + + + + + + +

%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.65]{./Figures/split/%4-20.svg}}
%\caption{Example with Voigt notation}
%\label{fig:lec4-X}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F F

Remember that there are only two independent constitutive parameters in linear isotropic elasticity.
The usual pair choice is $E$ and $\nu$.
However, there are other options depending on the application and equations used, e.g, $K$ and $G$.  
A complete list of parameter pairs is available scrolling to the bottom in [this Wikipedia page](https://en.wikipedia.org/wiki/Young's_modulus).
{numref}`fig:elastic-summary` list the most common equivalencies. 

:::{figure-md} fig:elastic-summary
<img src="../mynewbook/figures/4-21.svg" alt="figurecontent" width="600px">

Table with equivalencies of the most used elastic moduli in linear isotropic elasticity.
:::

%---------------------------------------------------------
### 3.3.3 Effective stress and elasticity

Porous solids deform and fail due to the application of effective stresses rather than total stress. 
Hence, Hooke's law requires to use the effective stress tensor rather than the total stress tensor. 
The equation $\underset{=}{\varepsilon} = \underset{=}{D} \: \underset{=}{S}$ is incorrect.
Instead, the stress-strain relationship requires effective stress:

```{math}
:label: eq:constitutiveDsigma
	\underset{=}{\varepsilon} = \underset{=}{D} \: (\underset{=}{S} - P_p \underset{=}{I})  = \underset{=}{D} \: \underset{=}{\sigma} 
```

Pore pressure has an effect on normal stresses only (fluid pressure would not be able to cause solid shear strains). Hence, only pore pressure is subtracted from the diagonal terms of the total stress tensor. 
The subtracted value is the same in all directions because pore pressure is the same in all directions at a given point location.	

:::{figure-md} fig:lec4-26
<img src="../mynewbook/figures/4-26.svg" alt="figurecontent" width="600px">

The effective stress tensor.
:::


Rigorously, the effective stress tensor needs a correction of pore pressure by the Biot coefficient $\alpha$ that accounts for solid grain deformation with changes in pore pressure. 

```{math}
	\underset{=}{\varepsilon} = \underset{=}{D} \: (\underset{=}{S} - \alpha P_p \underset{=}{I}) 
```

For most problems, the assumption of $\alpha \sim 1$ is satisfactory. 
The rock matrix of tight sandstones and shales may have a Biot coeffiecient as low as $\alpha \sim 0.5$. 
The theory of poroelasticity is covered in the [Advanced Geomechanics](https://dnicolasespinoza.github.io/AdvancedGeomech/) course with a brief introduction in Section \ref{sec:poroelasticity}.

%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.65]{./Figures/split/4-27.svg}}
%\caption{Effective stress and deformation}
%\label{fig:lec4-X}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F F

%---------------------------------------------------------
### 3.3.4 Calculation of horizontal stress according to linear elasticity
\label{sec:CalcHzStress} 

Let us revisit the problem of stress calculation in a half-space, such as the Earth's shallow subsurface. 
We already know that the vertical total stress ($S_v = S_{33}$) is a function of depth and rock bulk mass density.

```{math}
	 	S_v(z) = \int_0^z \rho_{bulk}(z) g \: dz
```
	
The effective vertical stress will be 

```{math}
	 	\sigma_v(z) = S_v(z) - P_p 
```

Let us now assume that the half space did not deform in horizontal directions ($\varepsilon_{11}=\varepsilon_{22}=0$), usually known as a "tectonically passive environment". This means that the solid is laterally contained at "repose" and no additional horizontal strains have been added either compressive or tensile. 
Such is the case of a sedimentary basin with no additional tectonic strains.

:::{figure-md} fig:1DstrainSchem
<img src="../mynewbook/figures/UniaxialStrainSchematics.png" alt="figurecontent" width="600px">

Uniaxial strain condition with sedimentation in a tectonically passive environment. As sediment burial progresses the sediment compacts only in vertical direction.
:::

Let us now use Equation {eq}`eq:constitutiveDsigma` together with the equilibrium equation. 
Shear strains are zero. 
Hence $\underset{=}{\varepsilon} = [0,0,\varepsilon_{33},0,0,0]^T$.
Then, the multiplication of $\underset{=}{\sigma} = \underset{=}{C} \: \underset{=}{\varepsilon}$, results in 

```{math}
	\left\lbrace 
	\begin{array}{l}
 		\sigma_{11} = \sigma_{22} = 
			\frac{\nu E}{(1+\nu)(1-2\nu)} \varepsilon_{33}  \\
		\sigma_{33} = \frac{(1-\nu) E}{(1+\nu)(1-2\nu)} 		 			\varepsilon_{33}  
	\end{array}
	\right.
```

Let us express $\varepsilon_{33}$ as a function of $\sigma_{33}$, and plug it in the equation for horizontal stresses $\sigma_{11}$ and $\sigma_{22}$. 
The result is

```{math}
	 	\sigma_{11} = \sigma_{22} = \frac{\nu}{1-\nu} \sigma_{33} 
```

or equivalently

```{math}
:label: eq:CoeffLateralEffStress
	 	\sigma_{h} = \frac{\nu}{1-\nu} \sigma_{v} 
```

For typical values of $\nu \sim 0.25$, the horizontal stress coefficient is $\nu/(1-\nu) \sim 1/3 $ ({numref}`fig:LateralEffStressCoeff`). 
Thus, the effective horizontal stress is approximately one third of the effective vertical stress. 
Contrary to a fluid, the solid does not push sideways with all its weight. 
It pushes sideways with just a fraction of its weight proportionally to its tendency to deform sideways, i.e., the Poisson ratio.
Notice that $\nu \rightarrow 0.5$ implies $\nu/(1-\nu) \rightarrow 1$.
An "effective" $\nu \sim 0.5$ is applicable for fluids, soft rocks under undrained loading, and salt rocks.

:::{figure-md} fig:LateralEffStressCoeff
<img src="../mynewbook/figures/lateralstres-coeff.png" alt="figurecontent" width="600px">

Lateral stress coefficient as a function of Poisson's ratio. Solids do not push sideways with all its weight when compacted vertically.
:::

The total horizontal stresses are obtained by adding pore pressure to the effective horizontal stresses: $S_{11} = \sigma_{11} + P_p$ and $S_{22} = \sigma_{22} + P_p$. 

Equation {eq}`eq:CoeffLateralEffStress` allows us to approximate a lower bound for the fracture gradient, that is, the pressure required to open a hydraulic fracture.
Such pressure will be equal or greater than the minimum horizontal total stress $S_h$ (assuming zero tectonic strains):

```{math}
	 	S_h = \sigma_{h} + P_p 
	 	    = \frac{\nu}{1-\nu} \sigma_{v} + P_p
	 	    = \frac{\nu}{1-\nu} (S_v - P_p) + P_p
	 	    = \frac{\nu}{1-\nu} S_v + \frac{1-2\nu}{1-\nu} P_p
```

The gradient is the variation of pressure (or stress) with depth, i.e., derivative with respect to depth $z$.
Assuming that the material properties are constant, then,

```{math}
:label: eq:FracGradient
	 	\frac{\Delta S_h}{\Delta z} =
	 	    = \left( \frac{\nu}{1-\nu} \right) 
	 	    \frac{\Delta S_v}{\Delta z} 
	 	    + \left( \frac{1-2\nu}{1-\nu} \right) 
	 	    \frac{\Delta P_p}{\Delta z}
```

For example, for onshore conditions with typical values $\Delta S_v / \Delta z \sim 1$ psi/ft, $\Delta P_p / \Delta z \sim 0.44$ psi/ft, and $\nu = 0.25$, the fracture gradient is $\Delta S_h / \Delta z = 0.63$ psi/ft. Figure {numref}`fig:FracGradient` shows a schematic example of the calculated fracture gradient.

:::{figure-md} fig:FracGradient
<img src="../mynewbook/figures/3-FracGradient.png" alt="figurecontent" width="600px">

Schematic representation of the prediction of minimum horizontal total stress $S_h$, a lower bound for the fracture gradient, using Eq. {eq}`eq:FracGradient`.
:::

Let us now relax the assumption of horizontal strains equal to zero, such that they are not zero $\varepsilon_{11} \neq \varepsilon_{22} \neq 0$, but are known quantities.  
We use the equation $\underset{=}{\sigma} = \underset{=}{C} \: \underset{=}{\varepsilon}$ again. Shear strains are zero. 
Hence $\underset{=}{\varepsilon} = [\varepsilon_{11},\varepsilon_{22},\varepsilon_{33},0,0,0]^T$. 
The resulting equations are,

```{math}
	\left\lbrace	
	\begin{array}{l}
		\sigma_{11} = 
			\cfrac{(1-\nu) E}{(1+\nu)(1-2\nu)} \varepsilon_{11}
			+ \cfrac{\nu E}{(1+\nu)(1-2\nu)} \varepsilon_{22}
			+ \cfrac{\nu E}{(1+\nu)(1-2\nu)} \varepsilon_{33} \\
		\sigma_{22} = 
			\cfrac{\nu E}{(1+\nu)(1-2\nu)} \varepsilon_{11}
		+ \cfrac{(1-\nu) E}{(1+\nu)(1-2\nu)} \varepsilon_{22}
			+ \cfrac{\nu E}{(1+\nu)(1-2\nu)} \varepsilon_{33} \\
		\sigma_{33} = 
			\cfrac{\nu E}{(1+\nu)(1-2\nu)} \varepsilon_{11}
		+   \cfrac{\nu E}{(1+\nu)(1-2\nu)} \varepsilon_{22}
		+	\cfrac{(1-\nu) E}{(1+\nu)(1-2\nu)} \varepsilon_{33}  
	\end{array}
	\right.	
```

Let us now substitute $\varepsilon_{33}$ in the equations of $\sigma_{11}$ and $\sigma_{22}$ as a function of $\sigma_{33}$. The result is:

```{math}
		\left\lbrace 
		\begin{array}{l}	 	
	 	\sigma_{11} =  
	 		\cfrac{\nu}{1-\nu} \sigma_{33} + 
	 		\cfrac{E}{1-\nu^2} \varepsilon_{11} +
	 		\cfrac{\nu E}{1-\nu^2} \varepsilon_{22} \\
	 	\sigma_{22} =  
	 		\cfrac{\nu}{1-\nu} \sigma_{33} +
	 		\cfrac{\nu E}{1-\nu^2} \varepsilon_{11} +
	 		\cfrac{E}{1-\nu^2} \varepsilon_{22} \\
		\end{array}
		\right.	
```

Horizontal strains are usually caused by tectonic plate movement. 
Hence, we can call them "tectonic strains" and say that this is a "tectonically active" environment, particularly for large compressive horizontal strains that may increase horizontal stress over the vertical stress. 
Let us call $\varepsilon_{Hmax}$ the maximum (compressive) tectonic strain, and  $\varepsilon_{hmin}$ the minimum tectonic strain in a given direction. 
As a result the maximum effective horizontal stress and minimum horizontal stresses are:

```{math}
:label: eq:tectonicstrains
		\left\lbrace 
		\begin{array}{l}	 	
	 	\sigma_{Hmax} =  \cfrac{\nu}{1-\nu} \sigma_{v} + 
	 		E' \varepsilon_{Hmax} +
	 		\nu E'\varepsilon_{hmin}  \\
	 	\sigma_{hmin} =  \cfrac{\nu}{1-\nu} \sigma_{v} +
	 		\nu E' \varepsilon_{Hmax} +
	 		E' \varepsilon_{hmin} \\
		\end{array}
		\right.
```

% the additional temperature term is alpha_T * E/(1-nu) * Delta_T, where Delta_T = T - T_surf

where $E' = \frac{E}{1-\nu^2}$  is called the plane strain modulus.
We will see later that the plane strain modulus, rather than the Young's modulus, appears in many of the equations of interest to subsurface applications.
These equations have been coded in a [Jupyter notebook](https://colab.research.google.com/drive/1cs_zWFIOLWl5_p0X7V_m8nqDES8NTKkG?usp=sharing).
The above algorithm further assumes a linear increase of strain with depth.


The following workflow is valid to calculate horizontal total stress with any constitutive (rock property) model:

1. Calculate total vertical stress $S_v$
2. Calculate pore pressure $P_p$.
	1. If hydrostatic, use $\Delta P_p / \Delta z \sim 0.44$ psi/ft.
	2. If non-hydrostatic, use the method based on shale porosity $\phi_{shale}$ or use directly $P_p = \lambda_p S_v$ if $\lambda_p$ is given.
3. Calculate effective vertical stress: $\sigma_v = S_v - P_p$
4. Calculate effective horizontal stresses $\sigma_{hmin}$ and $\sigma_{Hmax}$:
	1. Assuming linear isotropic elasticity, use Eq. {eq}`eq:tectonicstrains` if tectonic strains are not zero or simply Eq. {eq}`eq:CoeffLateralEffStress` if tectonic strains are zero.  
	2. Assuming subsurface stresses are at yield, use Eqs. in the Chapter about "Stresses on Faults".
	3. Assuming subsurface stresses are affected by visco-elastic response, add stress relaxation component (Fig. {numref}`fig:StressRelax`)
	
5. Calculate total horizontal stress by adding pore pressure to effective horizontal stresses:  

$ S_{Hmax} = \sigma_{Hmax} + P_p $ 

and 

$ S_{hmin} = \sigma_{hmin} + P_p. $	

% + + + + + + + + + + + + + + + + + + + + + + + +
```{admonition} Example 3.5

Calculate the total horizontal stresses in a section of the Barnett Shale located at 7,950 ft (TVD) using the theory of linear elasticity.
Assume a constant vertical stress gradient $\mathrm{d}S_v/\mathrm{d}z = 23.8$ MPa/km, overpressure parameter $\lambda_p = 0.7$, shale Young's modulus $E = 5 \times 10^6$ psi, Poisson's ratio $\nu = 0.22$, and tectonic strains $\varepsilon_{hmin} = 0$ and $\varepsilon_{Hmax} = 0.0002$.
Finally, write down the corresponding effective stress tensor and total stress tensor as 3$\times$3 matrices.

SOLUTION

At a depth of 7950 ft

$
S_v = 23.8 \frac{\text{MPa}}{\text{km}} \times \frac{1 \frac{\text{psi}}{\text{ft}}}{23 \frac{\text{MPa}}{\text{km}}} \times 7950 \text{ ft} = 8227 \text {psi}
$
$
P_p = \lambda_p S_v = 0.7 \times 8227 \text {psi} = 5759 \text{ psi}
$

Hence, the effective vertical stress is 

$
\sigma_v = S_v - P_p = 8227 \text {psi} - 5759 \text{ psi} = 2468 \text{ psi}
$



Now, we are in conditions of using Eq. {eq}`eq:tectonicstrains`.
Let us first calculate the plane strain modulus:

$
E' = \frac{E}{1-\nu^2} = \frac{5 \times 10^6 \text{ psi}}{1-0.22^2} = 5.25 \times 10^6 \text{ psi}
$

Then,

$
		\left\lbrace 
		\begin{array}{l}	 	
	 	\sigma_{Hmax} =  \frac{\nu}{1-\nu} \sigma_{v} + 
	 		E' \varepsilon_{Hmax} +
	 		\nu E'\varepsilon_{hmin} \\
	 	\sigma_{hmin} =  \frac{\nu}{1-\nu} \sigma_{v} +
	 		\nu E' \varepsilon_{Hmax} +
	 		E' \varepsilon_{hmin}  \\
		\end{array}
		\right.
$ 

$
		\left\lbrace 
		\begin{array}{l}	 	
	 	\sigma_{Hmax} =  
	 		\frac{0.22}{1-0.22} 2468 \text{ psi} + 
	 		5.25 \times 10^6 \text{ psi} \times 0.0002 = 1745 \text{ psi}\\
	 	\sigma_{hmin} =  
	 		\frac{0.22}{1-0.22} 2468 \text{ psi} +
	 		0.22 \times 5.25 \times 10^6 \text{ psi} \times 0.0002 = 927 \text{ psi}  \\
		\end{array}
		\right.
$ 

Finally, let us compute the total horizontal stresses by adding pore pressure:

$
		\left\lbrace 
		\begin{array}{l}	 	
	 	S_{Hmax} = \sigma_{Hmax} + P_p =  1745 \text{ psi} + 5759 \text{ psi} = 7504 \text{ psi}\\
	 	S_{hmin} = \sigma_{hmin} + P_p =  927 \text{ psi} + 5759 \text{ psi} = 6686 \text{ psi} 
		\end{array}
		\right. 
$

The effective stress tensor is (assuming coordinates 1: aligned with least principal stress, 2: in the direction of maximum horizontal stress, and 3: vertical):

$
	\underset{=}{\sigma} = 
	\left[
	\begin{array}{ccc}
		\sigma_{11} & \sigma_{12}  &  \sigma_{13} \\
		\sigma_{21} & \sigma_{22}  &  \sigma_{23} \\
		\sigma_{31} & \sigma_{32}  &  \sigma_{33}
	\end{array}	\right] =
	\left[
	\begin{array}{ccc}
		\sigma_{hmin} & 0  &  0 \\
		0 & \sigma_{Hmax}  &  0 \\
		0 & 0  &  \sigma_{v}
	\end{array}	\right] =
	\left[	
	\begin{array}{ccc}
		927 &  0  &  0    \\
		0 & 1745  &  0    \\
		0 &    0  &  2468
	\end{array}	\right]	\text{psi}
$

Likewise, the total stress tensor is

$
	\underset{=}{S} = 
	\left[
	\begin{array}{ccc}
		S_{11} & S_{12}  &  S_{13} \\
		S_{21} & S_{22}  &  S_{23} \\
		S_{31} & S_{32}  &  S_{33}
	\end{array}	\right] =
	\left[
	\begin{array}{ccc}
		S_{hmin} & 0  &  0 \\
		0 & S_{Hmax}  &  0 \\
		0 & 0  &  S_{v}
	\end{array}	\right] =
	\left[	
	\begin{array}{ccc}
		6686 &  0  &  0    \\
		0 & 7504  &  0    \\
		0 &    0  &  8227
	\end{array}	\right]	\text{psi} \: \: \blacksquare
$
```
% + + + + + + + + + + + + + + + + + + + + + + + +

Horizontal stresses tend to be different in most basins, hence, $S_{Hmax} > S_{hmin}$.
In practice, differences $S_{Hmax} - S_{hmin} = \sigma_{Hmax} - \sigma_{hmin} > 0.7$ MPa (100 psi) tend to be enough to force hydraulic fractures to grow mostly perpendicular to $S_{hmin}$ in places subjected to normal faulting or strike slip stress regime.
Locations with small horizontal stress anisotropy (mostly normal faulting sites) impose less control on orientations of hydraulic fractures (Chapter 7) and on orientation of faults (Chapter 5).  
Polygonal faults (Chapter 5 - [update link]) are an example of normal fault growth with strike in all directions because $S_{Hmax} \sim S_{hmin}$.

%---------------------------------------------------------
### 3.3.5 Calculation of reservoir compressibility with linear elasticity
\label{sec:ResCompress}

The rock pore volume compressibility $C_{pp}$ is a critical parameter in the fluid flow mass conservation equation and therefore on the diffusivity equation (1D example):

```{math}
	\frac{\partial P_p}{\partial t}= \frac{k}{\mu C_t} \frac{\partial^2 P_p}{\partial x^2}
```

Where the total compressibility is $C_t = C_g S_g + C_w S_w + C_o S_o + C_{pp}$. 
Reservoir simulators usually calculate the fluid compressibility $(C_g S_g + C_w S_w + C_o S_o)$ based in phase behavior, hence, the only required input is $C_{pp}$.
For example, compaction drive is proportional to rock compressibility (see this [Petrowiki article](https://petrowiki.org/Compaction_drive_reservoirs)). 

The pore volume compressibility $C_{pp}$ tells us what the change of pore volume $V_p$ is due to a change in pore pressure:

```{math}
	C_{pp} = \left. \frac{1}{V_p} \frac{\mathrm{d}V_p}{\mathrm{d}P_p} \right|_{S_v,\varepsilon_h}
```

The equation above captures reservoir boundary conditions in which the total vertical stress $S_v$ remains constant (overburden above the reservoir does not change) and there is no change of lateral strain $\varepsilon_h$, a condition also termed as "uniaxial strain" deformation. 
Such condition is appropriate in long and thin reservoirs with a compliant caprock ({numref}`fig:ReservoirCompaction`).

The measurements of $C_{pp}$ are derived from bulk volume measurements.
Let us assume that the change of pore volume $\mathrm{d}V_p$ is equal to the change of bulk volume $\mathrm{d}V_b$, which means that all bulk deformation is caused by change of porosity.
Hence it is possible to rewrite the definition of $C_{pp}$ as 

```{math}
	C_{pp} = \frac{1}{\frac{V_p}{V_b}} \left( \frac{1}{V_b}  \left. \frac{\mathrm{d}V_b}{\mathrm{d}P_p} \right|_{S_v,\varepsilon_h} \right)
```

Porosity is defined as $\phi = V_p/V_b$ and the term between parenthesis is defined as the bulk compressibility under uniaxial condition $C_{bp}$ (notice $\varepsilon_{vol} = \mathrm{d}V_b/V_b$).
Hence, the parameter $C_{pp}$ is linked to the bulk rock compressibility $C_{bp}$ through porosity:

```{math}
	C_{pp} = \frac{C_{bp}}{\phi} 
```

where the bulk compressibility with no lateral strain is approximately equal to the inverse of the bulk constrained modulus $C_{bp} \sim M^{-1}$, where $M = (1-\nu) E / [(1+\nu)(1-2\nu)]$ for an isotropic elastic solid. 
The approximation is due to a correction needed to account for grain compressibility.
Finally, we can calculate the uniaxial strain pore compressibility using the typical mechanical parameters $E$ and $\nu$ as,

```{math}
:label: eq:PoreCompwithEnu
	C_{pp} = \frac{(1+\nu)(1-2\nu)}{(1-\nu) E \phi} \text{.}
\label{eq:}
```

:::{figure-md} fig:ReservoirCompaction
<img src="../mynewbook/figures/reservoir-compressibility.png" alt="figurecontent" width="600px">

Pressure depletion causes reservoir compaction. The reservoir compressibility is inversely proportional to the constrained modulus $M$.
:::

Unfortunately, the theory of linear elasticity is quite limited  to capture the visco-elasto-plastic behavior of rocks upon depletion during long times and with large strains.
Hence, Eq. {eq}`eq:PoreCompwithEnu` is just a first order approximation.

Typical values of pore volume compressibility vary from 2 to 30$\times 10^{-6} \text{ psi}^{-1}$, where $\times 10^{-6} \text{ psi}^{-1} = \mu \text{sip}$.
Stiff well cemented rocks have low pore volume compressibility $\sim 2 \: \mu \text{sip}$ while uncemented loose sediments tend to have high pore volume compressibility $\sim 30 \: \mu \text{sip}$.

% + + + + + + + + + + + + + + + + + + + + + + + +
```{admonition} Example 3.6

Calculate the pore compressibility of a rock tested in the laboratory with porosity $\phi = 0.20$, Young's modulus $E = 10$ GPa, and $\nu = 0.20$. Provide the solution in [$10^{6}$psi]$^{-1}$ units.

SOLUTION 

The constrained modulus is

$
	M = \frac{(1-\nu) E}{(1+\nu)(1-2\nu)} = \frac{(1-0.20) 10 \text{ GPa} }{(1+0.20)(1-2 \times 0.20)} = 11.11 \text{ GPa} = 1.6 \times 10^{6} \text{ psi}
$

Hence,

$
	C_{pp} = \frac{1}{M \phi} = \frac{1}{1.6 \times 10^{6} \text{psi} \times 0.20} = 3.1 \: [10^{6} \text{psi}]^{-1} = 3.1 \: \mu \text{sip} \: \: \blacksquare
$   

```
% + + + + + + + + + + + + + + + + + + + + + + + +

%---------------------------------------------------------
### 3.3.6 Generalized linear elasticity problem

The general solution of a linear elasticity problem requires combining the equilibrium, kinematic, and constitutive equations.
The result is a differential equation with displacement $\underline{u}$ as the unknown:

```{math}
:label: eq_Navier
		(\lambda + G) \nabla (\nabla \cdot \underline{u}) + 
		G \nabla^2 \underline{u} + \rho \underline{b} = 0
```

where $\lambda = (\nu E)/[(1+\nu)(1-2\nu)]$ is the first Lam\'e parameter, $G$ is the shear modulus, $\rho$ is the rock bulk mass density, and $\underline{b}$ is the body force acceleration vector (usually gravity). 
A review of the gradient $\nabla ()$, divergence $\nabla \cdot ()$ and Laplacian $\nabla^2 ()$ operators is available [here](https://en.wikipedia.org/wiki/Vector_calculus_identities). 
In summary, these are all derivatives that quantify changes of displacement in space. 
The full derivation of this equation can be found [in this YouTube video](https://youtu.be/1PnQ10H2vV0).

The solution requires knowledge of the domain geometry, boundary conditions and initial conditions. 
For example, a hydraulic fracture simulator solves numerically these same equations ({numref}`fig:GeneralContMechProblem`).
In this class, we will see analytical solutions of this equation for 1) displacements and stresses around wellbores, and 2) displacements and stresses around planar fractures.

:::{figure-md} fig:GeneralContMechProblem
<img src="../mynewbook/figures/4-GeneralContMechProblem.PNG" alt="figurecontent" width="600px">

General continuum mechanics problem.
:::

A similar an related differential equation is the "heat diffusion equation" also valid for pore pressure diffusivity, widely used in reservoir engineering and hydrology, where 

```{math}
:label: eq_HeatEq
		\frac{\partial P}{\partial t}= \frac{k}{\mu C_t} \nabla^2 P
```
which at steady state conditions (no change with time) reduces to

```{math}
:label: eq_LaplaceEq
		\nabla^2 P = 0
```
where the fluid pressure (scalar field) $P$ is the unknown variable to be solved. 

%================================================================================
## 3.4 Elastic anisotropy

Real rocks are not isotropic due to layering, particle orientation during deposition, and fracturing.
Sedimentary rocks are usually well explained with transverse isotropic symmetry.
Vertical transverse isotropy assumes symmetry around a vertical axis such that mechanical properties are the same when measured along any direction in a horizontal plane but different in the vertical direction (the direction perpendicular to bedding). 
The presence of vertical fractures in a preferred orientation can break this symmetry and make the medium orthorhombic. 
Accurate determination of horizontal stresses with elastic models (e.g., Eq. {eq}`eq:tectonicstrains`) may need anisotropic models to properly account for rock stiffness anisotropy.

:::{figure-md} fig:TVIandOR
<img src="../mynewbook/figures/4-22.svg" alt="figurecontent" width="600px">

Stiffness matrix coefficients in anisotropic media.
:::

Most sedimentary rocks are stiffer in the horizontal direction than in the vertical direction $E_h > E_v$.

:::{figure-md} fig:SedRockAnisotropy
<img src="../mynewbook/figures/anisotropyYoung.png" alt="figurecontent" width="600px">

Stiffness parallel and perpendicular to bedding.}.
:::

:::{figure-md} fig:CrawfordAnisotropy
<img src="../mynewbook/figures/3_CrawfordAnisotropy.png" alt="figurecontent" width="600px">

Summary of experimental measurements of shale anisotropy. (a) Ratio of horizontal and vertical Young's modulus and (b) coefficient of horizontal effective stress according to a vertical transverse isotropic model. Anisotropy increases with increasing clay and organic matter content in shales. Source: [Crawford et al. 2020](https://doi.org/10.15530/urtec-2020-2206).
:::

%================================================================================
## 3.5 Permanent deformation: Elasto-plasticity

Most rocks will exhibit permanent (plastic) deformation when loaded at large strains $\varepsilon \gtrsim 0.001$.
Plastic deformation includes plastic compression strains and plastic shear strains.
The theory of elasto-plasticity is covered in the [Advanced Geomechanics course](https://www.youtube.com/playlist?list=PLv0npDbE5HXssC2CwCAssJs0fTkKquQFj).
{numref}`fig:LoadingUnloading` shows an example of permanent deformation during a typical deviatoric loading test (increasing axial stress and keeping effective radial stress constant) to measure Young's modulus.
First-time loading usually involves plastic deformation and creep.
Therefore the loading Young's modulus $E_{load}$ results smaller than the unloading modulus $E_{unload}$.
While $E_{load}$ calculation lumps elastic, plastic, and creep strains, $E_{unload}$ involves mostly elastic strains.
Notice the the re-loading modulus is similar to the unloading modulus $E_{unload} \sim E_{unload}$ because a re-loading path is not a first-time loading.

:::{figure-md} fig:LoadingUnloading
<img src="../mynewbook/figures/LoadingUnloading.svg" alt="figurecontent" width="600px">

Loading and unloading stress paths for a shale sample. Two unloading-reloading paths were performed before rock failure. Notice that $E_{load} < E_{unload}$ because of plastic and creep strains.
:::

%================================================================================
## 3.6 Time-dependent deformation: Visco-elasticity

So far, we have assumed that rock strain-stress response is independent of loading rate, however, this is not true.
The stiffness of rocks is not the same if loaded in a time frame of thousands of years (geological time), years (reservoir production time), or during a few minutes (drilling and laboratory time).
Rocks tend to be softer and more ductile as the loading time frame increases.

:::{figure-md} fig:StrainrateStiffness
<img src="../mynewbook/figures/5B-18.svg" alt="figurecontent" width="600px">

Strain-rate dependent stiffness. 
:::

Another manifestation of visco-elasticity is time-dependent deformation, usually known as "creep".
Whenever a change of stress is applied and set constant, deformations may continue with time.
An example of this type of response is when drilling through salt rocks. 
Stresses intensify around the wellbore after the hole is bored. 
The wellbore walls will deform if left uncased and stick to the drilling string.

:::{figure-md} fig:Creep
<img src="../mynewbook/figures/5-CreepTXC.svg" alt="figurecontent" width="600px">

Time-dependent deformation: Creep. Deviatoric stress is used here as the stress difference bewteen maximum and least principal stresses: $\sigma_1 - \sigma_3$. 
:::

One other manifestation of visco-elasticity is time-dependent stress change or stress relaxation.
Whenever a change of strain is applied and set constant, stresses may relax with time.
For example, unconsolidated sands may relax horizontal stresses with time after a tectonic strain is applied ({numref}`fig:StressRelaxField`). 
Therefore, neglecting visco-elasticity may result in an overestimation of horizontal stresses in unconsolidated sands with a purely elastic model.

:::{figure-md} fig:StressRelax
<img src="../mynewbook/figures/5-StressRelaxTXC.svg" alt="figurecontent" width="600px">

Time-dependent deformation: stress relaxation. Deviatoric stress is used here as the stress difference bewteen maximum and least principal stresses: $\sigma_1 - \sigma_3$. 
:::

:::{figure-md} fig:StressRelaxField
<img src="../mynewbook/figures/4-StressRelaxField.PNG" alt="figurecontent" width="600px">

Impact of stress relaxation in horizontal stresses in the subsurface. (a) Decrease of $S_{Hmax}$ due to deviatoric stress ($S_{Hmax} - S_v$ in this case) relaxation caused by a paleo-tectonic strain $\varepsilon_{Hmax}$. (b)Increase of $S_{hmin}$ due to deviatoric stress ($S_v - S_{hmin}$ in this case) relaxation caused by overburden stress.
:::

%================================================================================
## 3.7 Multiphysics problems

%---------------------------------------------------------
### 3.7.1 Poro-elasticity
\label{sec:poroelasticity}

When rocks deform, most of the deformation transfers into changes of porosity. 
As a matter of fact, the solid phase can also deform and change volume. 
In that case the equation that links stresses and deformations $\underset{=}{\varepsilon} = \underset{=}{D} \: \underset{=}{\sigma}$ needs to be corrected according to Biot's effective stress:

```{math}
		\underset{=}{\sigma} = \underset{=}{S} - \alpha P_p \underset{=}{I}
```

\noindent where $\alpha$ is the Biot coefficient and $\underset{=}{I}$ is the identity tensor. 
In the case of linear elastic and isotropic porous media, the Biot coefficient is:

```{math}
		\alpha = 1 - \frac{K_{drained}}{K_{unj}}
```

\noindent where $K_{drained}$ is the drained bulk modulus of the porous solid and $K_{unj}$ is the unjacketed bulk modulus.
The unjacketed bulk modulus is equal to the mineral bulk modulus $K_{unj} = K_{m}$ when all porosity is connected and the rock has a mono-mineral composition.
The values of the Biot coefficient range from the value of porosity to 1.
Most rocks and sediments subjected to large depths have a Biot coefficient that ranges from $\sim$ 0.4 to 0.95, decreasing in value as rocks get stiffer.
In anisotropic media, the poroelasticity correction factor becomes a tensor $\underset{=}{\alpha}$.
The corrections for poroelasticity $\alpha \neq 1$ become significant in tight rocks with high stiffness, and low and unconnected porosity.


%---------------------------------------------------------
### 3.7.2 Thermo-elasticity
%\label{sec:Thermoelasticity}

Changes of temperature in solids change the equilibrium distance between molecules, and therefore induce strains.
Imagine a solid heated up, but not allowed to dilate in vertical direction ({numref}`fig:ThermalSwellStress`). 
The result is an increase of stress in vertical direction rather than a deformation in vertical direction.

:::{figure-md} fig:ThermalSwellStress
<img src="../mynewbook/figures/4-ThermalStrainStress.svg" alt="figurecontent" width="300px">

Thermo-elasticity example of dilation thermal stress.
:::

The coefficient of thermal dilation $\alpha_L$  quantifies strains as a function of changes of temperature $T$ at constant pressure $p$, and it is defined as 

```{math}
	\alpha_L = \left. \cfrac{1}{L} \cfrac{ \mathrm{d} L}{ \mathrm{d} T} \right|_p
```

Typical linear thermal dilation coefficients of rock range from 5 to 10$\times 10^{-6}$ 1/C$^{\circ}$. 
You may compare this range to the linear thermal dilation coefficient of steel $12\times 10^{-6}$ 1/C$^{\circ}$ and water $70\times 10^{-6}$ 1/C$^{\circ}$.

Under unconstrained (displacement) conditions, a negative change in temperature causes shrinkage and a positive change in temperature causes dilation.
The elastic equations extended to consider thermal changes make explicit that stresses can be changed as a result of a change in temperature $\Delta T$ and/or as a result of a change of volumetric strains. 

```{math}
:label: eq:LameThermoElasticity
	\left\lbrace
	\begin{array}{rcl}
		\sigma_{11} & = & (\lambda + 2 \mu) \: \varepsilon_{11} + \lambda \: \varepsilon_{22} + \lambda \: \varepsilon_{33} + 3 K \alpha_L \Delta T \\
		\sigma_{22} & = & \lambda \: \varepsilon_{11} + (\lambda + 2 \mu) \: \varepsilon_{22} + \lambda \: \varepsilon_{33} + 3 K \alpha_L \Delta T \\	
		\sigma_{33} & = & \lambda \: \varepsilon_{11} + \lambda \: \varepsilon_{22} + (\lambda + 2 \mu) \: \varepsilon_{33} + 3 K \alpha_L \Delta T \\
		\sigma_{23} & = & 2 \mu \: \varepsilon_{23}\\
		\sigma_{13} & = & 2 \mu \: \varepsilon_{13}\\
		\sigma_{12} & = & 2 \mu \: \varepsilon_{12}\\
	\end{array}
	\right.
```

Eq. {eq}`eq:LameThermoElasticity` does not include the effects of pore pressure.
The coupled thermo-poro-elastic equations are covered in the Advanced Geomechanics course.

Thermal(-induced) stresses can cause reductions in fracture gradient when drilling with relatively cold drilling mud. 
Thermal(-induced) stresses can also cause enhanced fractured reactivation when injecting cold fluids in a hot reservoir, such as in deep geothermal energy recovery.

% + + + + + + + + + + + + + + + + + + + + + + + +
```{admonition} Example 3.7

Derive an expression of the thermal swelling stress (in vertical direction) for the example shown in {numref}`fig:ThermalSwellStress`.

SOLUTION

Let us assume the axis 3 in the vertical direction, then $\sigma_{11}=\sigma_{22}=0$, $\varepsilon_{11}=\varepsilon_{22} \neq 0$, $\varepsilon_{33}=0$.
Then, for $\Delta T \neq 0$, a simplification of Eq. {eq}`eq:LameThermoElasticity` results in,

$
	\left\lbrace
	\begin{array}{rcl}
		0 & = & (\lambda + 2 \mu) \: \varepsilon_{11} + \lambda \: \varepsilon_{11} + 3 K \alpha_L \Delta T\\
		\sigma_{33} & = & \lambda \: \varepsilon_{11} + \lambda \: \varepsilon_{11} + 3 K \alpha_L \Delta T \\
	\end{array}
	\right.
$

Solving for $\varepsilon_{11}$ and pluging it the $\sigma_{33}$ equation results in

$
	\sigma_{33} = \left( \frac{6-\mu/K}{3+\mu/K} \right) K \alpha_L \Delta T \: \: \blacksquare
$

```
% + + + + + + + + + + + + + + + + + + + + + + + +

%---------------------------------------------------------
%### {Chemo-elasticity}

%---------------------------------------------------------
## 3.8 Problems

1. For the following stress tensors: a) calculate the eigenvalues (principal stresses), b) calculate eigenvectors (principal directions), c) answer what the stress regime is, and d) calculate the angle between the North and the direction of $S_{Hmax}$ in clockwise direction:
	1. North Colorado:
	$
		\underset{=}{\sigma} = 
		\left[
		\begin{array}{ccc}
			\sigma_{NN} & \sigma_{NE}  &  \sigma_{ND} \\
			\sigma_{EN} & \sigma_{EE}  &  \sigma_{ED} \\
			\sigma_{DN} & \sigma_{DE}  &  \sigma_{DD}
		\end{array}	\right] =
		\left[	
		\begin{array}{ccc}
			7100 &  -200  &  0    \\
			-200 & 7300  &  0    \\
			0 &    0  &  8100
		\end{array}	\right]	\text{psi}
	\label{eq:straintensor}
	$	
	2. North-East North Dakota:
	$
		\underset{=}{\sigma} = 
		\left[
		\begin{array}{ccc}
			\sigma_{NN} & \sigma_{NE}  &  \sigma_{ND} \\
			\sigma_{EN} & \sigma_{EE}  &  \sigma_{ED} \\
			\sigma_{DN} & \sigma_{DE}  &  \sigma_{DD}
		\end{array}	\right] =
		\left[	
		\begin{array}{ccc}
			6000 &  100  &  0    \\
			100 & 6300  &  0    \\
			0 &    0  &  6200
		\end{array}	\right]	\text{psi}
	$			
	

Notes: Compare your solutions with expectations of the [US stress map](https://www.usgs.gov/media/images/new-us-stress-map). You may use Python, Matlab, [Wolfram Alpha](https://www.wolframalpha.com/), or a calculator that supports linear algebra to solve this problem. 

2. Draw the normal and shear stresses defined as positive on the four sides of the following square solid element according to the given 2D coordinate system.

:::{figure-md} fig_
<img src="../mynewbook/figures/CH3-Problem1.png" alt="figurecontent" width="300px">

Problem figure.
:::

3. An axial deviatoric test was performed in an organic-rich  Mancos shale sample. The sample was cored in the direction of bedding. The sample diameter was $D = 1.00$ in and the sample length was $L = 2.01$ in. The test was conducted in "as received conditions". The data is available [here](https://github.com/dnicolasespinoza/GeomechanicsJupyter/blob/master/UndergradHomework/HW3/Mancos_Unconf100_PL7.dat). The data contains Time (s), Axial force $F$ (lb), Axial displacement $X_a$ (in), and Radial displacement $Ya$ (in).
	1. Calculate the axial stress as a function of axial force $\sigma_a = F/A$, where $A$ is the cross-sectional area.
	2. Calculate axial and radial strains utilizing the displacements $\Delta L$ ($=X_a$) and $\Delta D$ ($=Y_a$). Notice the radial strain is $\Delta R/R = \Delta D/D$. Calculate the volumetric strain as well.
	3. Show the solution of the first and second point in the same graph, plot: (i) axial stress  versus axial strain, (ii) axial stress versus radial strain, and (iii) axial stress  versus volumetric strain. (Plot axial stress in the vertical axis.)
	4. Utilizing linear curve fitting, compute Young's modulus and Poisson's ratio in the interval of axial strain between 0.0028 and 0.0040. You may need to plot radial strain versus axial strain to calculate the Poisson's ratio (using a linear regression).  

4. Isotropic loading means that applied stresses are the same in all directions. 
	1. Using the equations of 3D linear elasticity ($ \underline{\varepsilon} = \underset{=}{D} \: \underline{\sigma}$ in Voigt notation) show that by applying an isotropic stress $\sigma_{iso}$ (no shear) the volumetric strain is equal to  $\varepsilon_{vol}=\frac{3(1-2\nu)}{E} \sigma_{iso}$.
	2. What would be the volumetric strain $\varepsilon_{vol}$, for a shale rock with $E = 4 \times 10^6$ psi and $\nu = 0.2$, when subjected to an isotropic change of stress $\sigma_{iso} =$ 3,000 psi? Write the full (3D) acting stress tensors  and resulting strain tensor as matrices 3 $\times$ 3.
	3. What is the shale bulk modulus $K$?
	
5. One-dimensional strain loading implies changes of stress with changes in strain in only one direction (usually the vertical direction).
	1. Using the equations of 3D linear elasticity ($\underline{\sigma} = \underset{=}{C} \: \underline{\varepsilon}$ in Voigt notation) show that by applying stress in one direction (say 1) and not letting the solid expand in the other two, you can recover  the following expression $\sigma_{11} = \cfrac{E(1-\nu)}{(1+\nu)(1-2\nu)} \varepsilon_{11}$.
	2. The proportionality coefficient in the equation above is called the constrained modulus $M$. Is it lower or higher than E? What is the physical explanation?
	3. A high porosity carbonate reservoir is subjected to depletion and a change of effective vertical stress of 20 MPa. The carbonate rock Young's modulus is 1.5 GPa and Poisson's ratio is 0.10. What are the resulting strain and stress tensors due to compaction? Write the results as $3 \times 3$ matrices.
	4. What are the bulk and pore compressibilities of this carbonate rock if $\phi = 0.35$. Provide answers in $\mu$sip.
	
6. The top of the Barnett shale is located at about 7,950 ft TVD. At this depth:
	1. Compute the total vertical stress assuming a lithostatic gradient of 23.8 MPa/km.
	2. Compute the effective vertical stress assuming hydrostatic pore pressure gradient.
	3. Compute horizontal effective stresses assuming linear isotropic elasticity, $\nu$=0.22 and that horizontal strains are nearly zero.
	4. Write the tensor of effective stresses as a matrix.
	5. Compute total horizontal stress. 
	6. Compute the ratio between effective horizontal stress and effective vertical stress.
	7. Compute the ratio between total horizontal stress and total vertical stress.
	8. Compute effective and total stresses assuming there is overpressure with $\lambda_p = 0.7$, tectonic strains are $\varepsilon_{hmin} = 0$ and $\varepsilon_{Hmax} = 0.0002$, and the shale Young’s modulus is $E=5 \times 10^6$ psi.
	

%---------------------------------------------------------
## 3.9 Coding support for solving problems

You may use the python code available in the following link at [Google Colab](https://drive.google.com/drive/folders/1rIzjFd5p81JGOSRUkaMiQF018idb1XU3?usp=sharing).
I suggest you use it as "inspiration" and learning, but write your own. 
Make sure to acknowledge any copying and pasting.

%---------------------------------------------------------
## 3.10 Further reading and references

1. Fjaer, E., Holt, R.M., Raaen, A.M., Risnes, R. and Horsrud, P., 2008. Petroleum related rock mechanics (Vol. 53). Elsevier. (Chapter 1)
2. Jaeger, J.C., Cook, N.G. and Zimmerman, R., 2009. Fundamentals of rock mechanics. John Wiley \& Sons. (Chapter 5)
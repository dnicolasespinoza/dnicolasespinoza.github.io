# 8. Reservoir depletion and injection

%================================================================================
## 8.1 Changes of stress in the reservoir rock

Reservoir depletion requires changes of pore pressure.
A decrease of pore pressure $(P_f - P_o)$ results in increased effective stress in the depressurized region.
Effective stresses increase because the overburden $S_v$ remains constant above the reservoir but the pore pressure decreases.
The result is compaction of the reservoir ({numref}`fig:DepletionSchematic`).
Such deformation also affects neighboring formations and faults.
Changes in ground surface elevation are refered as "subsidence".
Differential displacements (for example across a fault) can result in casing damage and shearing.
Significant compaction in the reservoir layer can result in casing buckling.
The reduction of pore pressure also causes a reduction of total horizontal stress within the reservoir.

:::{figure-md} fig:DepletionSchematic
<img src="../mynewbook/figures/10-1.png" alt="figurecontent" width="600px">

Schematic of deformation induced by reservoir depletion.
:::


%------------------------------------------------------------------
### Rock compressibility and permeability

Reservoir depletion in horizontal, laterally extensive and thin reservoirs approximates to a one-dimensional-strain stress path, i.e. there is change in strain only in the vertical direction
({numref}`fig:DepletionSchematic`).
Such stress path results in increased effective stresses in both vertical and horizontal directions.

Increased effective stresses result in reduction of porosity and permeability in most cases.
The permeability of fractured rocks tends to be more sensitive to stress than typical rock matrices.
The reason is that permeability is proportional to the $d_{pore}^2$  in rock matrix, while permeability is proportional to the $w_{f}^3$ 
in fractures ({numref}`fig:Kcompressibility`).
The variability of rock permeability with stress is called "fracture compressibility".
The decline curves of unconventional formations are highly influenced by fracture compressibility.

:::{figure-md} fig:Kcompressibility
<img src="../mynewbook/figures/10-2.png" alt="figurecontent" width="600px">

Impact of increased effective stress on porosity and permeability.
:::


%------------------------------------------------------------------
### Linear poroelasticity solution

Let us use the theory of poroelasticity (Section \ref{sec:poroelasticity}) to solve for the changes of total and effective stresses with depletion.
According to this theory, effective stress must be corrected for the Biot coefficient $\alpha$ so that,

```{math}
		\underset{=}{\sigma} = \underset{=}{S} - \alpha P_p \underset{=}{I}
```

We use this equation of effective stress together with linear isotropic elasticity in order to relate stresses to strain ($ \underset{=}{\sigma} = \underset{=}{C} \: \underset{=}{\varepsilon}$, and the assumption of one-dimensional strain $\underset{=}{\varepsilon} = [0,0,\varepsilon_{33},0,0,0]^T$ (3-vertical direction):

%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.55]{./Figures/split/10-3.jpg}}
%\caption{zzz}
%\label{fig:lect-X}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F 

```{math}
:label: eq:ComplianceMatrix
	\left[
		\begin{array} {c}
			S_{11} - \alpha P_p\\ 
			S_{22} - \alpha P_p\\ 
			S_{33} - \alpha P_p\\
			S_{12} \cfrac{}{} \\
			S_{13} \cfrac{}{} \\
			S_{23} \cfrac{}{}
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
			0 \\ 
			0 \\ 
			\varepsilon_{33} \\
			0 \cfrac{}{} \\
			0  \cfrac{}{}\\
			0 \cfrac{}{}
		\end{array}
	\right]
```

The equation corresponding to the 3rd row results in:

```{math}
	\varepsilon_{33} = \frac{S_{33} - \alpha P_p}{ \frac{E(1-\nu)}{(1+\nu)(1-2\nu)} }
```

The denominator is the constrained modulus $M = E(1-\nu)/[(1+\nu)(1-2\nu)]$.
Hence, the vertical strain in the reservoir layer is:

```{math}
	\Delta \varepsilon_{33} = -\frac{\alpha}{M}  \Delta P_p
```

Remember that $S_{33}$ is the overburden stress and does not change with time or with reservoir pore pressure.
Notice that depletion ($\Delta P_p<0$) results in compaction ($\Delta \varepsilon_{33}>0$).
This deformation is linked to the reservoir compressibility. 
Hence, according to linear poroelasticity the uniaxial bulk compressibility is $C_{bp} = \alpha / M$ (See Section \ref{sec:ResCompress}).


Combining Equations from rows 1 and 3 (or 2 and 3), results in 

```{math}
:label: eq:CoeffA
	\Delta S_{11} = \alpha \frac{1-2\nu}{1-\nu} \:  \Delta P_p
```

Depletion ($\Delta P_p<0$) results in decreases of horizontal stress ($\Delta S_{11}<0$).
The same change of stress occurs in direction 2.
The coefficient of proportionality in the previous equation is usually referred as $A = \alpha \frac{1-2\nu}{1-\nu}$ and varies typically from 0.5 to 0.9.
The prediction of $S_{11}$ can be validated through hydraulic fracture tests that measure minimum horizontal total stress $S_{hmin}$ in places with normal faulting and strike slip regime.

A total stress path plot describes the value of total stresses as a function of pore pressure ({numref}`fig:TotalStressPath`). 

:::{figure-md} fig:TotalStressPath
<img src="../mynewbook/figures/10-TotalStressPath.pdf" alt="figurecontent" width="600px">

Total stress path plot. (a) Conceptual plot. (b) Example from the North Sea. The points corresponds to measurements from hydraulic fracture tests.
:::


Depletion results in increased effective stresses.
The change of (Biot) vertical effective stress $\sigma_{33} = S_{33} - \alpha P_p$ (with $S_{33}$ constant) is

```{math}
	\Delta \sigma_{33} = - \alpha \Delta P_p
```

From Eq. {eq}`eq:CoeffA`, the change of (Biot) horizontal effective stress with pressure is 

```{math}
	\Delta \sigma_{11} = - \alpha \frac{\nu}{1-\nu} \Delta P_p
```

Both, horizontal and vertical effective stresses increase with depletion.
This results in a shift of the Mohr circle to the right and up, i.e. increased mean effective stress and increased deviatoric stress ({numref}`fig:MohrCircleDepletion`).
Large compressive and shear stresses can result in rock failure under compression and shear.
Grain crushing can significantly decrease the rock permeability.
Combined compression and shear failure lead to shear compaction bands. 
 
:::{figure-md} fig:MohrCircleDepletion
<img src="../mynewbook/figures/8-ResDepletionExample.jpg" alt="figurecontent" width="600px">

Change of effective stress with depletion. Both horizontal and vertical effective stresses increase within the depleted reservoir. Note: here we plot *Biot* effective stresses.
:::


%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.55]{./Figures/split/10-8.jpg}}
%\caption{Influence of Poisson's ratio.}
%\label{fig:lect-X}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F 

% + + + + + + + + + + + + + + + + + + + + + + + +
```{admonition} Example 8.1

Calculate the following due to depletion of 35 MPa.

:::{figure-md} fig:Ex81
<img src="../mynewbook/figures/10-5.png" alt="figurecontent" width="600px">

Example 8.1.
:::

1. Displacement $\Delta H$ at the top of the reservoir.  
2. Pore compressibility $C_{pp}$.
3. Change of total horizontal stress $\Delta S_{h}$.
4. Changes of effective vertical $\Delta \sigma_{v}$ and horizontal stresses $\Delta \sigma_{h}$.
5. Change of permeability $k/k_o$ with the following law ($c_f = 0.25$ MPa$^{-1}$ ):
	$
		k = k_o \: \exp \left[ -c_f (\sigma_h - \sigma_h^o) \right]
	$

SOLUTION 

1. The constrained modulus is

	$
		M = \frac{E(1-\nu)}{(1+\nu)(1-2\nu)} = 14.8 \text{ GPa}
	$
	
	Then, the displacement at the top of the reservoir is $\Delta H = \Delta \varepsilon_{33}  H$,	where

	$
		\varepsilon_{33} = -\frac{\alpha}{M}  \Delta P_p = 0.21 \%
	$
	
	Hence, $\Delta H = 0.21\% \:  100 \text{m } = 0.21$ m. 
	
2. The bulk compressibility is 
	
	$
		C_{bp} = \frac{\alpha}{M} = 
		        0.06 \times 10^{-9} \frac{1}{\text{Pa }} =
		        0.42 \times 10^{-6} \frac{1}{\text{psi }} 
	$
	
	Thus, the pore compressibility is 
	
	$
		C_{pp} = \frac{C_{bp}}{\phi} = 
		         2.0 \times 10^{-6} \frac{1}{\text{psi }} =
		         2.0 \: \mu \text{sip}
	$
	
3. The change of total horizontal stress  is
	$
		\Delta S_{h} = \alpha \frac{1-2\nu}{1-\nu} \:  \Delta P_p
		             = 0.716 \times (-35 \text{ MPa }) \sim -25 	\text{ MPa }
	$

4. The changes of effective stresses are 
	$
		\Delta \sigma_{33} = - \alpha \Delta P_p =
						- 0.9 \times (-35 \text{ MPa })
						= + 31.5 \text{ MPa }
	$

	$
		\Delta \sigma_{11} = - \alpha \frac{\nu}{1-\nu} \Delta P_p
		                  = + 6.45 \text{ MPa }
	$
		
5. Last, the ratio between final and initial permeability $k/k_o$ is
	$
		\frac{k}{k_o} = \exp \left[ -c_f (\sigma_h - \sigma_h^o) \right]
		= \exp \left[ -0.25 \text{ MPa}^{-1} (+6.45 \text{ MPa}) \right] \sim 0.2  \: \: \blacksquare
	$
 
```
% + + + + + + + + + + + + + + + + + + + + + + + +

%================================================================================
## 8.2 Changes of stress and displacements outside the reservoir

Changes of pore pressure and temperature in a reservoir alter the state of stress around the reservoir, similar to what happens around a wellbore after it is drilled.
{numref}`fig:DepletionSchematic` shows that depletion is analogous to a reduction of volume in a confined reservoir, such that total horizontal stress increases above and below the reservoir.
Faults and fractures may reactivate in reverse faulting if effective stress surpass the shear failure limit.

Furthermore, the decrease of volume experienced by the reservoir (mostly vertical) propagates upwards and may result in ground displacements.
A simple model with a plane-strain solution of depletion of  rectangular reservoir predicts surface displacements are proportional to:
- reservoir thickness, $T$
- reservoir half length, $a$
- reservoir proximity to the surface, quantified by reservoir depth $D$ ({numref}`fig:GroundDispSegall`). 

The predicted displacements and horizontal strain are (Segall, 1989):

```{math}
u_x(x=0,y,t) = \frac{2(1+\nu_u)BT \Delta m(t)}{3\pi \rho_o} \left[ \tan^{-1}(\xi_-) - \tan^{-1}(\xi_+)\right]
```

```{math}
u_y(x=0,y,t) = \frac{2(1+\nu_u)BT \Delta m(t)}{6\pi \rho_o} \log \left[ \frac{1+\xi_+^2}{1-\xi_-^2}\right]
```

```{math}
\epsilon_{yy}(x=0,y,t) = \frac{2(1+\nu_u)BT \Delta m(t)}{3\pi \rho_o D} \left[ \frac{\xi_+}{1+\xi_+^2} - \frac{\xi_-}{1+\xi_-^2}\right]
```

where
- $\nu_u$: undrained Poisson ratio
- $B$: Skempton parameter
- $\Delta m(t)= \frac{(1-2\nu) \alpha \rho_o}{2\mu (1+\nu)} \left[ \sigma_{kk} + \frac{3}{B}p \right]$: change of fluid mass content per unit of volume
- $\rho_o$: fluid initial mass density
- $\xi_- = (y-a)/D$
- $\xi_+ = (y+a)/D$
- $x$ is the vertical direction and $y$ is the horizontal direction

{numref}`fig:GroundDispSegall` shows an example of surface displacement predicted by the equations above.
Depletion and net fluid loss lead to surface subsidence, while injection and net fluid gain lead to heave. 
The vertical displacement is maximum above the reservoir center and extends beyond the reservoir horizontal limits.

:::{figure-md} fig:GroundDispSegall
<img src="../mynewbook/figures/8-GroundDisplacementsSegall.pdf" alt="figurecontent" width="900px">

Surface displacements caused by depletion/injection predicted by a cartesian plane-strain model. (Top) Model geometry including $D$ = 1000 m, $a$= 500 m, $T$ = 100 m. (Middle) Normalized solution for $\Delta m_t = $ 5 kg/m$^3$ (depletion). (Top) Surface displacement solution for $\Delta m_t = $ 5 kg/m$^3$ (depletion). The surface moves down about 12 cm above the reservoir. The surface moves laterally towards the center line of the reservoir ($y=0$ m).
:::

{numref}`fig:SubsidenceHeave` shows examples of subsidence and heave for real examples.
Notice that ground displacements tend to be concentric around the depletion or injection points.

:::{figure-md} fig:SubsidenceHeave
<img src="../mynewbook/figures/8-SubsidenceHeaveCases.jpg" alt="figurecontent" width="900px">

Surface displacements caused by oil depletion (left) and CO$_2$ injection (right). 
:::


%================================================================================
## 8.3 Fluid injection

Fluid injection would result in opposite effects of fluid depletion including:
- Pore pressure increases in the reservoir.
- Total horizontal stress increases in the reservoir.
- Vertical and effective stresses decrease in the reservoir.
- Total horizontal stress decreases in the caprock.
- The reservoir "swells" and the ground surface above the reservoir moves up. 

All of these are valid under isothermal fluid injection conditions.
However, subsurface fluid injection usually is non-isothermal, with fluid temperature lower than the reservoir temperature.
A large decrease of temperature in the reservoir can change the trends listed above.

Finally, while depletion lowers the "total energy" of the reservoir-caprock-surrounding rock system, injection increases its energy.
Reservoir pressurization will have a maximum allowable pressure at which either fault reactivation or hydraulic fracturing might happen releasing fluid-pressure energy.
These allowable maximum pressures must be carefully investigated to avoid geomechanical issues such as induced seismicity and loss of mechanical seal integrity. 

%================================================================================
## 8.4 Fault stability

TBD

%================================================================================
## 8.5 Coding support for solving problems

You may use the python code available in the following link at [Google Colab: Ch. 8 on Reservoir Depletion and Injection](https://colab.research.google.com/drive/1UJnK7I8UTiCH45jzaZcrEe93AsLCdTTs?usp=sharing).
I suggest you use it as "inspiration" and learning, but write your own. 
Make sure to acknowledge any copying and pasting.	

%================================================================================
## 8.5 Suggested Reading

- Fjaer, E., Holt, R.M., Raaen, A.M., Risnes, R. and Horsrud, P., 2008. Petroleum related rock mechanics (Vol. 53). Elsevier. (Chapter 12)
- Zoback, M.D., 2010. Reservoir geomechanics. Cambridge University Press. (Chapter 12)
- Segall, P. "Earthquakes triggered by fluid extraction". Geology 1989. doi: 10.1130/0091-7613(1989)017
- Sinking City [(web article)](https://www.longbeach.gov/energyresources/about-us/oil/subsidence/)
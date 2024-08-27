# 4. Rock Yield and Failure
\label{Ch:Failure}

%================================================================================
## Preliminary concepts

%--------------------------------------------------------------------------------
### Microstructure of geologic materials

The microstructure of rocks varies widely, from lumped crystals in igneous rocks to fossil carbonate skeletons in diatomite-rich chalk.
We will discuss mostly sedimentary rocks (shown in Fig. \ref{fig:RockMicrostructure}). However, igneous rocks can also host hydrocarbons (really? how?) and constitute the basement of sedimentary basins. 
For example, induced seismicity from deep injection of produced-water mostly originates in basement igneous rocks.
Sedimentary rocks include shales, sandstones, and carbonates among other types. 
The microstructure of rocks governs their failure properties and characteristics.
For example, uncemented sands cannot hold tensile stresses (Fig. \ref{fig:RockMicrostructure}-a). 
At low mean effective stress (as in the sandboarding picture) rock failure happens through grain rotating and roll-over.
Sandstone is formed by cemented grains (Fig. \ref{fig:RockMicrostructure}-b). 
At relatively high porosity, the strength of sandstones is dominated by the strength of cemented contacts (bonds). 
At failure, the bonds rather than the grains tend to break.
Matrix-supported carbonates form a continuous mineral matrix (Fig. \ref{fig:RockMicrostructure}-c). 
Failure usually involves cracking of the solid matrix.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/5A-3.pdf}}
\caption{Influence of rock microstructure on failure mechanisms.}
\label{fig:RockMicrostructure}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 


%--------------------------------------------------------------------------------
### Length scales v.s. process zone size

Petroleum and subsurface engineering involves rock failure at many length scales, from the millimeter-scale to the kilometer-scale (Figure \ref{fig:Failure-LengthScales}).
The failure properties of rock (and many other properties too) depend on the length scale of analysis.	 
Small-scale process zones engage the rock ``matrix'' properties. Rock cutting at the drill-bit scale  and wellbore stability (in homogeneous and non-fractured rock) are two examples. The samples we test in the laboratory are at this small scale as well.
Large-scale process zones involve fractures, multiple sedimentary layers, and faults. 
For example, hydraulic fracturing tends to reactivate neighboring fractures in shear and reservoir depletion can reactivate large faults in shear as well.
Recognizing the appropriate length-scale is extremely important to use adequately the rock strength measured in the laboratory and simple mechanical formulations such as linear elasticity.		

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/5A-4.pdf}}
\caption{Rock failure properties are a function of process-zone size and length scale.}
\label{fig:Failure-LengthScales}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

%--------------------------------------------------------------------------------
### Overview of types of rock failure

Rock yield (plastic deformation) and failure can happen due to tensile stresses, shear stresses, compressive stresses, and a combination of the three.
The following sections explore these types of rock damage separately.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.55]{./Figures/split/5A-5.pdf}}
\caption{Overview of rock failure modes: tension, shear, and compression.}
\label{fig:lec5A-X}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 


%==================================================================================
## Tensile failure

%--------------------------------------------------------------------------------
### Direct tension}

Application of tensile stresses (with negative sign according to our geomechanics convention) on a metal bar results in tensile strains (negative too).
In this example the state of stress is relatively simple with tensile stress in the axial direction and zero-stress in any direction perpendicular to the axis of the bar (Figure \ref{fig:TensionSteel}).
The maximum tensile stress taken by the bar is called tensile strength.
Metals are usually ``ductile'' and deform after reaching a peak stress. 
When unstressed, the bar in the example figure does not recover its original length but remains with ``plastic deformation''.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.55]{./Figures/split/5A-6.pdf}}
\caption{Tensile strength of a ductile metal bar. }
\label{fig:TensionSteel}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

The one-dimensional tensile strength test for metals (Fig. \ref{fig:TensionSteel}) is not easy to implement in rocks.
You would have to grab the rock on its sides or glue it on the ends to perform such tests. Even in that case, your rock may break at the those ``grabbing'' points.
One alternative is to ``machine'' the rock to a convenient shape, so that, you can pull it without using glues or grabbing jaws (shown in Figure \ref{fig:DirectTensionRock}).
However, rocks are not easy to ``machine'' in general, and thus this test becomes impractical in many situations.
Rock failure in simple tension usually displays ``brittle'' failure, no plastic strains follow after reaching tensile strength. It just breaks quickly.	

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.60]{./Figures/split/5A-7.pdf}}
\caption{Direct tension test on brittle rock. Correct interpretation depends on rock micro-structure and possible existence of pre-existent flaws.}
\label{fig:DirectTensionRock}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

%--------------------------------------------------------------------------------
### The Brazilian test

The Brazilian test is a convenient method to measure tensile strength. 
It uses short cylindrical samples and takes advantage of the shape of the rock specimen to create tensile stresses with application of a compressive force along the sample diameter (Figure  \ref{fig:BrazilianTest}).
A solution of the state of stress within the rock (assuming a linear elastic homogeneous material) yields the tensile strength value $T_S$ equal to
	\begin{equation}
		T_S = \frac{P_B}{\pi L R}
	\end{equation}
where $P_B$ is the peak compressive force, $L$ is the specimen length, and $R$ is the specimen radius.
Notice that you have a combined state of stress with compression in the direction of the compressive load and tension in the direction perpendicular to the load along the diameter. 

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.55]{./Figures/split/4-TensileStrength.pdf}}
\caption{The Brazilian test: sample geometry and example. }
\label{fig:BrazilianTest}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

%#########################################################################
\noindent\rule{16.5cm}{0.4pt} \newline
\emph{PROBLEM 4.1:} Determine the tensile strength of the shale sample shown in Fig. \ref{fig:BrazilianTest}. The sample diameter is 1.00 in and the length is 1.00 in.

\vspace{0.1in}
SOLUTION \newline 
The sample dimensions are 
\[
R = \frac{1}{2} \text{ in} = 0.0127 \text{ m}
\]
and
\[
L = 1 \text{ in} = 0.0254 \text{ m}
\]
Hence, the tensile strength is
\begin{equation*}
		T_S = \frac{2084 \text { N}}{\pi (0.0254 \text{ m}) (0.0127 \text{ m})}
		    = 2.06 \times 10^6 \text{ Pa} = 2.06 \text{ MPa} \: \: \blacksquare
\end{equation*}
\noindent\rule{16.5cm}{0.4pt} \newline
%#########################################################################

Typical values of tensile strength for cemented sedimentary rocks range from 0.5 MPa to 10 MPa. 
Uncemented sediments -very common in sedimentary basins- have zero tensile strength.
Figure \ref{fig:TensStrengthSummary} summarizes typical values of tensile strength for rocks.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/4-TensStrengthSummary.pdf}}
\caption{Values of tensile strength in a set of cemented rocks measured with direct tension tests (DTS) and Brazilian tension tests (BTS)[Data from \textit{Geotech. Geol. Engineering} (2014), 32].
The value of the igneous set is an average of granite, latite, meta-pegmatite and peridotite.
The tensile strength of the metamorphic set is an average of gneiss, marble, quartzite and slate.
Compare these values to tensile strength of fused silica: 48 MPa, 304 stainless steel: 505 MPa, and titanium: 1860 MPa.}
\label{fig:TensStrengthSummary}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 


%==================================================================================
## Shear failure

%--------------------------------------------------------------------------------
### Frictional Strength

The shear strength of rocks depends on the cohesive strength of the rock $S_0$ (to be explained later) and the internal frictional strength of the rock.
The frictional strength depends on friction forces, where the force $F_T$ needed to displace an object resting on a surface depends on the friction coefficient $\mu$ and applied normal force $F_N$, such that $F_T = \mu F_N$ (Figure \ref{fig:FrictionBlock}).
Hence, if the normal force $F_N=0$, then $F_T = 0$. 
The frictional force $F_T$ increases linearly with the value of the normal force $F_N$.	

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/5-Friction.pdf}}
\caption{Friction forces and the friction coefficient. (a,b) Frictional force required to move a solid box. (c) Extension to granular media.}
\label{fig:FrictionBlock}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

Similarly, uncemented sediments can resist shear stresses with the application of an effective ``confining'' compressive stress (remember the example of the vacuum-sealed coffee).
The maximum shear stress $\tau$ in uncemented sands is proportional to the normal effective stress $\sigma_n$ through an ``internal'' friction coefficient $\mu_i$ (red line in Figure \ref{fig:SandStrength}).
The sand is at shear failure when the shear line $\tau = \mu_i \sigma_n$ intercects the state of stress represented by the Mohr circle \href{https://mechanicalc.com/calculators/mohrs-circle/}{(Check this online Mohr's circle drawer)}. 


\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.50]{./Figures/split/5A-14.pdf}}
\caption{Frictional strength of uncemented sediments.}
\label{fig:SandStrength}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

The Mohr circle represents all possible state of stresses depending on the plane at which you measure $\sigma_n$ and $\tau$. 
Notice that from all those possible state of stresses, there is just one state of stress that intersects the line $\tau = \mu_i \sigma_n$. 
That plane is the plane at which a shear fracture would form.
Similarly to Figure \ref{fig:FrictionBlock}, if $\sigma_n = 0$ then $\tau = 0$, so the sand has  no strength whatsoever without an effective compressive stress.
The friction coefficient $\mu_i$ is often expressed as a friction angle $\varphi$, where $ \tan (\varphi) = \mu_i$. 
Typical values of $\mu_i$ vary from 0.4 to 1.0.
For example, if $\mu_i=0.5$, then $\varphi \sim 30^{\circ}$.

%--------------------------------------------------------------------------------
### Unconfined compression strength

Cemented rocks can bear shear stresses with zero effective lateral stress $\sigma_r = 0$ ($\sigma_r$ for radial effective stress as in cylindrical samples).
Figure \ref{fig:UCS} shows an unconfined cylindrical rock loaded (on the top face) to failure with a compression effective stress $\sigma_a$.
We call $UCS$ (Unconfined Compression Strength) to the maximum compression stress (applied in axial direction) the rock can hold under unconfined conditions.
Axisymmetric tests require rocks samples in which the length should be about twice the diameter to minimize shear end-effects (as in short samples) and buckling instabilities (as in long samples).

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.60]{./Figures/split/5A-12.pdf}}
\caption{Unconfined compression strength: schematic diagram, stress-strain plot and corresponding Mohr circle.}
\label{fig:UCS}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

%--------------------------------------------------------------------------------
### Confined strength: the triaxial test

Let us now apply an effective compressive ``confining'' stress $\sigma_r \neq 0$ (Figure \ref{fig:CoulombFailure}).
The measured peak stress is higher than the peak stress without confining stress.
The increment in peak stress will be a function of the internal frictional strength of the rock.
Hence, the maximum shear stress $\tau$ will be a function of both the rock cohesive strength $S_0$ and the applied normal effective compressive stress $\sigma_n$ through the Coulomb failure criterion expressed in the following equation: 

\begin{equation}
	\tau = S_0 + \mu_i \sigma_n	
\label{eq:CoulombTS}
\end{equation}			

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.60]{./Figures/split/5A-13.pdf}}
\caption{Shear strength: Coulomb failure criterion. The cylindrical rock sample bears a radial confining stress $\sigma_r$.}
\label{fig:CoulombFailure}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

With a linear shear failure criterion, a fracture will ideally form at an angle $\pi/4 + \varphi/2$ from the plane where the maximum principal stress is applied. Such plane will also be co-linear with the intermediate principal stress.	For a typical value of $\varphi \sim 30^{\circ}$, $\pi/4 + \varphi/2 = 60^{\circ}$.

%#########################################################################
\noindent\rule{16.5cm}{0.4pt} \newline
\emph{PROBLEM 4.2:} 
In the following uncemented sediment sample and corresponding figure: \newline
a) Which is the point in the Mohr circle with maximum $\tau / \sigma_n$? \newline
b) What is the angle of the failure plane? \newline
c) What is the ratio $\sigma_a / \sigma_r$ at failure?
%Example
\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.50]{./Figures/split/5A-15.pdf}}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

\vspace{0.1in}
SOLUTION \newline 
a) The point in the Mohr circle with maximum ratio $\tau / \sigma_n$ is the one that touches the yield line, for which  $\tau / \sigma_n = \mu_i$

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.55]{./Figures/split/AngleFailurePlane.pdf}}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

b) Let us use the figure above to solve the problem. 
The top side of the sample is subjected to stress $(\sigma_a,0)$ in the $\sigma_n$-$\tau$ plane.
The lateral side of the sample is subjected to stress $(\sigma_r,0)$ in the $\sigma_n$-$\tau$ plane.
The state of stress $(\sigma_n,\tau)$ at failure can be located going $\pi/2 + \varphi$ counterclockwise from $(\sigma_a,0)$ to $(\sigma_r,0)$.
The plane of shear failure corresponds to this point and it is at $(\pi/2 + \varphi)/2$ from the top side towards the lateral side. 
Notice that going from $(\sigma_a,0)$ to $(\sigma_r,0)$ takes 180$^{\circ} = \pi/2$ in the Mohr circle.
\newline

c) Let us use $C$ (center of the circle) and $R$ (radius of the circle) to express $\sigma_a / \sigma_r$:

\[ 
	\frac{\sigma_a}{\sigma_r} = \frac{C + R}{C-R} = 
		\frac{C+C \sin \varphi}{C-C \sin \varphi} =
		\frac{1+\sin \varphi}{1-\sin \varphi} 		
 \: \: \blacksquare
\]

\noindent\rule{16.5cm}{0.4pt} \newline
%#########################################################################

Sometimes, it is easier to think (and compute) shear failure parameters based on principal stresses rather than on normal and shear stress (Figure \ref{fig:CoulombCriterionPS}).
Coulomb's failure criterion (Eq. \ref{eq:CoulombTS}) can be written as

\begin{equation}
	\sigma_1 = UCS + q \: \sigma_3	
\end{equation}	

where $\sigma_1$ is the effective maximum principal stress at failure, $\sigma_3$ is the effective minimum principal stress and $q$ is the friction parameter function of the friction angle (warning: this is not the same $q$ from the $p'-q$ or $\sigma_m-q$ space).
It can be shown that, 

\begin{equation}
	q = \frac{1 + \sin \varphi}{1 - \sin \varphi}
\end{equation}	

For a typical $\varphi ~ 30^{\circ}$, $ q = 3$.	
The friction coefficient can be calculated from the friction parameter $q$ with the following equation:

\begin{equation}
	\mu_i = \frac{q-1}{2 \sqrt{q}}
\end{equation}	


$UCS$ can also be expressed in terms of cohesive strength as 

\begin{equation}
	UCS = 2 S_0 \left( \frac{1 + \sin \varphi}{1 - \sin \varphi} \right)^{1/2} 
	    = 2 S_0 \sqrt{q}
\label{eq:UCS-CohStrength-q}
\end{equation}	

 

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/5A-16.pdf}}
\caption{Equivalency of the Coulomb criterion in terms of shear and normal stresses and in terms of principal stresses.}
\label{fig:CoulombCriterionPS}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

Figure \ref{fig:RockShearData} summarizes shear strength properties for various cemented rocks.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.85]{./Figures/split/4-ShearStrengthSummary.pdf}}
\caption{Average values of cohesive strength and internal friction angle for various types of rocks (original data from [Zoback, 2013]).}
\label{fig:RockShearData}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

%--------------------------------------------------------------------------------
### Triaxial tests of fluid saturated rocks and sediments

The shear strength of rocks depends on effective stresses, not on total stresses.
In the field and the laboratory, however, we usually measure total stresses $(S_1,S_2,S_3)$ instead of effective stresses $(\sigma_1,\sigma_2,\sigma_3)$.
The shear strength of rocks is measured in a triaxial frame (Fig. \ref{fig:TriaxialCell}-a). 
A cylindrical (axisymmetric) triaxial frame can apply independently a confining pressure (that converts into stress) $P_c$, a deviatoric stress $\sigma_D$, and a pore pressure $P_p$.

The confining stress is applied by means of a deformable sleeve around the rock by changing the confining fluid pressure $P_c$ with a fluid pump. 
The confining fluid is usually hydraulic oil or water. 
The sleeve makes it possible to apply an effective confining stress and prevents confining fluid to enter into the rock pores and mix with the pore fluid. 
The confining pressure is maintained constant in a typical deviatoric triaxial test $P_c = cst$.

The pore fluid pressure $P_p$ is applied with another fluid pump. 
A fluid conduit connects the pump with the rock pore space. 
Some triaxial frames have two pore fluid outlets to measure permeability during loading. Notice that $P_p < P_c$, otherwise the sleeve would inflate like a balloon inside the pressure vessel. 
The pore pressure is maintained constant in a typical deviatoric triaxial test $P_p = cst$.

The deviatoric stress $\sigma_D$ is applied through axial loading with a piston that compresses the rock in axial direction. The deviatoric stress is defined as $\sigma_D =S_1 - S_3$, where $S_1$ is the total maximum stress applied with the frame and $S_3$ is the minimum total stress (equal to the confining pressure $S_3 = P_c$) (Figure \ref{fig:TriaxSchematic}). 
Notice that in a cylindrical triaxial frame $S_2=S_3$ and $S_1 - S_3=\sigma_1-\sigma_3$. The deviatoric stress is increased with a constant displacement (strain) rate $d \varepsilon_a / dt = cst$ in a typical deviatoric triaxial test.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/4-TriaxialSchematic.png}}
\caption{Schematic diagram of stresses and pressures in the axisymmetric triaxial test. $S_1$: total axial stress, $S_3$: total radial stress ($=P_c$: confining pressure), $P_p$: pore pressure.}
\label{fig:TriaxSchematic}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

The data shown in Fig. \ref{fig:TriaxialCell}-b summarizes the results of 14 independent triaxial tests: $S_3$ is the confining pressure for each experiment, $S_1$ is the maximum stress measured at failure, and $P_p$ is the preset pore pressure.
The data shows that the maximum principal stress $S_1$ (measured at failure) tends to increase as $S_3$ increases and tends to decrease as $P_p$ increases.
When the data is corrected to effective stresses (Fig. \ref{fig:TriaxialCell}-c), it becomes clear that there is just one relationship between $\sigma_1 = (S_1 - P_p)$ and $\sigma_3 = (S_3 - P_p)$.	

The equation that links these two quantities is Eq. \ref{fig:CoulombCriterionPS}. 
It is usually easier to calculate $UCS$ and $q$ from  fitting a straight line to $\sigma_1$ (failure)- $\sigma_3 $ data, and then calculate cohesive strength from Eq. \ref{eq:UCS-CohStrength-q}, friction angle as

\begin{equation}
	\varphi = \arctan \left( \frac{q-1}{2\sqrt{q}} \right) 
\label{eq:FrictionangleParamq}
\end{equation}
 

%#########################################################################
\noindent\rule{16.5cm}{0.4pt} \newline
\emph{PROBLEM 4.3:} Fit a line (manually) to the data shown in Fig. Fig. \ref{fig:TriaxialCell}-c for the Darley Dale sandstone and calculate $UCS$, $q$, $S_0$, $\varphi$ and $\mu_i$. 

SOLUTION \newline 
The red line in Fig. \ref{fig:TriaxialCell}-c was manually  drawn ignoring the point with the highest confining stress. 
Hence, this line is accurate only when $S_3 \leqslant 80$ MPa. \newline

The red line hits the y-axis at $S_1 \sim 80$ MPa, hence,

\[ UCS = 80 \text{ MPa} \]

The parameter $q$ is the slope of the red line. Taking the entire line length:

\[ q = \frac{\Delta \sigma_1}{\Delta \sigma_3} = 
       \frac{520 \text{ MPa}}{110 \text{ MPa}} = 4.73
\]

Finally, using Eqs. \ref{eq:UCS-CohStrength-q} and \ref{eq:FrictionangleParamq}:

\[ S_0 = \frac{UCS}{2 \sqrt{q}} = \frac{80 \text{MPa}}{2 \sqrt{4.73}} = 18.4 \text{MPa} \]
 
 
\[ 
\varphi = \arctan \left( \frac{q-1}{2\sqrt{q}} \right) 
        = \arctan \left( \frac{4.73-1}{2\sqrt{4.73}} \right) = 40.6^{\circ} 
\]

\[ 
\mu_i = \tan (\varphi) = \tan (40.6^{\circ}) = 0.86 
\: \: \blacksquare
\]


\noindent\rule{16.5cm}{0.4pt} \newline
%#########################################################################

In the process of triaxial loading, rocks begin by decreasing volume (compression loading) but  may show positive changes of volumetric strain $\varepsilon_v = \varepsilon_a + 2\varepsilon_r$ approaching failure. 
That is, the rock may start shrinking but it may dilate close to failure giving $d \varepsilon_v/dt<0$ (dilation is negative). 
At this point the rock is not elastic anymore and develops damage inside.
Considerable damage often starts at 50\% to 70\% of the peak stress.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/Triaxial-Darley.pdf}}
\caption{Triaxial testing. (a) Axisymmetric triaxial frame comprising a pressure vessel, fluid pumps and a reaction frame to apply axial load (not visible in figure). (b) Example results of 14 independent triaxial tests on Darley Dale sandstone as a function of total stresses and pore pressure. (c) Data from -b replotted as effective stresses. Rocks failure is explained through effective stresses, not through total stresses. }
\label{fig:TriaxialCell}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 


%==================================================================================
## Compression failure: Pore collapse

If compression stresses are high enough, grains can crush filling the pore space.
Pore collapse may happen in nature due to rock burial and also in petroleum engineering during reservoir depletion. In both cases effective stresses increase in all directions.
In long and thin reservoirs, depletion does not cause strains in all directions but predominantly in the vertical direction (Figures \ref{fig:1Dstrain} and \ref{fig:ReservoirCompaction}).
This type of deformation is called ``uniaxial-strain'' condition.
When effective stress goes over the yield stress ($\sigma'_p$ in Fig. \ref{fig:PoreCollapse}), significant plastic irrecoverable deformations occur and may decrease permeability.
High compression combined with shear can lead to grain crushing at shear and compaction bands resulting in permeability much lower than that of the original rock matrix.	

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/5A-21.pdf}}
\caption{Pore collapse under uniaxial strain condition with grain crushing. $\sigma'_p$  indicates the yield stress at which significant plastic strains happen if surpassed.}
\label{fig:PoreCollapse}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 


%================================================================================
## Yield/failure locus

We can combine all rock failure types in a single $(\sigma_n,\tau)$ plot (Fig. \ref{fig:YieldLocus}).
The rock would fail in tension if the Mohr circle (or state of stress) goes further to the left of $T_S$. 
It would fail in shear if it touches the red line $\tau = S_0 + \mu_i \sigma_n$. 
Last, it would develop significant compressive plastic strains if it crosses the yield cap (blue line - as you may guess, there is also an equation for it!).	

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.55]{./Figures/split/5B-YieldLocus.pdf}}
\caption{Summary of basic rock failure modes.}
\label{fig:YieldLocus}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

%\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
%\centerline{\includegraphics[scale=0.65]{./Figures/split/5B-3.pdf}}
%\caption{Tensile, shear, and compression yield limits}
%\label{fig:lec5A-X}
%\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

%================================================================================
## Strength anisotropy

Most rocks have anisotropic strength properties, thus, strength depends on the loading direction.
The plot in Fig. \ref{fig:StrengthAnisotropy} shows anisotropy of shear strength. Consider a rock with well defined planes of weakness in one particular direction. 
These plane of weakness may be constituted by fractures, weakly bonded layers, or weak rock layers. For example, there are some rocks with mica foliation that have almost no shear strength whatsoever in the foliation planes.
The plots on the right of Fig. \ref{fig:StrengthAnisotropy} show that the shear strength depends on the loading orientation. The sample is the weakest when the orientation of weak planes coincides with the plane that meets the shear failure line, that is  $\pi/4 + \varphi/2$. The sample is the strongest when the orientation of weak planes is perpendicular to the expected shear failure plane.
The videos in this playlist \url{https://www.youtube.com/playlist?list=PLv0npDbE5HXvEdptgajRDG3x-lwmtGDbr} show how bedding interfaces affect failures processes under deviatoric stress.
A similar phenomenon applies to tensile strength. Planes of weakness can greatly reduce tensile strength for stresses applied in direction perpendicular to those planes of weakness.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.75]{./Figures/split/5-StrengthAnisotropy.pdf}}
\caption{Shear strength anisotropy example in which bedding planes are weaker than the rock layers. \hl{[add real data of shales]}}
\label{fig:StrengthAnisotropy}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

%================================================================================
## Deformation beyond the elastic limit

Rocks have a limited range for which they behave elastically, with recoverable strains.
After a certain limit, termed yield stress, the rock experiences plastic irrecoverable strains (inelasticity) (Fig. \ref{fig:ElastoPlastIntro}).
Rocks may be still quite strong after reaching the yield stress or even the peak stress if they are able to sustain plastic strains.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/5B-9.pdf}}
\caption{Post-peak behavior: elastic and plastic strains.}
\label{fig:ElastoPlastIntro}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

Brittleness characterizes strain localization and energy rate release with failure.
Brittle rocks fail quickly and in well-defined planes. The stress-strain response usually exhibits a well defined peak stress (red curve in Fig. \ref{fig:StrainHardSoft}).
Ductile rocks fail slowly (according to the strain-rate) and distribute strains during failure. 
The stress-strain response does not exhibits a well defined peak stress and may get even stronger with increasing deformation (blue curve in Fig. \ref{fig:StrainHardSoft}).
There are several factors that affect brittleness, such as:
\begin{itemize}
	\item Mean effective stress: higher mean effective stress favors more ductile behavior.
	\item Temperature: higher temperature favors more ductile behavior.
	\item Loading rate: lower loading rate favors more ductile behavior.
	\item Mineralogy: higher organic and clay content favors more ductile behavior in shales, while higher carbonate content favors more brittle failure. 
	\item Specimen size: as the rock sample size increases, more and bigger discontinuities (such as fractures) are likely to be present and contribute to more ductile response because of failure of internal fractures rather than the rock matrix.	
	\item Elastic properties: some carbonate rich shales have a good correlation of brittleness with the ratio $E/\nu$, where the carbonate mineral fraction contributes to high Young's modulus $E$ and low Poisson's ratio $\nu$.    
\end{itemize}

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/5B-10.pdf}}
\caption{Brittleness as a function of confinement}
\label{fig:StrainHardSoft}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

The plot on the left of Fig. \ref{fig:ElastoplasticityModes} shows an example of measurement of deviatoric stress $\sigma_d = (\sigma_1 - \sigma_3)$ as a function of axial strain for various confining (minimum) stresses. The data clearly shows a transition from brittle to ductile in Carrara marble.
The post-peak stress-strain behavior can be modeled with plasticity theory.
The simplest plastic model considers no increase (or decrease) of stress once the yield stress is reached (perfect plastic behavior).
As seen in the experimental data, however, the rock may still be able to support stresses after reaching the yield stress. 
The rock exhibits ``strain-hardening'' behavior when it gets stronger with further straining, or ``strain-softening'' behavior when it gets weaker with further straining. 
The increments (or reductions) of stress with plastic strain $\uuline{\varepsilon}{}_p$ can be modeled through a plastic tensor $\uuline{C}{}_p$ such that after the yield stress

\begin{equation}
	\Delta \uuline{\sigma} = \uuline{C}{}_p \Delta \uuline{\varepsilon}{}_p
\end{equation}

Accounting for plastic strains is required in rocks with small elastic regions, and in large scale and long-term processes such as fault reactivation, evolution of sedimentary basins, and salt diapirism.

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.60]{./Figures/split/5B-11.pdf}}
\caption{Elasto-plasticity: experimental data and idealized behavior.}
\label{fig:ElastoplasticityModes}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 


%================================================================================
## Rock damage and failure revisited

Now that we know the macroscopic modes of rock failure we can investigate again the actual mechanisms of rock inelasticity and failure.
First, uncemented rocks cannot hold tensile stresses and failure takes place through internal shearing (grain to grain friction and rotation) and grain crushing at high mean compressive stress. 
Fig. \ref{fig:FailureMechanisms} shows experimental evidence of grain rotation in the shearing region of a sand specimen loaded axially (see warm-colored shear band).
Second, cemented rocks can hold tensile and shear stresses. 
Most rocks have some level of internal microfracturing or defects that act as fracture tips. 
Fractures propagate in three modes: opening, in-plane shear, and out-of-plane shear. 	 

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.65]{./Figures/split/5B-12.pdf}}
\caption{Rock failure at the microscale: mechanisms behind rock failure.}
\label{fig:FailureMechanisms}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

Shear and tensile stresses amplify at fracture tips. Therefore fracture propagation usually starts at fracture tips.
The images in Fig. \ref{fig:FracsTuffo} show the propagation of fractures after applying a vertical stress on Tuffo carbonate samples with a pre-existing crack (thick dark line in the middle).

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.60]{./Figures/split/5B-13.pdf}}
\caption{Microfracture propagation in cemented rock. Cracks promote stress concentration and intensification at tips. Failure initiates at crack tips. Propagating fractures may coalesce and make a bigger fracture.}
\label{fig:FracsTuffo}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 

The coalescence of multiple microfractures can form a macrofracture that defines a macroscopic failure plane (Figure \ref{fig:MicroFracCoalescence}).

\begin{figure}[H] % F F F F F F F F F F F F F F F F F F F   
\centerline{\includegraphics[scale=0.55]{./Figures/split/5B-14.pdf}}
\caption{Microfracture coalescence in cemented rock with pre-existing flaws.}
\label{fig:MicroFracCoalescence}
\end{figure} % F F F F F F F F F F F F F F F F F F F F F F 


%================================================================================
## Problems

1. The following data presents the results of triaxial tests performed on a dry samples of cohesionless fine sand from the Frio formation in the Gulf of Mexico Basin.
	1. Plot the maximum principal effective stress $\sigma_1$ as a function of $\sigma_3$ for the three experiments. Fit a line that goes to the intercept (0,0) and calculate the shear strength parameter $q$.
	2. Replot the data as Mohr circles, calculate the shear angle $\varphi = f(q)$ and plot the shear yield line. Does the shear yield line intersect the Mohr circles?

| Confining pressure<br> $P_c$ [MPa] | Pore pressure<br> $P_p$ [MPa] | Peak deviatoric stress<br> $S_1 - S_3$ [MPa] |
|----------------------------------|-----------------------------|------------------------------|
| 3.4                              | 0                           | 7.1                        |
| 6.9                              | 0                           | 20.6                         |
| 10.3                             | 0                           | 29.7                        |
	
2. The file \href{https://github.com/dnicolasespinoza/GeomechanicsJupyter/tree/master/UndergradHomework/HW5}{Triaxial-1500psi-raw.dat} (uploaded to Github) contains data from a triaxial test performed on a sandstone in dry conditions ($P_p$ = 0 psi). $P_c$ is the confining pressure, $Sig_D$ is the deviatoric stress ($S_1-S_3$), $E_x$ is the axial strain, and $E_y$ is the radial strain.
	1. Plot deviatoric stress and strains as a function of time (two plots). Mechanical experiments are usually performed at constant strain rate or constant stress rate. Which case is this? What is the rate?
	2. Plot deviatoric stress as a function of axial strain. Compute loading Young modulus at 25\% of the peak stress and the unloading Young moduli for the two unloading cycles. Comment on the difference.
	3. Plot radial strain versus axial strain and compute loading Poisson ratio.
	4. Plot deviatoric stress versus volumetric strain. Does the sample contract, dilate, or both? Explain.
	4. If the shear strength parameter is $q=5.3$, what is the $UCS$ of this rock?
	
	
3. Twelve triaxial tests on cylindrical plugs of Berea Sandstone are reported below (Bernabe and Brace, 1990 - \textit{The Brittle-Ductile Transition in Rocks, Geophys. Monogr. Serf.} Vp, 56, 91-101). (*) This is the axial stress that a load cell measures inside a pressurized vessel ($S_1-S_3$). For example, the value would be zero for hydrostatic loading ($S_1=S_3 \rightarrow S_1-S_3=0$). 
	1. Plot all data points in a $\sigma_1$ versus $\sigma_3$ plot and draw respective Mohr Circles (in Matlab, Python or Excel).
	2. Fit the data to Mohr-Coulomb criterion to compute unconfined compressive strength $UCS$ and the parameter $q$ through a linear regression. Then, calculate the cohesive strength $S_o$ and internal friction coefficient $\mu_i$.
	3. Based on this information, compute the failure angle of the shear fracture you would expect to see in this sample after failure. Draw a sketch indicating the orientation with respect to the axial and radial stress.
	3. Did pore pressure significantly change the effective stress failure criterion? 
	
| Confining pressure<br> $P_c$ [MPa] | Pore pressure<br> $P_p$ [MPa] | Peak deviatoric stress<br> $S_1 - S_3$ [MPa] |
|----------------------------|-----------------------------|----------------------------------|
| 10                               | 0                           | 116                        |
| 50                               | 0                           | 227                        |
| 20                               | 8                           | 119                        |
| 45                               | 8                           | 183                        |
| 60                               | 8                           | 206                        |
| 75                               | 8                           | 228                        |
| 50                               | 37                          | 120                        |
| 50                               | 32                          | 141                        |
| 90                               | 64                          | 161                        |
| 90                               | 55                          | 187                        |
| 130                              | 96                          | 186                        |
| 130                              | 84                          | 207                        |


%================================================================================
## Further reading and references

1. Fjaer, E., Holt, R.M., Raaen, A.M., Risnes, R. and Horsrud, P., 2008. Petroleum related rock mechanics (Vol. 53). Elsevier. (Chapter 2)
2. Jaeger, J.C., Cook, N.G. and Zimmerman, R., 2009. Fundamentals of rock mechanics. John Wiley \& Sons. (Chapters 4 and 6)
3. Zoback, M.D., 2010. Reservoir geomechanics. Cambridge University Press. (Chapter 4)
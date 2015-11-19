# Visualizing averaged results

After the model is processed and the Particle-Analytics output files are generated, a number of visualization and results-analysis tools can be brought into play.

One can load the coarse-graining mesh via the [*Load post-process file* section](post_load_results.md) of the [Post-processing Toolbar](post_postprocessing.md).

Once the file is loaded, the different meshes used in the process will appear in the [`Select & Display Style` window](post_view_particles.md).

To visualize the averaged results, open the `View Results and Deformation` window (`Windows > View results...` or `CTRL-d`).

The figure below, which uses the same solution that dominates [the previous section](post_view_particles.md), depicts the density projected first onto a volumetric mesh of tetrahedra, and then onto a planar mesh of triangles which slices through the middle of the domain.

![](img/post_cg_display_density.png "Volumetric data versus planar slice")

The interior of the volumetric mesh can be visualized through slicing planes defined over different directions:

* See the `Cut Plane > Succession` section of `Help > Viz Manual... > POSTPROCESSING > Do Cuts Menu`

* Define the cutting axis by two points. Enter first point: *(0.0 -0.2 0.0)*, and second point: *(0.0 0.2 0.0)*.

* Enter the number of cut surfaces along the defined line: 4. Each cut surface will appear as a different
  layer in the [`Select & Display Style` window](post_view_particles.md), and can be visualized by deactivating the volume mesh, therein.

  ![](img/post_cg_display_density_vert_cuts.png "4 slices along the Y axis")

* Reactivating the volumetric mesh and deactivating the cuts, it is possible generate new cuts in a different direction

* Selecting a new set of successions in direction Z (First point: *(0.0 0.0 -0.2)*, second point: *(0.0 0.0 0.2)*, and 4 cut surfaces) gives ...

  ![](img/post_cg_display_density_horiz_cuts.png "Sphere view modes")




## Graphs


To analyse the results in the mesh, graphs can be generated for the temporal evolution of a variable at a
defined point or for the spatial distribution of a chosen variable.  Each is outlined, below:

##### Temporal

The generation of a graph with the temporal evolution of a variable in a predefined point can be performed
by:

* open the `View Results and Deformation` window (`Windows > View results...` or `CTRL-d`).

* In the `Graphs > Point evolution > Variable (density)` section of that window, chose `density`.

* Enter the coordinates of the point: *(0.3 0.0 0.05)*. More points can be entered or *ESC* to finish.

  ![](img/post_cg_display_density_graph_evolution.png "Sphere view modes")

##### Spatial

In a similar way, the spatial distribution of a variable in a defined direction can be plotted:

* Set the spatial direction in X axis: `Menu > View results > Graphs > Line graph > Set X axis > Z variation`.

* Set the variable to plot: `Menu > View results > Graphs > Line graph > Variable (density)`.

* Enter the initial point of the plot: *(0.3 0.0 -0.2)*, and the second point: *(0.3 0.0 0.2)*. More points can be entered or *ESC* to finish

  ![](img/post_cg_display_density_graph_LineZ.png "Sphere view modes")

The graphs can be modified using the options in the Graph window, or can be used a more specialized software (like MS Excel or Matlab),
exporting the graphs as 2 columns ascii files: `Menu > File > Export > Graph` and select the graph to export, or export all the graphs in the screen.

> NOTE:
> 
> * Explain something about the Integral 1D or 2D visualization...



## Pressure/drag force in surfaces

When the user define physical surfaces (geometries), the pressure and drag forces over those surfaces
will be calculated during the precessing.

For the previous example, if the condition is applied for the surface in the middle of the domain (the
conveyor), the drag forces and pressure will appear in the results menu. In the figure below, the resultant
drag force in X and Z directions are depicted.

![](img/post_cg_display_surface_pressure.png "Sphere view modes")


## Integrals

The calculation of the integrals in a direction (1D) or a plane (2D) can be specially useful in certain
situations, like the calculation of mass or volumetric flow rate. Other case in which the integral can be
used is the calculation of the average values in a certain direction when the results should be uniformlly
distributed. For this, the averaged results can be projected over a surface, decreasing the amount of
information required.

With the previous example, the average density over the Y direction is calculated following as:

* Activate the integral in Axis-Y. In the *Particle-Analytics Options: Spatial_Integral = 1D*, and *Integral_direction = Y*.

* In Output options: Scale Results = yes and Scale Value = 1/L (L is the length in Y direction).

* Generate a geometry (surface) over the plane XZ, considering the dimensions of the domain (the
position of the surface in the Y direction is not relevant and any value can be used).

The results of the simulation now can be defined as *<ρ>_y*, as presented in the figure

![](img/post_cg_display_density_integralY.png "Sphere view modes")




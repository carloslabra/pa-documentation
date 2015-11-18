# Visualizing particles

Having previously activated *Print Particles* in the `Output` tab of the [Post-Processing Settings](post_processing_options_frame4.md) and performed processing via the [Start Processing](post_processing_control.md) button of the [Particle-Analytics Toolbar](post_preprocessing.md), the user can load the particles via the [*Load post-process file* section](post_load_results.md) of the [Post-processing Toolbar](post_postprocessing.md).

The files containing the particles, and optionally the contacts, have the extension .particles after the user-defined name.  It is these files that are considered, here.

By default, the [*Texture* view mode](post_view_modes.md) is activated and both particles and contacts are
rendered. 


The control for activate/deactivate, transparencies and style, for the different groups
of particles or contacts, the Display Style windows of GiD can be used [].
The particles file just contain the information of particles and contacts, and no information of geometry
is stored.

![](img/post_particle-contact_visualization.png "Sphere view modes")

If the geometry or mesh is required in the visualization of the particles, the option *Draw model* in Display Style can be used.
This requires to have loaded the geometry/mesh in the pre-processor and transparency/deactivation for the geometry are available
through the *Open layer window*.


![](img/post_particle_display_style.png "Sphere view modes")

To visualize the particle results, the toolbar *View Results Menu* can be used (`Menu > View results`), or through the *Results Window* [].

![](img/post_particle_display_velocity.png "Sphere view modes")
![](img/post_particle_display_velocity_vectors.png "Sphere view modes")

The visualization of the Force Chain with the particle contacts can be performed using the result option *Result Surface*.
Please be sure that the contacts are activated for visualization and the particles are deactivated or with transparency.

![](img/post_particle_display_force-chain.png "Sphere view modes")


For more details about the visualization options and capabilities, please check the GiD help in: `Help > Postprocessing > View Results Menu`.

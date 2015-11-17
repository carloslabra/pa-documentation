## Advanced

This section exposes the advanced features of Particle-Analytics, such as overwriting particle velocity.

![Post-Processing Settings: Advanced](img/postProSettingsAdvancedTab.png)

##### Overwrite Particle Data

* **Overwrite Velocity** : [on/off] Allows the user to overwrite the velocity.

 - **Set Velocity [X,Y,Z]** : When `Overwrite Velocity` is activated (`on`) users can overwrite individual velocity components by first enabling the [on/off] radio button for a particular component, and then entering the relevant value in the corresponding window.

* **Overwrite Groups** : [on/off] Allows the user to overwrite the particles' group-IDs.

 - **Groups File** : If `Overwrite Groups` is enabled, define a file used to overwrite the particles' group-IDs in the particles file.

##### Other Analysis

* **Mixing Analysis** : [on/off] Allows the user to activate mixing analysis.   When enabled, the output will include information on the spatial distribution of each material, the *Lacey mixing index*, and its component parts, for every time-step which is processed.  In post-processing, one can render graphs of the mixing index and or its components, against time. Or, on can use the spatial distribution information to explore where each material is concentrated, at each time-step. 
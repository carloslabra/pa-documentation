# Converter Toolbox

![The "Converter Toolbox" icon](img/toolbox.png)

This option gives the user access to different pre-processing tools. Currently the toolbox is reserved for
converters from partner-exported files to Particle-Analytics file formats.

Once clicked, the Toolbox pull-down menu will appear, showing the different conversion options: 

![The "Toolbox" pulldown menu](img/pre_tools_pulldown.png)

The rest of this section covers the different converters, in turn ...

#### **Converter: EDEM to P3**

![EDEM and P-A filenames](img/p4_convert_edem_to_p3.png)

See the next section for some specifics.

#### **Converter: EDEM to P4**

![EDEM and P-A filenames](img/p4_convert_edem_to_p4.png)

The main difference between the "to P3" and "to P4" options is that only the latter can handle non-spherical particles in the simulation. The older (P3) format assumed spherical particles in the DEM
simulation, whilst the newer (P4) format does not.  Extra information is provided via the contact files, through the use of an API mechanism in EDEM.  

For more details, see [Using Particle-Analytics with EDEM](post_edem.md).

#### **Converter: EDEM Collision to P4**

![EDEM collisions converter](img/edemCollision_to_P4.png)

#### **Converter: LIGGHTS to P4post**

![Liggghts converter](img/liggghts_to_P4post.png)
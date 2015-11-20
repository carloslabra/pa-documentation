## Using Particle-Analytics with [EDEM](http://www.dem-solutions.com/software/edem-software/)

[EDEM](http://www.dem-solutions.com/software/edem-software/) users who wish to analyse and visualize their results within Particle-Analytics can do so by exporting data from [EDEM](http://www.dem-solutions.com/software/edem-software/) and importing that export into Particle-Analytics.

## Data Export

[EDEM](http://www.dem-solutions.com/software/edem-software/) currently does not support exporting directly to the Particle-Analytics file format so data needs to be exported from [EDEM](http://www.dem-solutions.com/software/edem-software/) using a normal *.csv* file with an appropriate set of queries to populate the file with the necessary data. Details on setting up query configurations can be found in the [EDEM](http://www.dem-solutions.com/software/edem-software/) manual.

For spherical particles only the *P3* file for particles (*.p3p* extension) and for all contacts (*.p3c* extension) are required. These queries are detailed in Table 1, below. In the case of non-spherical, clustered particles, the ID of the two contacting particles is also required. In this case, data files of the *P4* type are exported. These are detailed in Table 2, below, for particles (*.p4p* extension), particle-particle contacts (*.p4c* extension) and for all particle-geometry contacts (*.p4w* extension).

In order to provide the ID for particles in contact, an additional API contact model has been written for [EDEM](http://www.dem-solutions.com/software/edem-software/) to determine and store the necessary contact data. The **Track_ID API contact model** (available as either a [windows *.dll* file](https://en.wikipedia.org/wiki/Dynamic-link_library) or a [linux *.so* file](http://superuser.com/questions/71404/what-is-an-so-file)) must be loaded for both particle-particle interactions and particle-geometry interactions to generate Particle-Analytics file types.

> NOTE:
Whilst it is possible to use the Particle-Analytics Toolbox for spherical particles, using the *P3* export configuration (i.e., the simulation is run ***without*** the **Track_ID API**) doing so may lead to errors: Due to precision limitations in [EDEM](http://www.dem-solutions.com/software/edem-software/)'s export file, a certain number of contacts may be rejected when the exported [EDEM](http://www.dem-solutions.com/software/edem-software/) file is being converted. In such a case, the Particle-Analytics converter will automatically increase the tolerance to accept all particle-particle and particle-geometry contacts, and will display a warning message detailing how many ambiguous contacts were found.

The Particle-Analytics toolbox has the minimum requirement listed in Tables 1 and 2, below, but also supports additional (optional) queries.  Each table contains some italicised queries (*UserScalarA*, *User3VectorB [X|Y|Z]*) which indicate that user-defined (and named!) results can also appear in the particle files, whether scalar, or multi-component.  If the X, Y and Z components are provided, the magnitude will also be calculated and averaged. If all three components are not found the items will treated as individual scalars.

<table border="1">
  <th colspan=2>
    <b>Table 1: P3 Export Queries</b>
  </th>
  <tr>
    <td><b>P3P File</b></td>
    <td><b>P3C File</b></td>
  </tr>
  <tr>
    <td>Q01:Total Number of Particles:</td>
    <td>Q01:Total Number of Contacts:</td>
  </tr>
  <tr>
    <td>Q02:Particle ID:</td>
    <td>Q02:Contact Vector 1 X:</td>
  </tr>
  <tr>
    <td>Q03:Particle Volume:</td>
    <td>Q03:Contact Vector 1 Y:</td>
  </tr>
  <tr>
    <td>Q04:Particle Mass:</td>
    <td>Q04:Contact Vector 1 Z:</td>
  </tr>
  <tr>
    <td>Q05:Particle Position X:</td>
    <td>Q05:Contact Vector 2 X:</td>
  </tr>
  <tr>
    <td>Q06:Particle Position Y:</td>
    <td>Q06:Contact Vector 2 Y:</td>
  </tr>
  <tr>
    <td>Q07:Particle Position Z:</td>
    <td>Q07:Contact Vector 2 Z:</td>
  </tr>
  <tr>
    <td>Q08:Particle Velocity X:</td>
    <td>Q08:Contact Position X:</td>
  </tr>
  <tr>
    <td>Q09:Particle Velocity Y:</td>
    <td>Q09:Contact Position Y:</td>
  </tr>
  <tr>
    <td>Q10:Particle Velocity Z:</td>
    <td>Q10:Contact Position Z:</td>
  </tr>
  <tr>
    <td><i>Q11: UserScalarA:</i></td>
    <td>Q11:Contact Normal Force X:</td>
  </tr>
  <tr>
    <td><i>Q12: User3VectorB X:</i></td>
    <td>Q12:Contact Normal Force Y:</td>
  </tr>
  <tr>
    <td><i>Q13: User3VectorB Y:</i></td>
    <td>Q13:Contact Normal Force Z:</td>
  </tr>
  <tr>
    <td><i>Q14: User3VectorB Z:</i></td>
    <td>Q14:Contact Tangential Force X:</td>
  </tr>
  <tr>
    <td></td>
    <td>Q15:Contact Tangential Force Y:</td>
  </tr>
  <tr>
    <td></td>
    <td>Q16:Contact Tangential Force Z:</td>
  </tr>
</table>




<table border="1">
  <th colspan=3>
    <b>Table 2: P4 Export Queries</b>
  </th>
  <tr>
    <td><b>P4P File</td>
    <td><b>P4C File</td>
    <td><b>P4W File</td>
  </tr>
  <tr>
    <td>Q01:Total Number of Particles:</td>
    <td>Q01:Total Number of Contacts:</td>
    <td>Q01:Total Number of Contacts:</td>
  <tr>
    <td>Q02:Particle ID:</td>
    <td>Q02:Contact IDfirst:</td>
    <td>Q02:Contact IDfirst:</td>
  <tr>
    <td>Q03:Particle Volume:</td>
    <td>Q03:Contact IDsecond:</td>
    <td>Q03:Contact Position X:</td>
  <tr>
    <td>Q04:Particle Mass:</td>
    <td>Q04:Contact Position X:</td>
    <td>Q04:Contact Position Y:</td>
  <tr>
    <td>Q05:Particle Position X:</td>
    <td>Q05:Contact Position Y:</td>
    <td>Q05:Contact Position Z:</td>
  <tr>
    <td>Q06:Particle Position Y:</td>
    <td>Q06:Contact Position Z:</td>
    <td>Q06:Contact Normal Force X:</td>
  <tr>
    <td>Q07:Particle Position Z:</td>
    <td>Q07:Contact Normal Force X:</td>
    <td>Q07:Contact Normal Force Y:</td>
  <tr>
    <td>Q08:Particle Velocity X:</td>
    <td>Q08:Contact Normal Force Y:</td>
    <td>Q08:Contact Normal Force Z:</td>
  <tr>
    <td>Q09:Particle Velocity Y:</td>
    <td>Q09:Contact Normal Force Z:</td>
    <td>Q09:Contact Tangential Force X:</td>
  <tr>
    <td>Q10:Particle Velocity Z:</td>
    <td>Q10:Contact Tangential Force X:</td>
    <td>Q10:Contact Tangential Force Y:</td>
  <tr>
    <td><i>Q11: UserScalarA:</i></td>
    <td>Q11:Contact Tangential Force Y:</td>
    <td>Q11:Contact Tangential Force Z:</td>
  <tr>
    <td><i>Q12: User3VectorB X:</i></td>
    <td>Q12:Contact Tangential Force Z:</td>
    <td></td>
  <tr>
    <td><i>Q13: User3VectorB Y:</i></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td><i>Q14: User3VectorB Z:</i></td>
    <td></td>
    <td></td>
  </tr>
</table>


## File Conversion

In order to carry out post-processing with the Particle-Analytics Toolbox, the data exported from [EDEM](http://www.dem-solutions.com/software/edem-software/) needs to be converted into the file format used by the Particle-Analytics Toolbox. The Particle-Analytics toolbox comes with an in-built converter which converts the *.csv* files exported from [EDEM](http://www.dem-solutions.com/software/edem-software/) to the required P3 or P4 files.
Such conversion is described [here](post_toolbox.md).
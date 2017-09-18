# Talon AD7200 Sector Patterns
We measured individual sector patterns for the 34 predefined sectors of a Talon AD7200 router inside an anechoic chamber. The measured patterns are provided here for validation and integration in other projects. Please note that these results might be device dependent and differ on other hardware components. We cannot grantee that different devices behave similar as sector patterns depend on hardware variations and firmware versions. 

## Talon Tools
These results have been generated using [Talon Tools: The Framework for Practical IEEE 802.11ad Research](https://seemoo.de/talon-tools/) in reference to our CoNEXT'17 paper "Compressive Millimeter-Wave Sector Selection in Off-the-Shelf IEEE 802.11ad Devices" (see below).

## Data Structure
This project contains the following files:
 * *plot_pattern_2d.m*: Plot 2D Antenna Sector Patterns
 * *plot_pattern_3d.m*: Plot 3D Antenna Sector Patterns
 * *sectorpattern_2d_ap*: Measurement results for AP in 2D scenario
 * *sectorpattern_2d_sta*: Measurement results for STA in 2D scenario
 * *sectorpattern_3d_ap*: Measurement results for AP in 3D scenario
 * *sectorpattern_3d_sta*: Measurement results for STA in 3D scenario

The 'sectorpattern_Xd_XXX.mat' files thereby contain a structure of the the following variables:
 * *az*: Azimuth Angles in Degree
 * *el*: Elevation Angles in Degree
 * *pattern_rssi*: Measured RSSI values
 * *pattern_snr*: Measured SNR values
 * *sector_set*: Set of sector

## Usage
To generate sector pattern plots just call the plot_pattern_2d.m or plot_pattern_3d.m file from within MATLAB. This will generate the patterns in individual Figures similar to the plots used in the paper. For integration in other project, simply import the 'sectorpattern_Xd_XXX.mat' files.

## License
Please carefully read our [Copyright and License](LICENSE).

## Reference our project
Any use of the Software which results in an academic publication or other publication which includes a bibliography must include citations to the Talon Tools project and to our CoNEXT'17 paper: 

* Daniel Steinmetzer, Daniel Wegemer, Matthias Schulz, Joerg Widmer, Matthias Hollick. 
  **Compressive Millimeter-Wave Sector Selection in Off-the-Shelf IEEE 802.11ad Devices**.
  *13th International Conference on emerging Networking EXperiments and Technologies (CoNEXT 2017)*, 
  December 2017, Seoul/Incheon, South Korea.
* Daniel Steinmetzer, Daniel Wegemer and Matthias Hollick, 
  **[Talon Tools: The Framework for Practical IEEE 802.11ad Research](https://seemoo.de/talon-tools/)**,
  2017, https://seemoo.de/talon-tools/

Find all references on Talon Tools in our [bibtex file](https://seemoo-lab.github.io/talon-tools/talon-tools.bib).

## Powered By
<a href="https://www.seemoo.tu-darmstadt.de">![SEEMOO logo](https://seemoo-lab.github.io/talon-tools/logos/seemoo.png)</a> &nbsp;
<a href="https://www.nicer.tu-darmstadt.de">![NICER logo](https://seemoo-lab.github.io/talon-tools/logos/nicer.png)</a> &nbsp;
<a href="https://www.crossing.tu-darmstadt.de">![CROSSING logo](https://seemoo-lab.github.io/talon-tools/logos/crossing.jpg)</a>&nbsp;
<a href="https://www.crisp-da.de">![CRSIP logo](https://seemoo-lab.github.io/talon-tools/logos/crisp.jpg)</a>&nbsp;
<a href="http://www.maki.tu-darmstadt.de/">![MAKI logo](https://seemoo-lab.github.io/talon-tools/logos/maki.png)</a> &nbsp;
<a href="https://www.cysec.tu-darmstadt.de">![CYSEC logo](https://seemoo-lab.github.io/talon-tools/logos/cysec.jpg)</a>&nbsp;
<a href="https://www.tu-darmstadt.de/index.en.jsp">![TU Darmstadt logo](https://seemoo-lab.github.io/talon-tools/logos/tudarmstadt.png)</a>&nbsp;

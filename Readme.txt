registry.cordexThis scripts will install the required libraries for WRF and setup the environment as necessary

1. Copy the .bash_aliases file to the home directory.
2. Source the bash file in the home directory using source ~/.bash_aliases 
3. Make new directory for the WRF isntallation as WRF-CORDEX
2. Run the install_li.sh inside WRF-CORDEX folder
3. Run wrfget_latest for latest version of WRF.
4. Run ./configure in WRF folder
5. Select the option to use.
6. Run ./compile em_real
7. Run ./configure in WPS folder
8. Select the option to use.
9. Run ./compile

For WRF-CORDEX
Pre requisite
	- Copy the WRFV4.0_CORDEX file to the WRF folder
	- tar xvfz WRFV4.0_CORDEX.tar.gz
1.Edit the Registry>Registry.EM file after the line registry.em_shared_collection
-add the line-
include registry.cordex
2. Run./clean -a
3. Run ./configure in WRF
4. Edit the configure.wrf file after the line -DNETCDF
-DCORDEXDIAG	\
5. Run ./compile em_real >& log.compile


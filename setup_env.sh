#!/bin/tcsh


setenv tool_dir /uusoc/facility/cad_tools
# Source Tools
#
# Synopsys
source ${tool_dir}/Synopsys/synopsys_setup.sh
# Cadence
source ${tool_dir}/Cadence/cadence_setup.sh
# Mentor
source ${tool_dir}/Mentor/mentor_setup.sh


setenv project_dir 				/research/ece/lnis
setenv pdk_gf12_dir 			${project_dir}/CAD_TOOLS/DKITS/GF/12nm/PDK/12LP/V1.0_4.1


# Create subdirectory for verilog/VHDL files
if !( -d ${PWD}/HDL/GATE) then
  mkdir ${PWD}/HDL/GATE
endif

# Create subdirectory for verilog/VHDL files
if !( -d ${PWD}/HDL/PLACED) then
  mkdir ${PWD}/HDL/PLACED
endif



##############
# Synopsys DC
##############

# Create sdc directory
if !( -d ${PWD}/design_compiler/SDC) then
  mkdir ${PWD}/design_compiler/SDC
endif

# Create dlib directory
if !( -d ${PWD}/design_compiler/DDC) then
  mkdir ${PWD}/design_compiler/DDC
endif

if !( -d ${PWD}/design_compiler/SDF) then
  mkdir ${PWD}/design_compiler/SDF
endif

# Create RPT directory
if !( -d ${PWD}/design_compiler/RPT) then
  mkdir ${PWD}/design_compiler/RPT
endif


# Create DESIGN_LIBS directory
if !( -d ${PWD}/design_compiler/DESIGN_LIBS) then
  mkdir ${PWD}/design_compiler/DESIGN_LIBS
endif


# Create subdirectory for verilog/VHDL files
if !( -d ${PWD}/design_compiler/HDL/GATE) then
  mkdir ${PWD}/design_compiler/HDL/GATE
endif

# Create subdirectory for .db files
if !( -d ${PWD}/design_compiler/DB) then
  mkdir ${PWD}/design_compiler/DB
endif



##################
# Cadence innovus
##################

# Create DBS directory
if !( -d ${PWD}/innovus/DBS) then
  mkdir ${PWD}/innovus/DBS
endif

# Create GDS directory
if !( -d ${PWD}/innovus/GDS) then
  mkdir ${PWD}/innovus/GDS
endif

# Create RPT directory
if !( -d ${PWD}/innovus/RPT) then
  mkdir ${PWD}/innovus/RPT
endif

if !( -d ${PWD}/innovus/SDF) then
  mkdir ${PWD}/innovus/SDF
endif

if !( -f ${PWD}/innovus/GDS/gds2.map) then
  ln -s $pdk_gf12_dir/pdk/captable/gds2.map ${PWD}/innovus/GDS/gds2.map
endif




###################
# Cadence Virtuoso
###################




if !( -d ${PWD}/virtuoso/calibre) then
  mkdir ${PWD}/virtuoso/calibre
endif


# Create drc, lvs, and pex directories
if !( -d ${PWD}/virtuoso/calibre/drc) then
  mkdir ${PWD}/virtuoso/calibre/drc
endif

if !( -d ${PWD}/virtuoso/calibre/drcmetalfill) then
  mkdir ${PWD}/virtuoso/calibre/drcmetalfill
endif

if !( -d ${PWD}/virtuoso/calibre/drcpolyfill) then
  mkdir ${PWD}/virtuoso/calibre/drcpolyfill
endif

if !( -d ${PWD}/virtuoso/calibre/lvs) then
  mkdir ${PWD}/virtuoso/calibre/lvs
endif

if !( -d ${PWD}/virtuoso/calibre/pex) then
  mkdir ${PWD}/virtuoso/calibre/pex
endif

# Create libs directory for your own librairies
if !( -d ${PWD}/virtuoso/libs) then
  mkdir ${PWD}/virtuoso/libs
endif

# Create simulation directory for Spectre/eldo/Hspice results
if !( -d ${PWD}/virtuoso/simulation) then
  mkdir ${PWD}/virtuoso/simulation
endif





##################
# Mentor Modelsim
##################

# Create RPT directory
if !( -d ${PWD}/modelsim) then
  mkdir ${PWD}/modelsim
endif

# Create RPT directory
if !( -d ${PWD}/modelsim/PROJECTS) then
  mkdir ${PWD}/modelsim/PROJECTS
endif










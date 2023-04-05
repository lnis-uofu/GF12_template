# GF12_template

## Getting Started

1. Checkout the repository
```sh
git clone git@github.com:lnis-uofu/GF12_template.git
```
2. Source tools
```sh
source setup_env.sh
```
*note  If you need to change the version to align with PDK you need to copy and modify these setup scripts and then point the source command to the newly copied and modified .sh files

## Synthesizing your design

1. Define your PDK using the design_compiler/.synopsys_dc.setup
 
*note 1. This file is hidden

*note 2. This needs to be a .db file. Use lc_shell to convert from .lib if necessary

*note 3. If there are multiple .db files use the following format: 
        set link_library "<*.db> <*.db>"

2. Define HDL in design_compiler/HDL/RTL

3. Set 'design' variable to top level verilog module

4. Open DesignCompiler and source synthesis.tcl
```sh
dc_shell -f SCRIPTS/synthesis.tcl
```

5. Results are in RPT/

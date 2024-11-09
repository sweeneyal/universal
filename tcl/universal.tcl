namespace eval universal {
    variable tcldir [file dirname [file normalize [info script]]]

    variable version "v0.1.0"

    namespace export autoinit
    namespace export get_ip_repo
    namespace export read_library_sources
}

# Calls this script in order to reinitialize in case the script changes.
proc universal::autoinit {} {
    variable tcldir
    source $tcldir/universal.tcl
}

# Get the repository path of the IP
proc universal::get_ip_repo {} {
    variable tcldir
    return [file dirname $tcldir/..]
}

# This is a script that will read all of this IP's internal source files.
proc universal::read_library_sources {} {
    set home [universal::get_ip_repo] 

    # Get all package files
    add_files $home/hdl/pkgs/CommonFunctions.vhd
    set_property library rktcpu [get_files CommonFunctions.vhd]

    add_files $home/hdl/pkgs/CommonTypes.vhd
    set_property library rktcpu [get_files CommonTypes.vhd]
}
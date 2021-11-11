#!/bin/bash


function outputarg() {
    echo "\$0 = $0"                                                      
    for i in $(seq 1 $#)
    do
        eval echo "\ \ \ \ \ \ \ \ \ \\$"$i" = \$"$i""
    done
    echo "         \$# = $#"
}

echo " "
echo "--------------------parameters-------------------"
echo " "
for i in $(seq 0 $#)
do
   eval echo "\ \ \\$"$i" = \$"$i""   
done
echo "  \$# = $#"
echo " "
echo '-----------deference between $@ and $*-----------'
echo " "
echo "  \$@ = $@"
echo "     └── $(outputarg "$@")"
echo " "
echo "  \$* = $*"
echo "     └── $(outputarg "$*")"
echo " "

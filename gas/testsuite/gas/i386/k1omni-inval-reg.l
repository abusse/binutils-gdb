.*: Assembler messages:
.*:1: Error: .*
.*:2: Error: .*
.*:3: Error: .*
.*:4: Error: .*
.*:5: Error: .*
.*:6: Error: .*
.*:7: Error: .*
.*:8: Error: .*
GAS LISTING .*


[ 	]*1[ 	]+lzcnt %ebx,%rax
[ 	]*2[ 	]+popcnt %ebx,%rax
[ 	]*3[ 	]+tzcnt %ebx,%rax
[ 	]*4[ 	]+tzcnti %ebx,%rax
[ 	]*5[ 	]+vmovnrapd %zmm1,\(%rcx\)\{eh\}
[ 	]*6[ 	]+vmovnraps %zmm1,\(%rcx\)\{eh\}\{%k1\}
[ 	]*7[ 	]+vmovnrngoapd %zmm1,\(%rcx\)\{eh\}\{%k2\}
[ 	]*8[ 	]+vmovnrngoaps %zmm1,\(%rcx\)\{eh\}

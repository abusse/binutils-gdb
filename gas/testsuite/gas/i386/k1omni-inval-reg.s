lzcnt %ebx,%rax
popcnt %ebx,%rax
tzcnt %ebx,%rax
tzcnti %ebx,%rax
vmovnrapd %zmm1,(%rcx){eh}
vmovnraps %zmm1,(%rcx){eh}{%k1}
vmovnrngoapd %zmm1,(%rcx){eh}{%k2}
vmovnrngoaps %zmm1,(%rcx){eh}

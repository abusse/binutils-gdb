# Check K1OMNI instructions

	.allow_index_reg
	.text
_start:
# Tests for op
	nop

# Tests for op k1, k2
	kand %k1,%k2
	kandn %k1,%k2
	kandnr %k1,%k2
	kmerge2l1h %k1,%k2
	kmerge2l1l %k1,%k2
	kmov %k1,%k2
	knot %k1,%k2
	kor %k1,%k2
	kortest %k1,%k2
	kxnor %k1,%k2
	kxor %k1,%k2

# Tests for op r32, k2
	kmov %eax,%k2
	kmov %r9d,%k2

# Tests for op k1, r32
	kmov %k1,%eax
	kmov %k1,%r9d

#Test for op r64, k1, k2
	kconcath %k2,%k1,%rax
	kconcath %k2,%k1,%r9
	kconcatl %k2,%k1,%rax
	kconcatl %k2,%k1,%r9

#Test for op k1, r64, imm3
	kextract $3,%rbx,%k1
	kextract $3,%r15,%k1

# Tests for op v1{k1}, k2, si(v3/mt)
	vpadcd %zmm3,%k2,%zmm1{%k1}
	vpadcd %zmm3{dcba},%k2,%zmm1{%k1}
	vpadcd %zmm3{cdab},%k2,%zmm1{%k1}
	vpadcd %zmm3{badc},%k2,%zmm1{%k1}
	vpadcd %zmm3{aaaa},%k2,%zmm1{%k1}
	vpadcd %zmm3{bbbb},%k2,%zmm1{%k1}
	vpadcd %zmm3{cccc},%k2,%zmm1{%k1}
	vpadcd %zmm3{dddd},%k2,%zmm1{%k1}
	vpadcd %zmm3{dacb},%k2,%zmm1{%k1}
	vpadcd %zmm3{eh},%k2,%zmm1{%k1}
	vpadcd %zmm3{dcba}{eh},%k2,%zmm1{%k1}
	vpadcd (%rcx){eh},%k2,%zmm1{%k1}
	vpadcd (%rcx),%k2,%zmm1{%k1}
	vpadcd (%rcx){16to16},%k2,%zmm1{%k1}
	vpadcd (%rcx){1to16},%k2,%zmm1{%k1}
	vpadcd (%rcx){4to16},%k2,%zmm1{%k1}
	vpadcd (%rcx){uint8},%k2,%zmm1{%k1}
	vpadcd (%rcx){sint8},%k2,%zmm1{%k1}
	vpadcd (%rcx){uint16},%k2,%zmm1{%k1}
	vpadcd (%rcx){sint16},%k2,%zmm1{%k1}
	vpadcd 0x80(%rcx){sint16},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3,%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{dcba},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{cdab},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{badc},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{aaaa},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{bbbb},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{cccc},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{dddd},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{dacb},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{eh},%k2,%zmm1{%k1}
	vpaddsetcd %zmm3{dcba}{eh},%k2,%zmm1{%k1}
	vpaddsetcd (%rcx){eh},%k2,%zmm1{%k1}
	vpaddsetcd (%rcx),%k2,%zmm1{%k1}
	vpaddsetcd (%rcx){16to16},%k2,%zmm1{%k1}
	vpaddsetcd (%rcx){1to16},%k2,%zmm1{%k1}
	vpaddsetcd (%rcx){4to16},%k2,%zmm1{%k1}
	vpaddsetcd (%rcx){uint8},%k2,%zmm1{%k1}
	vpaddsetcd (%rcx){sint8},%k2,%zmm1{%k1}
	vpaddsetcd (%rcx){uint16},%k2,%zmm1{%k1}
	vpaddsetcd (%rcx){sint16},%k2,%zmm1{%k1}
	vpaddsetcd 0x80(%rcx){sint16},%k2,%zmm1{%k1}
	vpsbbd %zmm3,%k2,%zmm1{%k1}
	vpsbbd %zmm3{dcba},%k2,%zmm1{%k1}
	vpsbbd %zmm3{cdab},%k2,%zmm1{%k1}
	vpsbbd %zmm3{badc},%k2,%zmm1{%k1}
	vpsbbd %zmm3{aaaa},%k2,%zmm1{%k1}
	vpsbbd %zmm3{bbbb},%k2,%zmm1{%k1}
	vpsbbd %zmm3{cccc},%k2,%zmm1{%k1}
	vpsbbd %zmm3{dddd},%k2,%zmm1{%k1}
	vpsbbd %zmm3{dacb},%k2,%zmm1{%k1}
	vpsbbd %zmm3{eh},%k2,%zmm1{%k1}
	vpsbbd %zmm3{dcba}{eh},%k2,%zmm1{%k1}
	vpsbbd (%rcx){eh},%k2,%zmm1{%k1}
	vpsbbd (%rcx),%k2,%zmm1{%k1}
	vpsbbd (%rcx){16to16},%k2,%zmm1{%k1}
	vpsbbd (%rcx){1to16},%k2,%zmm1{%k1}
	vpsbbd (%rcx){4to16},%k2,%zmm1{%k1}
	vpsbbd (%rcx){uint8},%k2,%zmm1{%k1}
	vpsbbd (%rcx){sint8},%k2,%zmm1{%k1}
	vpsbbd (%rcx){uint16},%k2,%zmm1{%k1}
	vpsbbd (%rcx){sint16},%k2,%zmm1{%k1}
	vpsbbd 0x80(%rcx){sint16},%k2,%zmm1{%k1}
	vpsbbrd %zmm3,%k2,%zmm1{%k1}
	vpsbbrd %zmm3{dcba},%k2,%zmm1{%k1}
	vpsbbrd %zmm3{cdab},%k2,%zmm1{%k1}
	vpsbbrd %zmm3{badc},%k2,%zmm1{%k1}
	vpsbbrd %zmm3{aaaa},%k2,%zmm1{%k1}
	vpsbbrd %zmm3{bbbb},%k2,%zmm1{%k1}
	vpsbbrd %zmm3{cccc},%k2,%zmm1{%k1}
	vpsbbrd %zmm3{dddd},%k2,%zmm1{%k1}
	vpsbbrd %zmm3{dacb},%k2,%zmm1{%k1}
	vpsbbrd %zmm3{eh},%k2,%zmm1{%k1}
	vpsbbrd %zmm3{dcba}{eh},%k2,%zmm1{%k1}
	vpsbbrd (%rcx){eh},%k2,%zmm1{%k1}
	vpsbbrd (%rcx),%k2,%zmm1{%k1}
	vpsbbrd (%rcx){16to16},%k2,%zmm1{%k1}
	vpsbbrd (%rcx){1to16},%k2,%zmm1{%k1}
	vpsbbrd (%rcx){4to16},%k2,%zmm1{%k1}
	vpsbbrd (%rcx){uint8},%k2,%zmm1{%k1}
	vpsbbrd (%rcx){sint8},%k2,%zmm1{%k1}
	vpsbbrd (%rcx){uint16},%k2,%zmm1{%k1}
	vpsbbrd (%rcx){sint16},%k2,%zmm1{%k1}
	vpsbbrd 0x80(%rcx){sint16},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3,%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{dcba},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{cdab},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{badc},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{aaaa},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{bbbb},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{cccc},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{dddd},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{dacb},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{eh},%k2,%zmm1{%k1}
	vpsubrsetbd %zmm3{dcba}{eh},%k2,%zmm1{%k1}
	vpsubrsetbd (%rcx){eh},%k2,%zmm1{%k1}
	vpsubrsetbd (%rcx),%k2,%zmm1{%k1}
	vpsubrsetbd (%rcx){16to16},%k2,%zmm1{%k1}
	vpsubrsetbd (%rcx){1to16},%k2,%zmm1{%k1}
	vpsubrsetbd (%rcx){4to16},%k2,%zmm1{%k1}
	vpsubrsetbd (%rcx){uint8},%k2,%zmm1{%k1}
	vpsubrsetbd (%rcx){sint8},%k2,%zmm1{%k1}
	vpsubrsetbd (%rcx){uint16},%k2,%zmm1{%k1}
	vpsubrsetbd (%rcx){sint16},%k2,%zmm1{%k1}
	vpsubrsetbd 0x80(%rcx){sint16},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3,%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{dcba},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{cdab},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{badc},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{aaaa},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{bbbb},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{cccc},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{dddd},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{dacb},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{eh},%k2,%zmm1{%k1}
	vpsubsetbd %zmm3{dcba}{eh},%k2,%zmm1{%k1}
	vpsubsetbd (%rcx){eh},%k2,%zmm1{%k1}
	vpsubsetbd (%rcx),%k2,%zmm1{%k1}
	vpsubsetbd (%rcx){16to16},%k2,%zmm1{%k1}
	vpsubsetbd (%rcx){1to16},%k2,%zmm1{%k1}
	vpsubsetbd (%rcx){4to16},%k2,%zmm1{%k1}
	vpsubsetbd (%rcx){uint8},%k2,%zmm1{%k1}
	vpsubsetbd (%rcx){sint8},%k2,%zmm1{%k1}
	vpsubsetbd (%rcx){uint16},%k2,%zmm1{%k1}
	vpsubsetbd (%rcx){sint16},%k2,%zmm1{%k1}
	vpsubsetbd 0x80(%rcx){sint16},%k2,%zmm1{%k1}

# Tests for op v1{k1}, v2, sf(v3/mt) with rounding
	vaddnps %zmm3,%zmm2,%zmm1{%k1}
	vaddnps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vaddnps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vaddnps %zmm3{badc},%zmm2,%zmm1{%k1}
	vaddnps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vaddnps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vaddnps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vaddnps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vaddnps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vaddnps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vaddnps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vaddnps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vaddnps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vaddnps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnps (%rcx){eh},%zmm2,%zmm1{%k1}
	vaddnps (%rcx),%zmm2,%zmm1{%k1}
	vaddnps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vaddnps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vaddnps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vaddnps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vaddnps (%rcx){float16},%zmm2,%zmm1{%k1}
	vaddnps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vaddnps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vaddnps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vaddps %zmm3,%zmm2,%zmm1{%k1}
	vaddps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vaddps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vaddps %zmm3{badc},%zmm2,%zmm1{%k1}
	vaddps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vaddps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vaddps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vaddps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vaddps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vaddps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vaddps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vaddps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vaddps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vaddps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddps (%rcx){eh},%zmm2,%zmm1{%k1}
	vaddps (%rcx),%zmm2,%zmm1{%k1}
	vaddps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vaddps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vaddps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vaddps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vaddps (%rcx){float16},%zmm2,%zmm1{%k1}
	vaddps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vaddps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vaddps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vaddsetsps %zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vaddsetsps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vaddsetsps %zmm3{badc},%zmm2,%zmm1{%k1}
	vaddsetsps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vaddsetsps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vaddsetsps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vaddsetsps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vaddsetsps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vaddsetsps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddsetsps (%rcx){eh},%zmm2,%zmm1{%k1}
	vaddsetsps (%rcx),%zmm2,%zmm1{%k1}
	vaddsetsps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vaddsetsps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vaddsetsps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vaddsetsps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vaddsetsps (%rcx){float16},%zmm2,%zmm1{%k1}
	vaddsetsps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vaddsetsps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vaddsetsps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmadd132ps %zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmadd132ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmadd132ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmadd132ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmadd132ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmadd132ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmadd132ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmadd132ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmadd132ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmadd132ps (%rcx),%zmm2,%zmm1{%k1}
	vfmadd132ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfmadd132ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfmadd132ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfmadd132ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfmadd132ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfmadd132ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfmadd132ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmadd132ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmadd213ps %zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmadd213ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmadd213ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmadd213ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmadd213ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmadd213ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmadd213ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmadd213ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmadd213ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmadd213ps (%rcx),%zmm2,%zmm1{%k1}
	vfmadd213ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfmadd213ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfmadd213ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfmadd213ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfmadd213ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfmadd213ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfmadd213ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmadd213ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmadd231ps %zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmadd231ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmadd231ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmadd231ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmadd231ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmadd231ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmadd231ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmadd231ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmadd231ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmadd231ps (%rcx),%zmm2,%zmm1{%k1}
	vfmadd231ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfmadd231ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfmadd231ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfmadd231ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfmadd231ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfmadd231ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfmadd231ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmadd231ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmsub132ps %zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmsub132ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmsub132ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmsub132ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmsub132ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmsub132ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmsub132ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmsub132ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmsub132ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmsub132ps (%rcx),%zmm2,%zmm1{%k1}
	vfmsub132ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfmsub132ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfmsub132ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfmsub132ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfmsub132ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfmsub132ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfmsub132ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmsub132ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmsub213ps %zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmsub213ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmsub213ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmsub213ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmsub213ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmsub213ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmsub213ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmsub213ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmsub213ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmsub213ps (%rcx),%zmm2,%zmm1{%k1}
	vfmsub213ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfmsub213ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfmsub213ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfmsub213ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfmsub213ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfmsub213ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfmsub213ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmsub213ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmsub231ps %zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmsub231ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmsub231ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmsub231ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmsub231ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmsub231ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmsub231ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmsub231ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmsub231ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmsub231ps (%rcx),%zmm2,%zmm1{%k1}
	vfmsub231ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfmsub231ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfmsub231ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfmsub231ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfmsub231ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfmsub231ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfmsub231ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfmsub231ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmadd132ps %zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmadd132ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmadd132ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmadd132ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmadd132ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmadd132ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmadd132ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmadd132ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmadd132ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmadd132ps (%rcx),%zmm2,%zmm1{%k1}
	vfnmadd132ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfnmadd132ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfnmadd132ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfnmadd132ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfnmadd132ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfnmadd132ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfnmadd132ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmadd132ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmadd213ps %zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmadd213ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmadd213ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmadd213ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmadd213ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmadd213ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmadd213ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmadd213ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmadd213ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmadd213ps (%rcx),%zmm2,%zmm1{%k1}
	vfnmadd213ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfnmadd213ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfnmadd213ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfnmadd213ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfnmadd213ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfnmadd213ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfnmadd213ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmadd213ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmadd231ps %zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmadd231ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmadd231ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmadd231ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmadd231ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmadd231ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmadd231ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmadd231ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmadd231ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmadd231ps (%rcx),%zmm2,%zmm1{%k1}
	vfnmadd231ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfnmadd231ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfnmadd231ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfnmadd231ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfnmadd231ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfnmadd231ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfnmadd231ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmadd231ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmsub132ps %zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmsub132ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmsub132ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmsub132ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmsub132ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmsub132ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmsub132ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmsub132ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmsub132ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmsub132ps (%rcx),%zmm2,%zmm1{%k1}
	vfnmsub132ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfnmsub132ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfnmsub132ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfnmsub132ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfnmsub132ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfnmsub132ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfnmsub132ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmsub132ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmsub213ps %zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmsub213ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmsub213ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmsub213ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmsub213ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmsub213ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmsub213ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmsub213ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmsub213ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmsub213ps (%rcx),%zmm2,%zmm1{%k1}
	vfnmsub213ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfnmsub213ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfnmsub213ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfnmsub213ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfnmsub213ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfnmsub213ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfnmsub213ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmsub213ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmsub231ps %zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmsub231ps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmsub231ps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmsub231ps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmsub231ps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmsub231ps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmsub231ps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmsub231ps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmsub231ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmsub231ps (%rcx),%zmm2,%zmm1{%k1}
	vfnmsub231ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfnmsub231ps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfnmsub231ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfnmsub231ps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfnmsub231ps (%rcx){float16},%zmm2,%zmm1{%k1}
	vfnmsub231ps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfnmsub231ps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfnmsub231ps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vmulps %zmm3,%zmm2,%zmm1{%k1}
	vmulps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vmulps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vmulps %zmm3{badc},%zmm2,%zmm1{%k1}
	vmulps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vmulps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vmulps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vmulps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vmulps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vmulps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vmulps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vmulps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vmulps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vmulps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulps (%rcx){eh},%zmm2,%zmm1{%k1}
	vmulps (%rcx),%zmm2,%zmm1{%k1}
	vmulps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vmulps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vmulps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vmulps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vmulps (%rcx){float16},%zmm2,%zmm1{%k1}
	vmulps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vmulps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vmulps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vsubps %zmm3,%zmm2,%zmm1{%k1}
	vsubps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vsubps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vsubps %zmm3{badc},%zmm2,%zmm1{%k1}
	vsubps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vsubps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vsubps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vsubps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vsubps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vsubps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vsubps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vsubps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vsubps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vsubps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubps (%rcx){eh},%zmm2,%zmm1{%k1}
	vsubps (%rcx),%zmm2,%zmm1{%k1}
	vsubps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vsubps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vsubps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vsubps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vsubps (%rcx){float16},%zmm2,%zmm1{%k1}
	vsubps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vsubps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vsubps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vsubrps %zmm3,%zmm2,%zmm1{%k1}
	vsubrps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vsubrps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vsubrps %zmm3{badc},%zmm2,%zmm1{%k1}
	vsubrps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vsubrps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vsubrps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vsubrps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vsubrps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vsubrps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vsubrps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vsubrps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vsubrps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vsubrps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrps (%rcx){eh},%zmm2,%zmm1{%k1}
	vsubrps (%rcx),%zmm2,%zmm1{%k1}
	vsubrps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vsubrps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vsubrps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vsubrps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vsubrps (%rcx){float16},%zmm2,%zmm1{%k1}
	vsubrps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vsubrps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vsubrps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, sf(v3/mt) with SAE only
	vgmaxabsps %zmm3,%zmm2,%zmm1{%k1}
	vgmaxabsps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vgmaxabsps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vgmaxabsps %zmm3{badc},%zmm2,%zmm1{%k1}
	vgmaxabsps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vgmaxabsps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vgmaxabsps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vgmaxabsps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vgmaxabsps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vgmaxabsps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vgmaxabsps (%rcx){eh},%zmm2,%zmm1{%k1}
	vgmaxabsps (%rcx),%zmm2,%zmm1{%k1}
	vgmaxabsps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vgmaxabsps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vgmaxabsps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vgmaxabsps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vgmaxabsps (%rcx){float16},%zmm2,%zmm1{%k1}
	vgmaxabsps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vgmaxabsps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vgmaxabsps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vgmaxps %zmm3,%zmm2,%zmm1{%k1}
	vgmaxps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vgmaxps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vgmaxps %zmm3{badc},%zmm2,%zmm1{%k1}
	vgmaxps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vgmaxps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vgmaxps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vgmaxps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vgmaxps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vgmaxps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vgmaxps (%rcx){eh},%zmm2,%zmm1{%k1}
	vgmaxps (%rcx),%zmm2,%zmm1{%k1}
	vgmaxps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vgmaxps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vgmaxps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vgmaxps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vgmaxps (%rcx){float16},%zmm2,%zmm1{%k1}
	vgmaxps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vgmaxps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vgmaxps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}
	vgminps %zmm3,%zmm2,%zmm1{%k1}
	vgminps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vgminps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vgminps %zmm3{badc},%zmm2,%zmm1{%k1}
	vgminps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vgminps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vgminps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vgminps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vgminps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vgminps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vgminps (%rcx){eh},%zmm2,%zmm1{%k1}
	vgminps (%rcx),%zmm2,%zmm1{%k1}
	vgminps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vgminps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vgminps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vgminps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vgminps (%rcx){float16},%zmm2,%zmm1{%k1}
	vgminps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vgminps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vgminps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, sbroadcastonly2_32(v3/mt) with rounding
	vfmadd233ps %zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmadd233ps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd233ps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmadd233ps (%rcx),%zmm2,%zmm1{%k1}
	vfmadd233ps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfmadd233ps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfmadd233ps 0x80(%rcx){4to16},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, sf(v3/mt)
	vblendmps %zmm3,%zmm2,%zmm1{%k1}
	vblendmps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vblendmps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vblendmps %zmm3{badc},%zmm2,%zmm1{%k1}
	vblendmps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vblendmps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vblendmps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vblendmps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vblendmps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vblendmps %zmm3{eh},%zmm2,%zmm1{%k1}
	vblendmps %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vblendmps (%rcx){eh},%zmm2,%zmm1{%k1}
	vblendmps (%rcx),%zmm2,%zmm1{%k1}
	vblendmps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vblendmps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vblendmps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vblendmps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vblendmps (%rcx){float16},%zmm2,%zmm1{%k1}
	vblendmps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vblendmps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vblendmps 0x80(%rcx){uint16},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, sd(v3/mt) with rounding
	vaddnpd %zmm3,%zmm2,%zmm1{%k1}
	vaddnpd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vaddnpd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vaddnpd %zmm3{badc},%zmm2,%zmm1{%k1}
	vaddnpd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vaddnpd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vaddnpd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vaddnpd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vaddnpd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vaddnpd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vaddnpd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vaddnpd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vaddnpd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vaddnpd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnpd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnpd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnpd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnpd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddnpd (%rcx){eh},%zmm2,%zmm1{%k1}
	vaddnpd (%rcx),%zmm2,%zmm1{%k1}
	vaddnpd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vaddnpd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vaddnpd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vaddnpd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vaddpd %zmm3,%zmm2,%zmm1{%k1}
	vaddpd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vaddpd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vaddpd %zmm3{badc},%zmm2,%zmm1{%k1}
	vaddpd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vaddpd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vaddpd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vaddpd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vaddpd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vaddpd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vaddpd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vaddpd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vaddpd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vaddpd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddpd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddpd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddpd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddpd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vaddpd (%rcx){eh},%zmm2,%zmm1{%k1}
	vaddpd (%rcx),%zmm2,%zmm1{%k1}
	vaddpd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vaddpd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vaddpd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vaddpd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmadd132pd %zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmadd132pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmadd132pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmadd132pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmadd132pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmadd132pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmadd132pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmadd132pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmadd132pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd132pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmadd132pd (%rcx),%zmm2,%zmm1{%k1}
	vfmadd132pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfmadd132pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfmadd132pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmadd132pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmadd213pd %zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmadd213pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmadd213pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmadd213pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmadd213pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmadd213pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmadd213pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmadd213pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmadd213pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd213pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmadd213pd (%rcx),%zmm2,%zmm1{%k1}
	vfmadd213pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfmadd213pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfmadd213pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmadd213pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmadd231pd %zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmadd231pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmadd231pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmadd231pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmadd231pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmadd231pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmadd231pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmadd231pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmadd231pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmadd231pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmadd231pd (%rcx),%zmm2,%zmm1{%k1}
	vfmadd231pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfmadd231pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfmadd231pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmadd231pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmsub132pd %zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmsub132pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmsub132pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmsub132pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmsub132pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmsub132pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmsub132pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmsub132pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmsub132pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub132pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmsub132pd (%rcx),%zmm2,%zmm1{%k1}
	vfmsub132pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfmsub132pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfmsub132pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmsub132pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmsub213pd %zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmsub213pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmsub213pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmsub213pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmsub213pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmsub213pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmsub213pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmsub213pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmsub213pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub213pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmsub213pd (%rcx),%zmm2,%zmm1{%k1}
	vfmsub213pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfmsub213pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfmsub213pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmsub213pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmsub231pd %zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfmsub231pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfmsub231pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfmsub231pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfmsub231pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfmsub231pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfmsub231pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfmsub231pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfmsub231pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfmsub231pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfmsub231pd (%rcx),%zmm2,%zmm1{%k1}
	vfmsub231pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfmsub231pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfmsub231pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfmsub231pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmadd132pd %zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmadd132pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmadd132pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmadd132pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmadd132pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmadd132pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmadd132pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmadd132pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmadd132pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd132pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmadd132pd (%rcx),%zmm2,%zmm1{%k1}
	vfnmadd132pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfnmadd132pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfnmadd132pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmadd132pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmadd213pd %zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmadd213pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmadd213pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmadd213pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmadd213pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmadd213pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmadd213pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmadd213pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmadd213pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd213pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmadd213pd (%rcx),%zmm2,%zmm1{%k1}
	vfnmadd213pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfnmadd213pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfnmadd213pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmadd213pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmadd231pd %zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmadd231pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmadd231pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmadd231pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmadd231pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmadd231pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmadd231pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmadd231pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmadd231pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmadd231pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmadd231pd (%rcx),%zmm2,%zmm1{%k1}
	vfnmadd231pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfnmadd231pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfnmadd231pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmadd231pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmsub132pd %zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmsub132pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmsub132pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmsub132pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmsub132pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmsub132pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmsub132pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmsub132pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmsub132pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub132pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmsub132pd (%rcx),%zmm2,%zmm1{%k1}
	vfnmsub132pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfnmsub132pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfnmsub132pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmsub132pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmsub213pd %zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmsub213pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmsub213pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmsub213pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmsub213pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmsub213pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmsub213pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmsub213pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmsub213pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub213pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmsub213pd (%rcx),%zmm2,%zmm1{%k1}
	vfnmsub213pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfnmsub213pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfnmsub213pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmsub213pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmsub231pd %zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfnmsub231pd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfnmsub231pd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfnmsub231pd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfnmsub231pd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfnmsub231pd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfnmsub231pd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfnmsub231pd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfnmsub231pd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vfnmsub231pd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfnmsub231pd (%rcx),%zmm2,%zmm1{%k1}
	vfnmsub231pd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfnmsub231pd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfnmsub231pd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfnmsub231pd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vmulpd %zmm3,%zmm2,%zmm1{%k1}
	vmulpd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vmulpd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vmulpd %zmm3{badc},%zmm2,%zmm1{%k1}
	vmulpd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vmulpd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vmulpd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vmulpd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vmulpd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vmulpd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vmulpd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vmulpd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vmulpd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vmulpd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulpd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulpd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulpd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulpd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vmulpd (%rcx){eh},%zmm2,%zmm1{%k1}
	vmulpd (%rcx),%zmm2,%zmm1{%k1}
	vmulpd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vmulpd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vmulpd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vmulpd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vsubpd %zmm3,%zmm2,%zmm1{%k1}
	vsubpd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vsubpd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vsubpd %zmm3{badc},%zmm2,%zmm1{%k1}
	vsubpd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vsubpd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vsubpd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vsubpd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vsubpd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vsubpd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vsubpd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vsubpd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vsubpd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vsubpd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubpd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubpd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubpd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubpd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubpd (%rcx){eh},%zmm2,%zmm1{%k1}
	vsubpd (%rcx),%zmm2,%zmm1{%k1}
	vsubpd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vsubpd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vsubpd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vsubpd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vsubrpd %zmm3,%zmm2,%zmm1{%k1}
	vsubrpd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vsubrpd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vsubrpd %zmm3{badc},%zmm2,%zmm1{%k1}
	vsubrpd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vsubrpd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vsubrpd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vsubrpd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vsubrpd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vsubrpd {rn},%zmm3,%zmm2,%zmm1{%k1}
	vsubrpd {rd},%zmm3,%zmm2,%zmm1{%k1}
	vsubrpd {ru},%zmm3,%zmm2,%zmm1{%k1}
	vsubrpd {rz},%zmm3,%zmm2,%zmm1{%k1}
	vsubrpd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrpd {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrpd {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrpd {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrpd {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vsubrpd (%rcx){eh},%zmm2,%zmm1{%k1}
	vsubrpd (%rcx),%zmm2,%zmm1{%k1}
	vsubrpd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vsubrpd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vsubrpd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vsubrpd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, sd(v3/mt) with SAE only
	vfixupnanpd %zmm3,%zmm2,%zmm1{%k1}
	vfixupnanpd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfixupnanpd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfixupnanpd %zmm3{badc},%zmm2,%zmm1{%k1}
	vfixupnanpd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfixupnanpd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfixupnanpd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfixupnanpd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfixupnanpd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfixupnanpd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfixupnanpd (%rcx){eh},%zmm2,%zmm1{%k1}
	vfixupnanpd (%rcx),%zmm2,%zmm1{%k1}
	vfixupnanpd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vfixupnanpd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vfixupnanpd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vfixupnanpd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vgmaxpd %zmm3,%zmm2,%zmm1{%k1}
	vgmaxpd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vgmaxpd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vgmaxpd %zmm3{badc},%zmm2,%zmm1{%k1}
	vgmaxpd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vgmaxpd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vgmaxpd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vgmaxpd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vgmaxpd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vgmaxpd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vgmaxpd (%rcx){eh},%zmm2,%zmm1{%k1}
	vgmaxpd (%rcx),%zmm2,%zmm1{%k1}
	vgmaxpd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vgmaxpd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vgmaxpd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vgmaxpd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vgminpd %zmm3,%zmm2,%zmm1{%k1}
	vgminpd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vgminpd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vgminpd %zmm3{badc},%zmm2,%zmm1{%k1}
	vgminpd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vgminpd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vgminpd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vgminpd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vgminpd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vgminpd {sae},%zmm3,%zmm2,%zmm1{%k1}
	vgminpd (%rcx){eh},%zmm2,%zmm1{%k1}
	vgminpd (%rcx),%zmm2,%zmm1{%k1}
	vgminpd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vgminpd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vgminpd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vgminpd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, sd(v3/mt)
	vblendmpd %zmm3,%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{badc},%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{eh},%zmm2,%zmm1{%k1}
	vblendmpd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vblendmpd (%rcx){eh},%zmm2,%zmm1{%k1}
	vblendmpd (%rcx),%zmm2,%zmm1{%k1}
	vblendmpd (%rcx){8to8},%zmm2,%zmm1{%k1}
	vblendmpd (%rcx){1to8},%zmm2,%zmm1{%k1}
	vblendmpd (%rcx){4to8},%zmm2,%zmm1{%k1}
	vblendmpd 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, si(v3/mt)
	vpaddd %zmm3,%zmm2,%zmm1{%k1}
	vpaddd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpaddd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpaddd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpaddd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpaddd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpaddd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpaddd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpaddd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpaddd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpaddd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpaddd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpaddd (%rcx),%zmm2,%zmm1{%k1}
	vpaddd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpaddd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpaddd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpaddd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpaddd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpaddd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpaddd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpaddd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3,%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpaddsetsd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpaddsetsd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpaddsetsd (%rcx),%zmm2,%zmm1{%k1}
	vpaddsetsd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpaddsetsd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpaddsetsd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpaddsetsd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpaddsetsd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpaddsetsd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpaddsetsd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpaddsetsd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpandd %zmm3,%zmm2,%zmm1{%k1}
	vpandd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpandd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpandd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpandd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpandd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpandd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpandd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpandd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpandd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpandd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpandd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpandd (%rcx),%zmm2,%zmm1{%k1}
	vpandd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpandd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpandd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpandd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpandd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpandd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpandd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpandd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpandnd %zmm3,%zmm2,%zmm1{%k1}
	vpandnd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpandnd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpandnd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpandnd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpandnd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpandnd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpandnd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpandnd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpandnd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpandnd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpandnd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpandnd (%rcx),%zmm2,%zmm1{%k1}
	vpandnd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpandnd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpandnd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpandnd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpandnd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpandnd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpandnd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpandnd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3,%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpblendmd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpblendmd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpblendmd (%rcx),%zmm2,%zmm1{%k1}
	vpblendmd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpblendmd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpblendmd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpblendmd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpblendmd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpblendmd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpblendmd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpblendmd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3,%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{badc},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{eh},%zmm2,%zmm1{%k1}
	vpmadd231d %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpmadd231d (%rcx){eh},%zmm2,%zmm1{%k1}
	vpmadd231d (%rcx),%zmm2,%zmm1{%k1}
	vpmadd231d (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpmadd231d (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpmadd231d (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpmadd231d (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpmadd231d (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpmadd231d (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpmadd231d (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmadd231d 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3,%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpmaxsd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpmaxsd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpmaxsd (%rcx),%zmm2,%zmm1{%k1}
	vpmaxsd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpmaxsd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpmaxsd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpmaxsd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpmaxsd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpmaxsd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpmaxsd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmaxsd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3,%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{badc},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{eh},%zmm2,%zmm1{%k1}
	vpmaxud %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpmaxud (%rcx){eh},%zmm2,%zmm1{%k1}
	vpmaxud (%rcx),%zmm2,%zmm1{%k1}
	vpmaxud (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpmaxud (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpmaxud (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpmaxud (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpmaxud (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpmaxud (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpmaxud (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmaxud 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpminsd %zmm3,%zmm2,%zmm1{%k1}
	vpminsd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpminsd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpminsd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpminsd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpminsd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpminsd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpminsd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpminsd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpminsd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpminsd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpminsd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpminsd (%rcx),%zmm2,%zmm1{%k1}
	vpminsd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpminsd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpminsd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpminsd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpminsd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpminsd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpminsd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpminsd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpminud %zmm3,%zmm2,%zmm1{%k1}
	vpminud %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpminud %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpminud %zmm3{badc},%zmm2,%zmm1{%k1}
	vpminud %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpminud %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpminud %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpminud %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpminud %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpminud %zmm3{eh},%zmm2,%zmm1{%k1}
	vpminud %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpminud (%rcx){eh},%zmm2,%zmm1{%k1}
	vpminud (%rcx),%zmm2,%zmm1{%k1}
	vpminud (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpminud (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpminud (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpminud (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpminud (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpminud (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpminud (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpminud 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3,%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpmulhd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpmulhd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpmulhd (%rcx),%zmm2,%zmm1{%k1}
	vpmulhd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpmulhd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpmulhd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpmulhd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpmulhd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpmulhd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpmulhd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmulhd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3,%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{badc},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{eh},%zmm2,%zmm1{%k1}
	vpmulhud %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpmulhud (%rcx){eh},%zmm2,%zmm1{%k1}
	vpmulhud (%rcx),%zmm2,%zmm1{%k1}
	vpmulhud (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpmulhud (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpmulhud (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpmulhud (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpmulhud (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpmulhud (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpmulhud (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmulhud 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmulld %zmm3,%zmm2,%zmm1{%k1}
	vpmulld %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpmulld %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpmulld %zmm3{badc},%zmm2,%zmm1{%k1}
	vpmulld %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpmulld %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpmulld %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpmulld %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpmulld %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpmulld %zmm3{eh},%zmm2,%zmm1{%k1}
	vpmulld %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpmulld (%rcx){eh},%zmm2,%zmm1{%k1}
	vpmulld (%rcx),%zmm2,%zmm1{%k1}
	vpmulld (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpmulld (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpmulld (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpmulld (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpmulld (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpmulld (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpmulld (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpmulld 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpord %zmm3,%zmm2,%zmm1{%k1}
	vpord %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpord %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpord %zmm3{badc},%zmm2,%zmm1{%k1}
	vpord %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpord %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpord %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpord %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpord %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpord %zmm3{eh},%zmm2,%zmm1{%k1}
	vpord %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpord (%rcx){eh},%zmm2,%zmm1{%k1}
	vpord (%rcx),%zmm2,%zmm1{%k1}
	vpord (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpord (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpord (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpord (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpord (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpord (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpord (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpord 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3,%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpsllvd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpsllvd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpsllvd (%rcx),%zmm2,%zmm1{%k1}
	vpsllvd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpsllvd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpsllvd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpsllvd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpsllvd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpsllvd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpsllvd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsllvd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsravd %zmm3,%zmm2,%zmm1{%k1}
	vpsravd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpsravd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpsravd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpsravd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpsravd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpsravd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpsravd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpsravd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpsravd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpsravd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpsravd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpsravd (%rcx),%zmm2,%zmm1{%k1}
	vpsravd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpsravd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpsravd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpsravd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpsravd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpsravd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpsravd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsravd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3,%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpsrlvd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpsrlvd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpsrlvd (%rcx),%zmm2,%zmm1{%k1}
	vpsrlvd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpsrlvd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpsrlvd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpsrlvd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpsrlvd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpsrlvd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpsrlvd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsrlvd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsubd %zmm3,%zmm2,%zmm1{%k1}
	vpsubd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpsubd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpsubd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpsubd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpsubd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpsubd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpsubd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpsubd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpsubd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpsubd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpsubd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpsubd (%rcx),%zmm2,%zmm1{%k1}
	vpsubd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpsubd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpsubd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpsubd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpsubd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpsubd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpsubd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsubd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3,%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{badc},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{eh},%zmm2,%zmm1{%k1}
	vpsubrd %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpsubrd (%rcx){eh},%zmm2,%zmm1{%k1}
	vpsubrd (%rcx),%zmm2,%zmm1{%k1}
	vpsubrd (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpsubrd (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpsubrd (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpsubrd (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpsubrd (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpsubrd (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpsubrd (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpsubrd 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}
	vpxord %zmm3,%zmm2,%zmm1{%k1}
	vpxord %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpxord %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpxord %zmm3{badc},%zmm2,%zmm1{%k1}
	vpxord %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpxord %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpxord %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpxord %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpxord %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpxord %zmm3{eh},%zmm2,%zmm1{%k1}
	vpxord %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpxord (%rcx){eh},%zmm2,%zmm1{%k1}
	vpxord (%rcx),%zmm2,%zmm1{%k1}
	vpxord (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpxord (%rcx){1to16},%zmm2,%zmm1{%k1}
	vpxord (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpxord (%rcx){uint8},%zmm2,%zmm1{%k1}
	vpxord (%rcx){sint8},%zmm2,%zmm1{%k1}
	vpxord (%rcx){uint16},%zmm2,%zmm1{%k1}
	vpxord (%rcx){sint16},%zmm2,%zmm1{%k1}
	vpxord 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, si(v3/mt) with SAE
	vfixupnanps %zmm3,%zmm2,%zmm1{%k1}
	vfixupnanps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vfixupnanps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vfixupnanps %zmm3{badc},%zmm2,%zmm1{%k1}
	vfixupnanps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vfixupnanps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vfixupnanps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vfixupnanps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vfixupnanps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vfixupnanps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vfixupnanps (%rcx){eh},%zmm2,%zmm1{%k1}
	vfixupnanps (%rcx),%zmm2,%zmm1{%k1}
	vfixupnanps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vfixupnanps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vfixupnanps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vfixupnanps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vfixupnanps (%rcx){sint8},%zmm2,%zmm1{%k1}
	vfixupnanps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vfixupnanps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vfixupnanps 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, sbroadcastonly2_32(v3/mt)
	vpmadd233d %zmm3,%zmm2,%zmm1{%k1}
	vpmadd233d %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpmadd233d (%rcx){eh},%zmm2,%zmm1{%k1}
	vpmadd233d (%rcx),%zmm2,%zmm1{%k1}
	vpmadd233d (%rcx){16to16},%zmm2,%zmm1{%k1}
	vpmadd233d (%rcx){4to16},%zmm2,%zmm1{%k1}
	vpmadd233d 0x80(%rcx){4to16},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, v2, si(v3/mt) with rounding
	vscaleps %zmm3,%zmm2,%zmm1{%k1}
	vscaleps %zmm3{dcba},%zmm2,%zmm1{%k1}
	vscaleps %zmm3{cdab},%zmm2,%zmm1{%k1}
	vscaleps %zmm3{badc},%zmm2,%zmm1{%k1}
	vscaleps %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vscaleps %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vscaleps %zmm3{cccc},%zmm2,%zmm1{%k1}
	vscaleps %zmm3{dddd},%zmm2,%zmm1{%k1}
	vscaleps %zmm3{dacb},%zmm2,%zmm1{%k1}
	vscaleps {rn},%zmm3,%zmm2,%zmm1{%k1}
	vscaleps {rd},%zmm3,%zmm2,%zmm1{%k1}
	vscaleps {ru},%zmm3,%zmm2,%zmm1{%k1}
	vscaleps {rz},%zmm3,%zmm2,%zmm1{%k1}
	vscaleps {sae},%zmm3,%zmm2,%zmm1{%k1}
	vscaleps {rn-sae},%zmm3,%zmm2,%zmm1{%k1}
	vscaleps {rd-sae},%zmm3,%zmm2,%zmm1{%k1}
	vscaleps {ru-sae},%zmm3,%zmm2,%zmm1{%k1}
	vscaleps {rz-sae},%zmm3,%zmm2,%zmm1{%k1}
	vscaleps (%rcx){eh},%zmm2,%zmm1{%k1}
	vscaleps (%rcx),%zmm2,%zmm1{%k1}
	vscaleps (%rcx){16to16},%zmm2,%zmm1{%k1}
	vscaleps (%rcx){1to16},%zmm2,%zmm1{%k1}
	vscaleps (%rcx){4to16},%zmm2,%zmm1{%k1}
	vscaleps (%rcx){uint8},%zmm2,%zmm1{%k1}
	vscaleps (%rcx){sint8},%zmm2,%zmm1{%k1}
	vscaleps (%rcx){uint16},%zmm2,%zmm1{%k1}
	vscaleps (%rcx){sint16},%zmm2,%zmm1{%k1}
	vscaleps 0x80(%rcx){sint16},%zmm2,%zmm1{%k1}

# Tests for op k1{k1}, v2, sf(v3/mt) with SAE only
	vcmpeqps %zmm3,%zmm2,%k1{%k2}
	vcmpeqps %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpeqps %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpeqps %zmm3{badc},%zmm2,%k1{%k2}
	vcmpeqps %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpeqps %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpeqps %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpeqps %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpeqps %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpeqps {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpeqps (%rcx){eh},%zmm2,%k1{%k2}
	vcmpeqps (%rcx),%zmm2,%k1{%k2}
	vcmpeqps (%rcx){16to16},%zmm2,%k1{%k2}
	vcmpeqps (%rcx){1to16},%zmm2,%k1{%k2}
	vcmpeqps (%rcx){4to16},%zmm2,%k1{%k2}
	vcmpeqps (%rcx){uint8},%zmm2,%k1{%k2}
	vcmpeqps (%rcx){float16},%zmm2,%k1{%k2}
	vcmpeqps (%rcx){sint16},%zmm2,%k1{%k2}
	vcmpeqps (%rcx){uint16},%zmm2,%k1{%k2}
	vcmpeqps 0x80(%rcx){uint16},%zmm2,%k1{%k2}
	vcmpleps %zmm3,%zmm2,%k1{%k2}
	vcmpleps %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpleps %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpleps %zmm3{badc},%zmm2,%k1{%k2}
	vcmpleps %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpleps %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpleps %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpleps %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpleps %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpleps {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpleps (%rcx){eh},%zmm2,%k1{%k2}
	vcmpleps (%rcx),%zmm2,%k1{%k2}
	vcmpleps (%rcx){16to16},%zmm2,%k1{%k2}
	vcmpleps (%rcx){1to16},%zmm2,%k1{%k2}
	vcmpleps (%rcx){4to16},%zmm2,%k1{%k2}
	vcmpleps (%rcx){uint8},%zmm2,%k1{%k2}
	vcmpleps (%rcx){float16},%zmm2,%k1{%k2}
	vcmpleps (%rcx){sint16},%zmm2,%k1{%k2}
	vcmpleps (%rcx){uint16},%zmm2,%k1{%k2}
	vcmpleps 0x80(%rcx){uint16},%zmm2,%k1{%k2}
	vcmpltps %zmm3,%zmm2,%k1{%k2}
	vcmpltps %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpltps %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpltps %zmm3{badc},%zmm2,%k1{%k2}
	vcmpltps %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpltps %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpltps %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpltps %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpltps %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpltps {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpltps (%rcx){eh},%zmm2,%k1{%k2}
	vcmpltps (%rcx),%zmm2,%k1{%k2}
	vcmpltps (%rcx){16to16},%zmm2,%k1{%k2}
	vcmpltps (%rcx){1to16},%zmm2,%k1{%k2}
	vcmpltps (%rcx){4to16},%zmm2,%k1{%k2}
	vcmpltps (%rcx){uint8},%zmm2,%k1{%k2}
	vcmpltps (%rcx){float16},%zmm2,%k1{%k2}
	vcmpltps (%rcx){sint16},%zmm2,%k1{%k2}
	vcmpltps (%rcx){uint16},%zmm2,%k1{%k2}
	vcmpltps 0x80(%rcx){uint16},%zmm2,%k1{%k2}
	vcmpneqps %zmm3,%zmm2,%k1{%k2}
	vcmpneqps %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpneqps %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpneqps %zmm3{badc},%zmm2,%k1{%k2}
	vcmpneqps %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpneqps %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpneqps %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpneqps %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpneqps %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpneqps {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpneqps (%rcx){eh},%zmm2,%k1{%k2}
	vcmpneqps (%rcx),%zmm2,%k1{%k2}
	vcmpneqps (%rcx){16to16},%zmm2,%k1{%k2}
	vcmpneqps (%rcx){1to16},%zmm2,%k1{%k2}
	vcmpneqps (%rcx){4to16},%zmm2,%k1{%k2}
	vcmpneqps (%rcx){uint8},%zmm2,%k1{%k2}
	vcmpneqps (%rcx){float16},%zmm2,%k1{%k2}
	vcmpneqps (%rcx){sint16},%zmm2,%k1{%k2}
	vcmpneqps (%rcx){uint16},%zmm2,%k1{%k2}
	vcmpneqps 0x80(%rcx){uint16},%zmm2,%k1{%k2}
	vcmpnleps %zmm3,%zmm2,%k1{%k2}
	vcmpnleps %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpnleps %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpnleps %zmm3{badc},%zmm2,%k1{%k2}
	vcmpnleps %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpnleps %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpnleps %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpnleps %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpnleps %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpnleps {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpnleps (%rcx){eh},%zmm2,%k1{%k2}
	vcmpnleps (%rcx),%zmm2,%k1{%k2}
	vcmpnleps (%rcx){16to16},%zmm2,%k1{%k2}
	vcmpnleps (%rcx){1to16},%zmm2,%k1{%k2}
	vcmpnleps (%rcx){4to16},%zmm2,%k1{%k2}
	vcmpnleps (%rcx){uint8},%zmm2,%k1{%k2}
	vcmpnleps (%rcx){float16},%zmm2,%k1{%k2}
	vcmpnleps (%rcx){sint16},%zmm2,%k1{%k2}
	vcmpnleps (%rcx){uint16},%zmm2,%k1{%k2}
	vcmpnleps 0x80(%rcx){uint16},%zmm2,%k1{%k2}
	vcmpnltps %zmm3,%zmm2,%k1{%k2}
	vcmpnltps %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpnltps %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpnltps %zmm3{badc},%zmm2,%k1{%k2}
	vcmpnltps %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpnltps %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpnltps %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpnltps %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpnltps %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpnltps {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpnltps (%rcx){eh},%zmm2,%k1{%k2}
	vcmpnltps (%rcx),%zmm2,%k1{%k2}
	vcmpnltps (%rcx){16to16},%zmm2,%k1{%k2}
	vcmpnltps (%rcx){1to16},%zmm2,%k1{%k2}
	vcmpnltps (%rcx){4to16},%zmm2,%k1{%k2}
	vcmpnltps (%rcx){uint8},%zmm2,%k1{%k2}
	vcmpnltps (%rcx){float16},%zmm2,%k1{%k2}
	vcmpnltps (%rcx){sint16},%zmm2,%k1{%k2}
	vcmpnltps (%rcx){uint16},%zmm2,%k1{%k2}
	vcmpnltps 0x80(%rcx){uint16},%zmm2,%k1{%k2}
	vcmpordps %zmm3,%zmm2,%k1{%k2}
	vcmpordps %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpordps %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpordps %zmm3{badc},%zmm2,%k1{%k2}
	vcmpordps %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpordps %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpordps %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpordps %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpordps %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpordps {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpordps (%rcx){eh},%zmm2,%k1{%k2}
	vcmpordps (%rcx),%zmm2,%k1{%k2}
	vcmpordps (%rcx){16to16},%zmm2,%k1{%k2}
	vcmpordps (%rcx){1to16},%zmm2,%k1{%k2}
	vcmpordps (%rcx){4to16},%zmm2,%k1{%k2}
	vcmpordps (%rcx){uint8},%zmm2,%k1{%k2}
	vcmpordps (%rcx){float16},%zmm2,%k1{%k2}
	vcmpordps (%rcx){sint16},%zmm2,%k1{%k2}
	vcmpordps (%rcx){uint16},%zmm2,%k1{%k2}
	vcmpordps 0x80(%rcx){uint16},%zmm2,%k1{%k2}
	vcmpunordps %zmm3,%zmm2,%k1{%k2}
	vcmpunordps %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpunordps %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpunordps %zmm3{badc},%zmm2,%k1{%k2}
	vcmpunordps %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpunordps %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpunordps %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpunordps %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpunordps %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpunordps {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpunordps (%rcx){eh},%zmm2,%k1{%k2}
	vcmpunordps (%rcx),%zmm2,%k1{%k2}
	vcmpunordps (%rcx){16to16},%zmm2,%k1{%k2}
	vcmpunordps (%rcx){1to16},%zmm2,%k1{%k2}
	vcmpunordps (%rcx){4to16},%zmm2,%k1{%k2}
	vcmpunordps (%rcx){uint8},%zmm2,%k1{%k2}
	vcmpunordps (%rcx){float16},%zmm2,%k1{%k2}
	vcmpunordps (%rcx){sint16},%zmm2,%k1{%k2}
	vcmpunordps (%rcx){uint16},%zmm2,%k1{%k2}
	vcmpunordps 0x80(%rcx){uint16},%zmm2,%k1{%k2}

# Tests for op k1{k1}, v2, sd(v3/mt) with SAE only
	vcmpeqpd %zmm3,%zmm2,%k1{%k2}
	vcmpeqpd %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpeqpd %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpeqpd %zmm3{badc},%zmm2,%k1{%k2}
	vcmpeqpd %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpeqpd %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpeqpd %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpeqpd %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpeqpd %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpeqpd {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpeqpd (%rcx){eh},%zmm2,%k1{%k2}
	vcmpeqpd (%rcx),%zmm2,%k1{%k2}
	vcmpeqpd (%rcx){8to8},%zmm2,%k1{%k2}
	vcmpeqpd (%rcx){1to8},%zmm2,%k1{%k2}
	vcmpeqpd (%rcx){4to8},%zmm2,%k1{%k2}
	vcmpeqpd 0x80(%rcx){4to8},%zmm2,%k1{%k2}
	vcmplepd %zmm3,%zmm2,%k1{%k2}
	vcmplepd %zmm3{dcba},%zmm2,%k1{%k2}
	vcmplepd %zmm3{cdab},%zmm2,%k1{%k2}
	vcmplepd %zmm3{badc},%zmm2,%k1{%k2}
	vcmplepd %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmplepd %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmplepd %zmm3{cccc},%zmm2,%k1{%k2}
	vcmplepd %zmm3{dddd},%zmm2,%k1{%k2}
	vcmplepd %zmm3{dacb},%zmm2,%k1{%k2}
	vcmplepd {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmplepd (%rcx){eh},%zmm2,%k1{%k2}
	vcmplepd (%rcx),%zmm2,%k1{%k2}
	vcmplepd (%rcx){8to8},%zmm2,%k1{%k2}
	vcmplepd (%rcx){1to8},%zmm2,%k1{%k2}
	vcmplepd (%rcx){4to8},%zmm2,%k1{%k2}
	vcmplepd 0x80(%rcx){4to8},%zmm2,%k1{%k2}
	vcmpltpd %zmm3,%zmm2,%k1{%k2}
	vcmpltpd %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpltpd %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpltpd %zmm3{badc},%zmm2,%k1{%k2}
	vcmpltpd %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpltpd %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpltpd %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpltpd %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpltpd %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpltpd {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpltpd (%rcx){eh},%zmm2,%k1{%k2}
	vcmpltpd (%rcx),%zmm2,%k1{%k2}
	vcmpltpd (%rcx){8to8},%zmm2,%k1{%k2}
	vcmpltpd (%rcx){1to8},%zmm2,%k1{%k2}
	vcmpltpd (%rcx){4to8},%zmm2,%k1{%k2}
	vcmpltpd 0x80(%rcx){4to8},%zmm2,%k1{%k2}
	vcmpneqpd %zmm3,%zmm2,%k1{%k2}
	vcmpneqpd %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpneqpd %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpneqpd %zmm3{badc},%zmm2,%k1{%k2}
	vcmpneqpd %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpneqpd %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpneqpd %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpneqpd %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpneqpd %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpneqpd {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpneqpd (%rcx){eh},%zmm2,%k1{%k2}
	vcmpneqpd (%rcx),%zmm2,%k1{%k2}
	vcmpneqpd (%rcx){8to8},%zmm2,%k1{%k2}
	vcmpneqpd (%rcx){1to8},%zmm2,%k1{%k2}
	vcmpneqpd (%rcx){4to8},%zmm2,%k1{%k2}
	vcmpneqpd 0x80(%rcx){4to8},%zmm2,%k1{%k2}
	vcmpnlepd %zmm3,%zmm2,%k1{%k2}
	vcmpnlepd %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpnlepd %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpnlepd %zmm3{badc},%zmm2,%k1{%k2}
	vcmpnlepd %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpnlepd %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpnlepd %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpnlepd %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpnlepd %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpnlepd {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpnlepd (%rcx){eh},%zmm2,%k1{%k2}
	vcmpnlepd (%rcx),%zmm2,%k1{%k2}
	vcmpnlepd (%rcx){8to8},%zmm2,%k1{%k2}
	vcmpnlepd (%rcx){1to8},%zmm2,%k1{%k2}
	vcmpnlepd (%rcx){4to8},%zmm2,%k1{%k2}
	vcmpnlepd 0x80(%rcx){4to8},%zmm2,%k1{%k2}
	vcmpnltpd %zmm3,%zmm2,%k1{%k2}
	vcmpnltpd %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpnltpd %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpnltpd %zmm3{badc},%zmm2,%k1{%k2}
	vcmpnltpd %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpnltpd %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpnltpd %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpnltpd %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpnltpd %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpnltpd {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpnltpd (%rcx){eh},%zmm2,%k1{%k2}
	vcmpnltpd (%rcx),%zmm2,%k1{%k2}
	vcmpnltpd (%rcx){8to8},%zmm2,%k1{%k2}
	vcmpnltpd (%rcx){1to8},%zmm2,%k1{%k2}
	vcmpnltpd (%rcx){4to8},%zmm2,%k1{%k2}
	vcmpnltpd 0x80(%rcx){4to8},%zmm2,%k1{%k2}
	vcmpordpd %zmm3,%zmm2,%k1{%k2}
	vcmpordpd %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpordpd %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpordpd %zmm3{badc},%zmm2,%k1{%k2}
	vcmpordpd %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpordpd %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpordpd %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpordpd %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpordpd %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpordpd {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpordpd (%rcx){eh},%zmm2,%k1{%k2}
	vcmpordpd (%rcx),%zmm2,%k1{%k2}
	vcmpordpd (%rcx){8to8},%zmm2,%k1{%k2}
	vcmpordpd (%rcx){1to8},%zmm2,%k1{%k2}
	vcmpordpd (%rcx){4to8},%zmm2,%k1{%k2}
	vcmpordpd 0x80(%rcx){4to8},%zmm2,%k1{%k2}
	vcmpunordpd %zmm3,%zmm2,%k1{%k2}
	vcmpunordpd %zmm3{dcba},%zmm2,%k1{%k2}
	vcmpunordpd %zmm3{cdab},%zmm2,%k1{%k2}
	vcmpunordpd %zmm3{badc},%zmm2,%k1{%k2}
	vcmpunordpd %zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpunordpd %zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpunordpd %zmm3{cccc},%zmm2,%k1{%k2}
	vcmpunordpd %zmm3{dddd},%zmm2,%k1{%k2}
	vcmpunordpd %zmm3{dacb},%zmm2,%k1{%k2}
	vcmpunordpd {sae},%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpunordpd (%rcx){eh},%zmm2,%k1{%k2}
	vcmpunordpd (%rcx),%zmm2,%k1{%k2}
	vcmpunordpd (%rcx){8to8},%zmm2,%k1{%k2}
	vcmpunordpd (%rcx){1to8},%zmm2,%k1{%k2}
	vcmpunordpd (%rcx){4to8},%zmm2,%k1{%k2}
	vcmpunordpd 0x80(%rcx){4to8},%zmm2,%k1{%k2}

# Tests for op k2{k1}, v2, si(v3/mt)
	vpcmpeqd %zmm3,%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{dcba},%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{cdab},%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{badc},%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{aaaa},%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{bbbb},%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{cccc},%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{dddd},%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{dacb},%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{eh},%zmm2,%k1{%k2}
	vpcmpeqd %zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vpcmpeqd (%rcx){eh},%zmm2,%k1{%k2}
	vpcmpeqd (%rcx),%zmm2,%k1{%k2}
	vpcmpeqd (%rcx){16to16},%zmm2,%k1{%k2}
	vpcmpeqd (%rcx){1to16},%zmm2,%k1{%k2}
	vpcmpeqd (%rcx){4to16},%zmm2,%k1{%k2}
	vpcmpeqd (%rcx){uint8},%zmm2,%k1{%k2}
	vpcmpeqd (%rcx){sint8},%zmm2,%k1{%k2}
	vpcmpeqd (%rcx){uint16},%zmm2,%k1{%k2}
	vpcmpeqd (%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpeqd 0x80(%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3,%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{dcba},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{cdab},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{badc},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{aaaa},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{bbbb},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{cccc},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{dddd},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{dacb},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{eh},%zmm2,%k1{%k2}
	vpcmpgtd %zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vpcmpgtd (%rcx){eh},%zmm2,%k1{%k2}
	vpcmpgtd (%rcx),%zmm2,%k1{%k2}
	vpcmpgtd (%rcx){16to16},%zmm2,%k1{%k2}
	vpcmpgtd (%rcx){1to16},%zmm2,%k1{%k2}
	vpcmpgtd (%rcx){4to16},%zmm2,%k1{%k2}
	vpcmpgtd (%rcx){uint8},%zmm2,%k1{%k2}
	vpcmpgtd (%rcx){sint8},%zmm2,%k1{%k2}
	vpcmpgtd (%rcx){uint16},%zmm2,%k1{%k2}
	vpcmpgtd (%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpgtd 0x80(%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpled %zmm3,%zmm2,%k1{%k2}
	vpcmpled %zmm3{dcba},%zmm2,%k1{%k2}
	vpcmpled %zmm3{cdab},%zmm2,%k1{%k2}
	vpcmpled %zmm3{badc},%zmm2,%k1{%k2}
	vpcmpled %zmm3{aaaa},%zmm2,%k1{%k2}
	vpcmpled %zmm3{bbbb},%zmm2,%k1{%k2}
	vpcmpled %zmm3{cccc},%zmm2,%k1{%k2}
	vpcmpled %zmm3{dddd},%zmm2,%k1{%k2}
	vpcmpled %zmm3{dacb},%zmm2,%k1{%k2}
	vpcmpled %zmm3{eh},%zmm2,%k1{%k2}
	vpcmpled %zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vpcmpled (%rcx){eh},%zmm2,%k1{%k2}
	vpcmpled (%rcx),%zmm2,%k1{%k2}
	vpcmpled (%rcx){16to16},%zmm2,%k1{%k2}
	vpcmpled (%rcx){1to16},%zmm2,%k1{%k2}
	vpcmpled (%rcx){4to16},%zmm2,%k1{%k2}
	vpcmpled (%rcx){uint8},%zmm2,%k1{%k2}
	vpcmpled (%rcx){sint8},%zmm2,%k1{%k2}
	vpcmpled (%rcx){uint16},%zmm2,%k1{%k2}
	vpcmpled (%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpled 0x80(%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpltd %zmm3,%zmm2,%k1{%k2}
	vpcmpltd %zmm3{dcba},%zmm2,%k1{%k2}
	vpcmpltd %zmm3{cdab},%zmm2,%k1{%k2}
	vpcmpltd %zmm3{badc},%zmm2,%k1{%k2}
	vpcmpltd %zmm3{aaaa},%zmm2,%k1{%k2}
	vpcmpltd %zmm3{bbbb},%zmm2,%k1{%k2}
	vpcmpltd %zmm3{cccc},%zmm2,%k1{%k2}
	vpcmpltd %zmm3{dddd},%zmm2,%k1{%k2}
	vpcmpltd %zmm3{dacb},%zmm2,%k1{%k2}
	vpcmpltd %zmm3{eh},%zmm2,%k1{%k2}
	vpcmpltd %zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vpcmpltd (%rcx){eh},%zmm2,%k1{%k2}
	vpcmpltd (%rcx),%zmm2,%k1{%k2}
	vpcmpltd (%rcx){16to16},%zmm2,%k1{%k2}
	vpcmpltd (%rcx){1to16},%zmm2,%k1{%k2}
	vpcmpltd (%rcx){4to16},%zmm2,%k1{%k2}
	vpcmpltd (%rcx){uint8},%zmm2,%k1{%k2}
	vpcmpltd (%rcx){sint8},%zmm2,%k1{%k2}
	vpcmpltd (%rcx){uint16},%zmm2,%k1{%k2}
	vpcmpltd (%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpltd 0x80(%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3,%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{dcba},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{cdab},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{badc},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{aaaa},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{bbbb},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{cccc},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{dddd},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{dacb},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{eh},%zmm2,%k1{%k2}
	vpcmpneqd %zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vpcmpneqd (%rcx){eh},%zmm2,%k1{%k2}
	vpcmpneqd (%rcx),%zmm2,%k1{%k2}
	vpcmpneqd (%rcx){16to16},%zmm2,%k1{%k2}
	vpcmpneqd (%rcx){1to16},%zmm2,%k1{%k2}
	vpcmpneqd (%rcx){4to16},%zmm2,%k1{%k2}
	vpcmpneqd (%rcx){uint8},%zmm2,%k1{%k2}
	vpcmpneqd (%rcx){sint8},%zmm2,%k1{%k2}
	vpcmpneqd (%rcx){uint16},%zmm2,%k1{%k2}
	vpcmpneqd (%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpneqd 0x80(%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpnled %zmm3,%zmm2,%k1{%k2}
	vpcmpnled %zmm3{dcba},%zmm2,%k1{%k2}
	vpcmpnled %zmm3{cdab},%zmm2,%k1{%k2}
	vpcmpnled %zmm3{badc},%zmm2,%k1{%k2}
	vpcmpnled %zmm3{aaaa},%zmm2,%k1{%k2}
	vpcmpnled %zmm3{bbbb},%zmm2,%k1{%k2}
	vpcmpnled %zmm3{cccc},%zmm2,%k1{%k2}
	vpcmpnled %zmm3{dddd},%zmm2,%k1{%k2}
	vpcmpnled %zmm3{dacb},%zmm2,%k1{%k2}
	vpcmpnled %zmm3{eh},%zmm2,%k1{%k2}
	vpcmpnled %zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vpcmpnled (%rcx){eh},%zmm2,%k1{%k2}
	vpcmpnled (%rcx),%zmm2,%k1{%k2}
	vpcmpnled (%rcx){16to16},%zmm2,%k1{%k2}
	vpcmpnled (%rcx){1to16},%zmm2,%k1{%k2}
	vpcmpnled (%rcx){4to16},%zmm2,%k1{%k2}
	vpcmpnled (%rcx){uint8},%zmm2,%k1{%k2}
	vpcmpnled (%rcx){sint8},%zmm2,%k1{%k2}
	vpcmpnled (%rcx){uint16},%zmm2,%k1{%k2}
	vpcmpnled (%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpnled 0x80(%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3,%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{dcba},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{cdab},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{badc},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{aaaa},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{bbbb},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{cccc},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{dddd},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{dacb},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{eh},%zmm2,%k1{%k2}
	vpcmpnltd %zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vpcmpnltd (%rcx){eh},%zmm2,%k1{%k2}
	vpcmpnltd (%rcx),%zmm2,%k1{%k2}
	vpcmpnltd (%rcx){16to16},%zmm2,%k1{%k2}
	vpcmpnltd (%rcx){1to16},%zmm2,%k1{%k2}
	vpcmpnltd (%rcx){4to16},%zmm2,%k1{%k2}
	vpcmpnltd (%rcx){uint8},%zmm2,%k1{%k2}
	vpcmpnltd (%rcx){sint8},%zmm2,%k1{%k2}
	vpcmpnltd (%rcx){uint16},%zmm2,%k1{%k2}
	vpcmpnltd (%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpnltd 0x80(%rcx){sint16},%zmm2,%k1{%k2}
	vptestmd %zmm3,%zmm2,%k1{%k2}
	vptestmd %zmm3{dcba},%zmm2,%k1{%k2}
	vptestmd %zmm3{cdab},%zmm2,%k1{%k2}
	vptestmd %zmm3{badc},%zmm2,%k1{%k2}
	vptestmd %zmm3{aaaa},%zmm2,%k1{%k2}
	vptestmd %zmm3{bbbb},%zmm2,%k1{%k2}
	vptestmd %zmm3{cccc},%zmm2,%k1{%k2}
	vptestmd %zmm3{dddd},%zmm2,%k1{%k2}
	vptestmd %zmm3{dacb},%zmm2,%k1{%k2}
	vptestmd %zmm3{eh},%zmm2,%k1{%k2}
	vptestmd %zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vptestmd (%rcx){eh},%zmm2,%k1{%k2}
	vptestmd (%rcx),%zmm2,%k1{%k2}
	vptestmd (%rcx){16to16},%zmm2,%k1{%k2}
	vptestmd (%rcx){1to16},%zmm2,%k1{%k2}
	vptestmd (%rcx){4to16},%zmm2,%k1{%k2}
	vptestmd (%rcx){uint8},%zmm2,%k1{%k2}
	vptestmd (%rcx){sint8},%zmm2,%k1{%k2}
	vptestmd (%rcx){uint16},%zmm2,%k1{%k2}
	vptestmd (%rcx){sint16},%zmm2,%k1{%k2}
	vptestmd 0x80(%rcx){sint16},%zmm2,%k1{%k2}

# Tests for op k1{k1}, v2, sf(v3/mt), imm8 with SAE only
	vcmpps $100,%zmm3,%zmm2,%k1{%k2}
	vcmpps $100,%zmm3{dcba},%zmm2,%k1{%k2}
	vcmpps $100,%zmm3{cdab},%zmm2,%k1{%k2}
	vcmpps $100,%zmm3{badc},%zmm2,%k1{%k2}
	vcmpps $100,%zmm3{aaaa},%zmm2,%k1{%k2}
	vcmpps $100,%zmm3{bbbb},%zmm2,%k1{%k2}
	vcmpps $100,%zmm3{cccc},%zmm2,%k1{%k2}
	vcmpps $100,%zmm3{dddd},%zmm2,%k1{%k2}
	vcmpps $100,%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpps {sae},$100,%zmm3{dacb},%zmm2,%k1{%k2}
	vcmpps $100,(%rcx){eh},%zmm2,%k1{%k2}
	vcmpps $100,(%rcx),%zmm2,%k1{%k2}
	vcmpps $100,(%rcx){16to16},%zmm2,%k1{%k2}
	vcmpps $100,(%rcx){1to16},%zmm2,%k1{%k2}
	vcmpps $100,(%rcx){4to16},%zmm2,%k1{%k2}
	vcmpps $100,(%rcx){uint8},%zmm2,%k1{%k2}
	vcmpps $100,(%rcx){float16},%zmm2,%k1{%k2}
	vcmpps $100,(%rcx){sint16},%zmm2,%k1{%k2}
	vcmpps $100,(%rcx){uint16},%zmm2,%k1{%k2}
	vcmpps $100,0x80(%rcx){uint16},%zmm2,%k1{%k2}

# Tests for op k1{k1}, v2, sd(v3/mt), imm8 with SAE only
	vcmppd $100,%zmm3,%zmm2,%k1{%k2}
	vcmppd $100,%zmm3{dcba},%zmm2,%k1{%k2}
	vcmppd $100,%zmm3{cdab},%zmm2,%k1{%k2}
	vcmppd $100,%zmm3{badc},%zmm2,%k1{%k2}
	vcmppd $100,%zmm3{aaaa},%zmm2,%k1{%k2}
	vcmppd $100,%zmm3{bbbb},%zmm2,%k1{%k2}
	vcmppd $100,%zmm3{cccc},%zmm2,%k1{%k2}
	vcmppd $100,%zmm3{dddd},%zmm2,%k1{%k2}
	vcmppd $100,%zmm3{dacb},%zmm2,%k1{%k2}
	vcmppd {sae},$100,%zmm3{dacb},%zmm2,%k1{%k2}
	vcmppd $100,(%rcx){eh},%zmm2,%k1{%k2}
	vcmppd $100,(%rcx),%zmm2,%k1{%k2}
	vcmppd $100,(%rcx){8to8},%zmm2,%k1{%k2}
	vcmppd $100,(%rcx){1to8},%zmm2,%k1{%k2}
	vcmppd $100,(%rcx){4to8},%zmm2,%k1{%k2}
	vcmppd $100,0x80(%rcx){4to8},%zmm2,%k1{%k2}

# Tests for op k2{k1}, v2, si(v3/mt), imm8
	vpcmpd $100,%zmm3,%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{dcba},%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{cdab},%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{badc},%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{aaaa},%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{bbbb},%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{cccc},%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{dddd},%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{dacb},%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{eh},%zmm2,%k1{%k2}
	vpcmpd $100,%zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vpcmpd $100,(%rcx){eh},%zmm2,%k1{%k2}
	vpcmpd $100,(%rcx),%zmm2,%k1{%k2}
	vpcmpd $100,(%rcx){16to16},%zmm2,%k1{%k2}
	vpcmpd $100,(%rcx){1to16},%zmm2,%k1{%k2}
	vpcmpd $100,(%rcx){4to16},%zmm2,%k1{%k2}
	vpcmpd $100,(%rcx){uint8},%zmm2,%k1{%k2}
	vpcmpd $100,(%rcx){sint8},%zmm2,%k1{%k2}
	vpcmpd $100,(%rcx){uint16},%zmm2,%k1{%k2}
	vpcmpd $100,(%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpd $100,0x80(%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3,%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{dcba},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{cdab},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{badc},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{aaaa},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{bbbb},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{cccc},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{dddd},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{dacb},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{eh},%zmm2,%k1{%k2}
	vpcmpud $100,%zmm3{dcba}{eh},%zmm2,%k1{%k2}
	vpcmpud $100,(%rcx){eh},%zmm2,%k1{%k2}
	vpcmpud $100,(%rcx),%zmm2,%k1{%k2}
	vpcmpud $100,(%rcx){16to16},%zmm2,%k1{%k2}
	vpcmpud $100,(%rcx){1to16},%zmm2,%k1{%k2}
	vpcmpud $100,(%rcx){4to16},%zmm2,%k1{%k2}
	vpcmpud $100,(%rcx){uint8},%zmm2,%k1{%k2}
	vpcmpud $100,(%rcx){sint8},%zmm2,%k1{%k2}
	vpcmpud $100,(%rcx){uint16},%zmm2,%k1{%k2}
	vpcmpud $100,(%rcx){sint16},%zmm2,%k1{%k2}
	vpcmpud $100,0x80(%rcx){sint16},%zmm2,%k1{%k2}

# Tests for op v1{k1}, v2, sq(v3/mt)
	vpandq %zmm3,%zmm2,%zmm1{%k1}
	vpandq %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpandq %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpandq %zmm3{badc},%zmm2,%zmm1{%k1}
	vpandq %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpandq %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpandq %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpandq %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpandq %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpandq %zmm3{eh},%zmm2,%zmm1{%k1}
	vpandq %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpandq (%rcx){eh},%zmm2,%zmm1{%k1}
	vpandq (%rcx),%zmm2,%zmm1{%k1}
	vpandq (%rcx){8to8},%zmm2,%zmm1{%k1}
	vpandq (%rcx){1to8},%zmm2,%zmm1{%k1}
	vpandq (%rcx){4to8},%zmm2,%zmm1{%k1}
	vpandq 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vpandnq %zmm3,%zmm2,%zmm1{%k1}
	vpandnq %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpandnq %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpandnq %zmm3{badc},%zmm2,%zmm1{%k1}
	vpandnq %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpandnq %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpandnq %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpandnq %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpandnq %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpandnq %zmm3{eh},%zmm2,%zmm1{%k1}
	vpandnq %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpandnq (%rcx){eh},%zmm2,%zmm1{%k1}
	vpandnq (%rcx),%zmm2,%zmm1{%k1}
	vpandnq (%rcx){8to8},%zmm2,%zmm1{%k1}
	vpandnq (%rcx){1to8},%zmm2,%zmm1{%k1}
	vpandnq (%rcx){4to8},%zmm2,%zmm1{%k1}
	vpandnq 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3,%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{badc},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{eh},%zmm2,%zmm1{%k1}
	vpblendmq %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpblendmq (%rcx){eh},%zmm2,%zmm1{%k1}
	vpblendmq (%rcx),%zmm2,%zmm1{%k1}
	vpblendmq (%rcx){8to8},%zmm2,%zmm1{%k1}
	vpblendmq (%rcx){1to8},%zmm2,%zmm1{%k1}
	vpblendmq (%rcx){4to8},%zmm2,%zmm1{%k1}
	vpblendmq 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vporq %zmm3,%zmm2,%zmm1{%k1}
	vporq %zmm3{dcba},%zmm2,%zmm1{%k1}
	vporq %zmm3{cdab},%zmm2,%zmm1{%k1}
	vporq %zmm3{badc},%zmm2,%zmm1{%k1}
	vporq %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vporq %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vporq %zmm3{cccc},%zmm2,%zmm1{%k1}
	vporq %zmm3{dddd},%zmm2,%zmm1{%k1}
	vporq %zmm3{dacb},%zmm2,%zmm1{%k1}
	vporq %zmm3{eh},%zmm2,%zmm1{%k1}
	vporq %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vporq (%rcx){eh},%zmm2,%zmm1{%k1}
	vporq (%rcx),%zmm2,%zmm1{%k1}
	vporq (%rcx){8to8},%zmm2,%zmm1{%k1}
	vporq (%rcx){1to8},%zmm2,%zmm1{%k1}
	vporq (%rcx){4to8},%zmm2,%zmm1{%k1}
	vporq 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}
	vpxorq %zmm3,%zmm2,%zmm1{%k1}
	vpxorq %zmm3{dcba},%zmm2,%zmm1{%k1}
	vpxorq %zmm3{cdab},%zmm2,%zmm1{%k1}
	vpxorq %zmm3{badc},%zmm2,%zmm1{%k1}
	vpxorq %zmm3{aaaa},%zmm2,%zmm1{%k1}
	vpxorq %zmm3{bbbb},%zmm2,%zmm1{%k1}
	vpxorq %zmm3{cccc},%zmm2,%zmm1{%k1}
	vpxorq %zmm3{dddd},%zmm2,%zmm1{%k1}
	vpxorq %zmm3{dacb},%zmm2,%zmm1{%k1}
	vpxorq %zmm3{eh},%zmm2,%zmm1{%k1}
	vpxorq %zmm3{dcba}{eh},%zmm2,%zmm1{%k1}
	vpxorq (%rcx){eh},%zmm2,%zmm1{%k1}
	vpxorq (%rcx),%zmm2,%zmm1{%k1}
	vpxorq (%rcx){8to8},%zmm2,%zmm1{%k1}
	vpxorq (%rcx){1to8},%zmm2,%zmm1{%k1}
	vpxorq (%rcx){4to8},%zmm2,%zmm1{%k1}
	vpxorq 0x80(%rcx){4to8},%zmm2,%zmm1{%k1}

# Tests for op v1{k1}, sbroadcastonlyhalf(v2/mt)
	vcvtdq2pd %zmm3,%zmm1{%k1}
	vcvtdq2pd %ymm3,%zmm1{%k1}
	vcvtdq2pd %zmm3{dcba},%zmm1{%k1}
	vcvtdq2pd %ymm3{dcba},%zmm1{%k1}
	vcvtdq2pd %zmm3{cdab},%zmm1{%k1}
	vcvtdq2pd %ymm3{cdab},%zmm1{%k1}
	vcvtdq2pd %zmm3{badc},%zmm1{%k1}
	vcvtdq2pd %ymm3{badc},%zmm1{%k1}
	vcvtdq2pd %zmm3{aaaa},%zmm1{%k1}
	vcvtdq2pd %ymm3{aaaa},%zmm1{%k1}
	vcvtdq2pd %zmm3{bbbb},%zmm1{%k1}
	vcvtdq2pd %ymm3{bbbb},%zmm1{%k1}
	vcvtdq2pd %zmm3{cccc},%zmm1{%k1}
	vcvtdq2pd %ymm3{cccc},%zmm1{%k1}
	vcvtdq2pd %zmm3{dddd},%zmm1{%k1}
	vcvtdq2pd %ymm3{dddd},%zmm1{%k1}
	vcvtdq2pd %zmm3{dacb},%zmm1{%k1}
	vcvtdq2pd %ymm3{dacb},%zmm1{%k1}
	vcvtdq2pd %zmm3{eh},%zmm1{%k1}
	vcvtdq2pd %ymm3{eh},%zmm1{%k1}
	vcvtdq2pd %zmm3{dcba}{eh},%zmm1{%k1}
	vcvtdq2pd %ymm3{dcba}{eh},%zmm1{%k1}
	vcvtdq2pd (%rcx){eh},%zmm1{%k1}
	vcvtdq2pd (%rcx),%zmm1{%k1}
	vcvtdq2pd 0x80(%rcx),%zmm1{%k1}
	vcvtdq2pd (%rcx){8to8},%zmm1{%k1}
	vcvtdq2pd 0x80(%rcx){8to8},%zmm1{%k1}
	vcvtdq2pd (%rcx){1to8},%zmm1{%k1}
	vcvtdq2pd 0x80(%rcx){1to8},%zmm1{%k1}
	vcvtdq2pd (%rcx){4to8},%zmm1{%k1}
	vcvtdq2pd 0x80(%rcx){4to8},%zmm1{%k1}
	vcvtps2pd %zmm3,%zmm1{%k1}
	vcvtps2pd %ymm3,%zmm1{%k1}
	vcvtps2pd %zmm3{dcba},%zmm1{%k1}
	vcvtps2pd %ymm3{dcba},%zmm1{%k1}
	vcvtps2pd %zmm3{cdab},%zmm1{%k1}
	vcvtps2pd %ymm3{cdab},%zmm1{%k1}
	vcvtps2pd %zmm3{badc},%zmm1{%k1}
	vcvtps2pd %ymm3{badc},%zmm1{%k1}
	vcvtps2pd %zmm3{aaaa},%zmm1{%k1}
	vcvtps2pd %ymm3{aaaa},%zmm1{%k1}
	vcvtps2pd %zmm3{bbbb},%zmm1{%k1}
	vcvtps2pd %ymm3{bbbb},%zmm1{%k1}
	vcvtps2pd %zmm3{cccc},%zmm1{%k1}
	vcvtps2pd %ymm3{cccc},%zmm1{%k1}
	vcvtps2pd %zmm3{dddd},%zmm1{%k1}
	vcvtps2pd %ymm3{dddd},%zmm1{%k1}
	vcvtps2pd %zmm3{dacb},%zmm1{%k1}
	vcvtps2pd %ymm3{dacb},%zmm1{%k1}
	vcvtps2pd %zmm3{eh},%zmm1{%k1}
	vcvtps2pd %ymm3{eh},%zmm1{%k1}
	vcvtps2pd %zmm3{dcba}{eh},%zmm1{%k1}
	vcvtps2pd %ymm3{dcba}{eh},%zmm1{%k1}
	vcvtps2pd (%rcx){eh},%zmm1{%k1}
	vcvtps2pd (%rcx),%zmm1{%k1}
	vcvtps2pd 0x80(%rcx),%zmm1{%k1}
	vcvtps2pd (%rcx){8to8},%zmm1{%k1}
	vcvtps2pd 0x80(%rcx){8to8},%zmm1{%k1}
	vcvtps2pd (%rcx){1to8},%zmm1{%k1}
	vcvtps2pd 0x80(%rcx){1to8},%zmm1{%k1}
	vcvtps2pd (%rcx){4to8},%zmm1{%k1}
	vcvtps2pd 0x80(%rcx){4to8},%zmm1{%k1}
	vcvtudq2pd %zmm3,%zmm1{%k1}
	vcvtudq2pd %ymm3,%zmm1{%k1}
	vcvtudq2pd %zmm3{dcba},%zmm1{%k1}
	vcvtudq2pd %ymm3{dcba},%zmm1{%k1}
	vcvtudq2pd %zmm3{cdab},%zmm1{%k1}
	vcvtudq2pd %ymm3{cdab},%zmm1{%k1}
	vcvtudq2pd %zmm3{badc},%zmm1{%k1}
	vcvtudq2pd %ymm3{badc},%zmm1{%k1}
	vcvtudq2pd %zmm3{aaaa},%zmm1{%k1}
	vcvtudq2pd %ymm3{aaaa},%zmm1{%k1}
	vcvtudq2pd %zmm3{bbbb},%zmm1{%k1}
	vcvtudq2pd %ymm3{bbbb},%zmm1{%k1}
	vcvtudq2pd %zmm3{cccc},%zmm1{%k1}
	vcvtudq2pd %ymm3{cccc},%zmm1{%k1}
	vcvtudq2pd %zmm3{dddd},%zmm1{%k1}
	vcvtudq2pd %ymm3{dddd},%zmm1{%k1}
	vcvtudq2pd %zmm3{dacb},%zmm1{%k1}
	vcvtudq2pd %ymm3{dacb},%zmm1{%k1}
	vcvtudq2pd %zmm3{eh},%zmm1{%k1}
	vcvtudq2pd %ymm3{eh},%zmm1{%k1}
	vcvtudq2pd %zmm3{dcba}{eh},%zmm1{%k1}
	vcvtudq2pd %ymm3{dcba}{eh},%zmm1{%k1}
	vcvtudq2pd (%rcx){eh},%zmm1{%k1}
	vcvtudq2pd (%rcx),%zmm1{%k1}
	vcvtudq2pd 0x80(%rcx),%zmm1{%k1}
	vcvtudq2pd (%rcx){8to8},%zmm1{%k1}
	vcvtudq2pd 0x80(%rcx){8to8},%zmm1{%k1}
	vcvtudq2pd (%rcx){1to8},%zmm1{%k1}
	vcvtudq2pd 0x80(%rcx){1to8},%zmm1{%k1}
	vcvtudq2pd (%rcx){4to8},%zmm1{%k1}
	vcvtudq2pd 0x80(%rcx){4to8},%zmm1{%k1}

# Tests for op v1{k1}, sf(v2/mt) with SAE
	vgetexpps %zmm3,%zmm1{%k1}
	vgetexpps %zmm3{dcba},%zmm1{%k1}
	vgetexpps %zmm3{cdab},%zmm1{%k1}
	vgetexpps %zmm3{badc},%zmm1{%k1}
	vgetexpps %zmm3{aaaa},%zmm1{%k1}
	vgetexpps %zmm3{bbbb},%zmm1{%k1}
	vgetexpps %zmm3{cccc},%zmm1{%k1}
	vgetexpps %zmm3{dddd},%zmm1{%k1}
	vgetexpps %zmm3{dacb},%zmm1{%k1}
	vgetexpps {sae},%zmm3,%zmm1{%k1}
	vgetexpps (%rcx){eh},%zmm1{%k1}
	vgetexpps (%rcx),%zmm1{%k1}
	vgetexpps (%rcx){16to16},%zmm1{%k1}
	vgetexpps (%rcx){1to16},%zmm1{%k1}
	vgetexpps (%rcx){4to16},%zmm1{%k1}
	vgetexpps (%rcx){uint8},%zmm1{%k1}
	vgetexpps (%rcx){float16},%zmm1{%k1}
	vgetexpps (%rcx){sint16},%zmm1{%k1}
	vgetexpps (%rcx){uint16},%zmm1{%k1}
	vgetexpps 0x80(%rcx){uint16},%zmm1{%k1}

#Test for op v1{k1}, sd(v2/mt) with SAE
	vgetexppd %zmm3,%zmm1{%k1}
	vgetexppd %zmm3{dcba},%zmm1{%k1}
	vgetexppd %zmm3{cdab},%zmm1{%k1}
	vgetexppd %zmm3{badc},%zmm1{%k1}
	vgetexppd %zmm3{aaaa},%zmm1{%k1}
	vgetexppd %zmm3{bbbb},%zmm1{%k1}
	vgetexppd %zmm3{cccc},%zmm1{%k1}
	vgetexppd %zmm3{dddd},%zmm1{%k1}
	vgetexppd %zmm3{dacb},%zmm1{%k1}
	vgetexppd (%rcx),%zmm1{%k1}
	vgetexppd (%rcx){8to8},%zmm1{%k1}
	vgetexppd (%rcx){1to8},%zmm1{%k1}
	vgetexppd (%rcx){4to8},%zmm1{%k1}
	vgetexppd {sae},%zmm3,%zmm1{%k1}
	vgetexppd (%rcx){eh}{4to8},%zmm1{%k1}
	vgetexppd 0x80(%rcx){4to8},%zmm1{%k1}

# Tests for op v1{k1}, sd(v2/mt) with rounding
	vcvtpd2ps %zmm2,%zmm1{%k1}
	vcvtpd2ps %zmm2{dcba},%zmm1{%k1}
	vcvtpd2ps %zmm2{cdab},%zmm1{%k1}
	vcvtpd2ps %zmm2{badc},%zmm1{%k1}
	vcvtpd2ps %zmm2{aaaa},%zmm1{%k1}
	vcvtpd2ps %zmm2{bbbb},%zmm1{%k1}
	vcvtpd2ps %zmm2{cccc},%zmm1{%k1}
	vcvtpd2ps %zmm2{dddd},%zmm1{%k1}
	vcvtpd2ps %zmm2{dacb},%zmm1{%k1}
	vcvtpd2ps {rn},%zmm2,%zmm1{%k1}
	vcvtpd2ps {rd},%zmm2,%zmm1{%k1}
	vcvtpd2ps {ru},%zmm2,%zmm1{%k1}
	vcvtpd2ps {rz},%zmm2,%zmm1{%k1}
	vcvtpd2ps {sae},%zmm2,%zmm1{%k1}
	vcvtpd2ps {rn-sae},%zmm2,%zmm1{%k1}
	vcvtpd2ps {rd-sae},%zmm2,%zmm1{%k1}
	vcvtpd2ps {ru-sae},%zmm2,%zmm1{%k1}
	vcvtpd2ps {rz-sae},%zmm2,%zmm1{%k1}
	vcvtpd2ps (%rcx){eh},%zmm1{%k1}
	vcvtpd2ps (%rcx),%zmm1{%k1}
	vcvtpd2ps (%rcx){8to8},%zmm1{%k1}
	vcvtpd2ps (%rcx){1to8},%zmm1{%k1}
	vcvtpd2ps (%rcx){4to8},%zmm1{%k1}
	vcvtpd2ps 0x80(%rcx){4to8},%zmm1{%k1}

# Tests for op v1{k1}, sf(v2/mt), imm8 with SAE
	vcvtfxpntps2dq $7,%zmm3,%zmm1{%k1}
	vcvtfxpntps2dq $7,%zmm3{dcba},%zmm1{%k1}
	vcvtfxpntps2dq $7,%zmm3{cdab},%zmm1{%k1}
	vcvtfxpntps2dq $7,%zmm3{badc},%zmm1{%k1}
	vcvtfxpntps2dq $7,%zmm3{aaaa},%zmm1{%k1}
	vcvtfxpntps2dq $7,%zmm3{bbbb},%zmm1{%k1}
	vcvtfxpntps2dq $7,%zmm3{cccc},%zmm1{%k1}
	vcvtfxpntps2dq $7,%zmm3{dddd},%zmm1{%k1}
	vcvtfxpntps2dq $7,%zmm3{dacb},%zmm1{%k1}
	vcvtfxpntps2dq {sae},$7,%zmm3,%zmm1{%k1}
	vcvtfxpntps2dq $7,(%rcx){eh},%zmm1{%k1}
	vcvtfxpntps2dq $7,(%rcx),%zmm1{%k1}
	vcvtfxpntps2dq $7,(%rcx){16to16},%zmm1{%k1}
	vcvtfxpntps2dq $7,(%rcx){1to16},%zmm1{%k1}
	vcvtfxpntps2dq $7,(%rcx){4to16},%zmm1{%k1}
	vcvtfxpntps2dq $7,(%rcx){uint8},%zmm1{%k1}
	vcvtfxpntps2dq $7,(%rcx){float16},%zmm1{%k1}
	vcvtfxpntps2dq $7,(%rcx){sint16},%zmm1{%k1}
	vcvtfxpntps2dq $7,(%rcx){uint16},%zmm1{%k1}
	vcvtfxpntps2dq $7,0x80(%rcx){uint16},%zmm1{%k1}
	vcvtfxpntps2udq $7,%zmm3,%zmm1{%k1}
	vcvtfxpntps2udq $7,%zmm3{dcba},%zmm1{%k1}
	vcvtfxpntps2udq $7,%zmm3{cdab},%zmm1{%k1}
	vcvtfxpntps2udq $7,%zmm3{badc},%zmm1{%k1}
	vcvtfxpntps2udq $7,%zmm3{aaaa},%zmm1{%k1}
	vcvtfxpntps2udq $7,%zmm3{bbbb},%zmm1{%k1}
	vcvtfxpntps2udq $7,%zmm3{cccc},%zmm1{%k1}
	vcvtfxpntps2udq $7,%zmm3{dddd},%zmm1{%k1}
	vcvtfxpntps2udq $7,%zmm3{dacb},%zmm1{%k1}
	vcvtfxpntps2udq {sae},$7,%zmm3,%zmm1{%k1}
	vcvtfxpntps2udq $7,(%rcx){eh},%zmm1{%k1}
	vcvtfxpntps2udq $7,(%rcx),%zmm1{%k1}
	vcvtfxpntps2udq $7,(%rcx){16to16},%zmm1{%k1}
	vcvtfxpntps2udq $7,(%rcx){1to16},%zmm1{%k1}
	vcvtfxpntps2udq $7,(%rcx){4to16},%zmm1{%k1}
	vcvtfxpntps2udq $7,(%rcx){uint8},%zmm1{%k1}
	vcvtfxpntps2udq $7,(%rcx){float16},%zmm1{%k1}
	vcvtfxpntps2udq $7,(%rcx){sint16},%zmm1{%k1}
	vcvtfxpntps2udq $7,(%rcx){uint16},%zmm1{%k1}
	vcvtfxpntps2udq $7,0x80(%rcx){uint16},%zmm1{%k1}
	vrndfxpntps $7,%zmm3,%zmm1{%k1}
	vrndfxpntps $7,%zmm3{dcba},%zmm1{%k1}
	vrndfxpntps $7,%zmm3{cdab},%zmm1{%k1}
	vrndfxpntps $7,%zmm3{badc},%zmm1{%k1}
	vrndfxpntps $7,%zmm3{aaaa},%zmm1{%k1}
	vrndfxpntps $7,%zmm3{bbbb},%zmm1{%k1}
	vrndfxpntps $7,%zmm3{cccc},%zmm1{%k1}
	vrndfxpntps $7,%zmm3{dddd},%zmm1{%k1}
	vrndfxpntps $7,%zmm3{dacb},%zmm1{%k1}
	vrndfxpntps {sae},$7,%zmm3,%zmm1{%k1}
	vrndfxpntps $7,(%rcx){eh},%zmm1{%k1}
	vrndfxpntps $7,(%rcx),%zmm1{%k1}
	vrndfxpntps $7,(%rcx){16to16},%zmm1{%k1}
	vrndfxpntps $7,(%rcx){1to16},%zmm1{%k1}
	vrndfxpntps $7,(%rcx){4to16},%zmm1{%k1}
	vrndfxpntps $7,(%rcx){uint8},%zmm1{%k1}
	vrndfxpntps $7,(%rcx){float16},%zmm1{%k1}
	vrndfxpntps $7,(%rcx){sint16},%zmm1{%k1}
	vrndfxpntps $7,(%rcx){uint16},%zmm1{%k1}
	vrndfxpntps $7,0x80(%rcx){uint16},%zmm1{%k1}
	vgetmantps $7,%zmm3,%zmm1{%k1}
	vgetmantps $7,%zmm3{dcba},%zmm1{%k1}
	vgetmantps $7,%zmm3{cdab},%zmm1{%k1}
	vgetmantps $7,%zmm3{badc},%zmm1{%k1}
	vgetmantps $7,%zmm3{aaaa},%zmm1{%k1}
	vgetmantps $7,%zmm3{bbbb},%zmm1{%k1}
	vgetmantps $7,%zmm3{cccc},%zmm1{%k1}
	vgetmantps $7,%zmm3{dddd},%zmm1{%k1}
	vgetmantps $7,%zmm3{dacb},%zmm1{%k1}
	vgetmantps {sae},$7,%zmm3,%zmm1{%k1}
	vgetmantps $7,(%rcx){eh},%zmm1{%k1}
	vgetmantps $7,(%rcx),%zmm1{%k1}
	vgetmantps $7,(%rcx){16to16},%zmm1{%k1}
	vgetmantps $7,(%rcx){1to16},%zmm1{%k1}
	vgetmantps $7,(%rcx){4to16},%zmm1{%k1}
	vgetmantps $7,(%rcx){uint8},%zmm1{%k1}
	vgetmantps $7,(%rcx){float16},%zmm1{%k1}
	vgetmantps $7,(%rcx){sint16},%zmm1{%k1}
	vgetmantps $7,(%rcx){uint16},%zmm1{%k1}
	vgetmantps $7,0x80(%rcx){uint16},%zmm1{%k1}

# Tests for op v1{k1}, sd(v2/mt), imm8 with SAE
	vcvtfxpntpd2dq $7,%zmm3,%zmm1{%k1}
	vcvtfxpntpd2dq $7,%zmm3{dcba},%zmm1{%k1}
	vcvtfxpntpd2dq $7,%zmm3{cdab},%zmm1{%k1}
	vcvtfxpntpd2dq $7,%zmm3{badc},%zmm1{%k1}
	vcvtfxpntpd2dq $7,%zmm3{aaaa},%zmm1{%k1}
	vcvtfxpntpd2dq $7,%zmm3{bbbb},%zmm1{%k1}
	vcvtfxpntpd2dq $7,%zmm3{cccc},%zmm1{%k1}
	vcvtfxpntpd2dq $7,%zmm3{dddd},%zmm1{%k1}
	vcvtfxpntpd2dq $7,%zmm3{dacb},%zmm1{%k1}
	vcvtfxpntpd2dq {sae},$7,%zmm3,%zmm1{%k1}
	vcvtfxpntpd2dq $7,(%rcx){eh},%zmm1{%k1}
	vcvtfxpntpd2dq $7,(%rcx),%zmm1{%k1}
	vcvtfxpntpd2dq $7,(%rcx){8to8},%zmm1{%k1}
	vcvtfxpntpd2dq $7,(%rcx){1to8},%zmm1{%k1}
	vcvtfxpntpd2dq $7,(%rcx){4to8},%zmm1{%k1}
	vcvtfxpntpd2dq $7,0x80(%rcx){4to8},%zmm1{%k1}
	vcvtfxpntpd2udq $7,%zmm3,%zmm1{%k1}
	vcvtfxpntpd2udq $7,%zmm3{dcba},%zmm1{%k1}
	vcvtfxpntpd2udq $7,%zmm3{cdab},%zmm1{%k1}
	vcvtfxpntpd2udq $7,%zmm3{badc},%zmm1{%k1}
	vcvtfxpntpd2udq $7,%zmm3{aaaa},%zmm1{%k1}
	vcvtfxpntpd2udq $7,%zmm3{bbbb},%zmm1{%k1}
	vcvtfxpntpd2udq $7,%zmm3{cccc},%zmm1{%k1}
	vcvtfxpntpd2udq $7,%zmm3{dddd},%zmm1{%k1}
	vcvtfxpntpd2udq $7,%zmm3{dacb},%zmm1{%k1}
	vcvtfxpntpd2udq {sae},$7,%zmm3,%zmm1{%k1}
	vcvtfxpntpd2udq $7,(%rcx){eh},%zmm1{%k1}
	vcvtfxpntpd2udq $7,(%rcx),%zmm1{%k1}
	vcvtfxpntpd2udq $7,(%rcx){8to8},%zmm1{%k1}
	vcvtfxpntpd2udq $7,(%rcx){1to8},%zmm1{%k1}
	vcvtfxpntpd2udq $7,(%rcx){4to8},%zmm1{%k1}
	vcvtfxpntpd2udq $7,0x80(%rcx){4to8},%zmm1{%k1}
	vrndfxpntpd $7,%zmm3,%zmm1{%k1}
	vrndfxpntpd $7,%zmm3{dcba},%zmm1{%k1}
	vrndfxpntpd $7,%zmm3{cdab},%zmm1{%k1}
	vrndfxpntpd $7,%zmm3{badc},%zmm1{%k1}
	vrndfxpntpd $7,%zmm3{aaaa},%zmm1{%k1}
	vrndfxpntpd $7,%zmm3{bbbb},%zmm1{%k1}
	vrndfxpntpd $7,%zmm3{cccc},%zmm1{%k1}
	vrndfxpntpd $7,%zmm3{dddd},%zmm1{%k1}
	vrndfxpntpd $7,%zmm3{dacb},%zmm1{%k1}
	vrndfxpntpd {sae},$7,%zmm3,%zmm1{%k1}
	vrndfxpntpd $7,(%rcx){eh},%zmm1{%k1}
	vrndfxpntpd $7,(%rcx),%zmm1{%k1}
	vrndfxpntpd $7,(%rcx){8to8},%zmm1{%k1}
	vrndfxpntpd $7,(%rcx){1to8},%zmm1{%k1}
	vrndfxpntpd $7,(%rcx){4to8},%zmm1{%k1}
	vrndfxpntpd $7,0x80(%rcx){4to8},%zmm1{%k1}
	vgetmantpd $7,%zmm3,%zmm1{%k1}
	vgetmantpd $7,%zmm3{dcba},%zmm1{%k1}
	vgetmantpd $7,%zmm3{cdab},%zmm1{%k1}
	vgetmantpd $7,%zmm3{badc},%zmm1{%k1}
	vgetmantpd $7,%zmm3{aaaa},%zmm1{%k1}
	vgetmantpd $7,%zmm3{bbbb},%zmm1{%k1}
	vgetmantpd $7,%zmm3{cccc},%zmm1{%k1}
	vgetmantpd $7,%zmm3{dddd},%zmm1{%k1}
	vgetmantpd $7,%zmm3{dacb},%zmm1{%k1}
	vgetmantpd {sae},$7,%zmm3,%zmm1{%k1}
	vgetmantpd $7,(%rcx){eh},%zmm1{%k1}
	vgetmantpd $7,(%rcx),%zmm1{%k1}
	vgetmantpd $7,(%rcx){8to8},%zmm1{%k1}
	vgetmantpd $7,(%rcx){1to8},%zmm1{%k1}
	vgetmantpd $7,(%rcx){4to8},%zmm1{%k1}
	vgetmantpd $7,0x80(%rcx){4to8},%zmm1{%k1}

# Tests for op v1{k1}, Si32(v2/mt), imm8
	vpslld $7,%zmm3,%zmm1{%k1}
	vpslld $7,%zmm3{dcba},%zmm1{%k1}
	vpslld $7,%zmm3{cdab},%zmm1{%k1}
	vpslld $7,%zmm3{badc},%zmm1{%k1}
	vpslld $7,%zmm3{aaaa},%zmm1{%k1}
	vpslld $7,%zmm3{bbbb},%zmm1{%k1}
	vpslld $7,%zmm3{cccc},%zmm1{%k1}
	vpslld $7,%zmm3{dddd},%zmm1{%k1}
	vpslld $7,%zmm3{dacb},%zmm1{%k1}
	vpslld $7,%zmm3{eh},%zmm1{%k1}
	vpslld $7,%zmm3{dcba}{eh},%zmm1{%k1}
	vpslld $7,(%rcx){eh},%zmm1{%k1}
	vpslld $7,(%rcx),%zmm1{%k1}
	vpslld $7,(%rcx){16to16},%zmm1{%k1}
	vpslld $7,(%rcx){1to16},%zmm1{%k1}
	vpslld $7,(%rcx){4to16},%zmm1{%k1}
	vpslld $7,(%rcx){uint8},%zmm1{%k1}
	vpslld $7,(%rcx){sint8},%zmm1{%k1}
	vpslld $7,(%rcx){uint16},%zmm1{%k1}
	vpslld $7,(%rcx){sint16},%zmm1{%k1}
	vpslld $7,0x80(%rcx){sint16},%zmm1{%k1}
	vpsrad $7,%zmm3,%zmm1{%k1}
	vpsrad $7,%zmm3{dcba},%zmm1{%k1}
	vpsrad $7,%zmm3{cdab},%zmm1{%k1}
	vpsrad $7,%zmm3{badc},%zmm1{%k1}
	vpsrad $7,%zmm3{aaaa},%zmm1{%k1}
	vpsrad $7,%zmm3{bbbb},%zmm1{%k1}
	vpsrad $7,%zmm3{cccc},%zmm1{%k1}
	vpsrad $7,%zmm3{dddd},%zmm1{%k1}
	vpsrad $7,%zmm3{dacb},%zmm1{%k1}
	vpsrad $7,%zmm3{eh},%zmm1{%k1}
	vpsrad $7,%zmm3{dcba}{eh},%zmm1{%k1}
	vpsrad $7,(%rcx){eh},%zmm1{%k1}
	vpsrad $7,(%rcx),%zmm1{%k1}
	vpsrad $7,(%rcx){16to16},%zmm1{%k1}
	vpsrad $7,(%rcx){1to16},%zmm1{%k1}
	vpsrad $7,(%rcx){4to16},%zmm1{%k1}
	vpsrad $7,(%rcx){uint8},%zmm1{%k1}
	vpsrad $7,(%rcx){sint8},%zmm1{%k1}
	vpsrad $7,(%rcx){uint16},%zmm1{%k1}
	vpsrad $7,(%rcx){sint16},%zmm1{%k1}
	vpsrad $7,0x80(%rcx){sint16},%zmm1{%k1}
	vpsrld $7,%zmm3,%zmm1{%k1}
	vpsrld $7,%zmm3{dcba},%zmm1{%k1}
	vpsrld $7,%zmm3{cdab},%zmm1{%k1}
	vpsrld $7,%zmm3{badc},%zmm1{%k1}
	vpsrld $7,%zmm3{aaaa},%zmm1{%k1}
	vpsrld $7,%zmm3{bbbb},%zmm1{%k1}
	vpsrld $7,%zmm3{cccc},%zmm1{%k1}
	vpsrld $7,%zmm3{dddd},%zmm1{%k1}
	vpsrld $7,%zmm3{dacb},%zmm1{%k1}
	vpsrld $7,%zmm3{eh},%zmm1{%k1}
	vpsrld $7,%zmm3{dcba}{eh},%zmm1{%k1}
	vpsrld $7,(%rcx){eh},%zmm1{%k1}
	vpsrld $7,(%rcx),%zmm1{%k1}
	vpsrld $7,(%rcx){16to16},%zmm1{%k1}
	vpsrld $7,(%rcx){1to16},%zmm1{%k1}
	vpsrld $7,(%rcx){4to16},%zmm1{%k1}
	vpsrld $7,(%rcx){uint8},%zmm1{%k1}
	vpsrld $7,(%rcx){sint8},%zmm1{%k1}
	vpsrld $7,(%rcx){uint16},%zmm1{%k1}
	vpsrld $7,(%rcx){sint16},%zmm1{%k1}
	vpsrld $7,0x80(%rcx){sint16},%zmm1{%k1}

# Tests for op v1{k1}, Si32(v2/mt), imm8 with rounding
	vcvtfxpntdq2ps $7,%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,%zmm3{dcba},%zmm1{%k1}
	vcvtfxpntdq2ps $7,%zmm3{cdab},%zmm1{%k1}
	vcvtfxpntdq2ps $7,%zmm3{badc},%zmm1{%k1}
	vcvtfxpntdq2ps $7,%zmm3{aaaa},%zmm1{%k1}
	vcvtfxpntdq2ps $7,%zmm3{bbbb},%zmm1{%k1}
	vcvtfxpntdq2ps $7,%zmm3{cccc},%zmm1{%k1}
	vcvtfxpntdq2ps $7,%zmm3{dddd},%zmm1{%k1}
	vcvtfxpntdq2ps $7,%zmm3{dacb},%zmm1{%k1}
	vcvtfxpntdq2ps $7,{rn},%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,{rd},%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,{ru},%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,{rz},%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,{sae},%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,{rn-sae},%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,{rd-sae},%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,{ru-sae},%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,{rz-sae},%zmm3,%zmm1{%k1}
	vcvtfxpntdq2ps $7,(%rcx){eh},%zmm1{%k1}
	vcvtfxpntdq2ps $7,(%rcx),%zmm1{%k1}
	vcvtfxpntdq2ps $7,(%rcx){16to16},%zmm1{%k1}
	vcvtfxpntdq2ps $7,(%rcx){1to16},%zmm1{%k1}
	vcvtfxpntdq2ps $7,(%rcx){4to16},%zmm1{%k1}
	vcvtfxpntdq2ps $7,(%rcx){uint8},%zmm1{%k1}
	vcvtfxpntdq2ps $7,(%rcx){sint8},%zmm1{%k1}
	vcvtfxpntdq2ps $7,(%rcx){uint16},%zmm1{%k1}
	vcvtfxpntdq2ps $7,(%rcx){sint16},%zmm1{%k1}
	vcvtfxpntdq2ps $7,0x80(%rcx){sint16},%zmm1{%k1}
	vcvtfxpntudq2ps $7,%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,%zmm3{dcba},%zmm1{%k1}
	vcvtfxpntudq2ps $7,%zmm3{cdab},%zmm1{%k1}
	vcvtfxpntudq2ps $7,%zmm3{badc},%zmm1{%k1}
	vcvtfxpntudq2ps $7,%zmm3{aaaa},%zmm1{%k1}
	vcvtfxpntudq2ps $7,%zmm3{bbbb},%zmm1{%k1}
	vcvtfxpntudq2ps $7,%zmm3{cccc},%zmm1{%k1}
	vcvtfxpntudq2ps $7,%zmm3{dddd},%zmm1{%k1}
	vcvtfxpntudq2ps $7,%zmm3{dacb},%zmm1{%k1}
	vcvtfxpntudq2ps $7,{rn},%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,{rd},%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,{ru},%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,{rz},%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,{sae},%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,{rn-sae},%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,{rd-sae},%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,{ru-sae},%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,{rz-sae},%zmm3,%zmm1{%k1}
	vcvtfxpntudq2ps $7,(%rcx){eh},%zmm1{%k1}
	vcvtfxpntudq2ps $7,(%rcx),%zmm1{%k1}
	vcvtfxpntudq2ps $7,(%rcx){16to16},%zmm1{%k1}
	vcvtfxpntudq2ps $7,(%rcx){1to16},%zmm1{%k1}
	vcvtfxpntudq2ps $7,(%rcx){4to16},%zmm1{%k1}
	vcvtfxpntudq2ps $7,(%rcx){uint8},%zmm1{%k1}
	vcvtfxpntudq2ps $7,(%rcx){sint8},%zmm1{%k1}
	vcvtfxpntudq2ps $7,(%rcx){uint16},%zmm1{%k1}
	vcvtfxpntudq2ps $7,(%rcx){sint16},%zmm1{%k1}
	vcvtfxpntudq2ps $7,0x80(%rcx){sint16},%zmm1{%k1}

# Tests for op v1{k1}, Uf32(mt)
	vloadunpackhps (%rcx){eh},%zmm1{%k1}
	vloadunpackhps (%rcx),%zmm1{%k1}
	vloadunpackhps (%rcx){16to16},%zmm1{%k1}
	vloadunpackhps (%rcx){float16},%zmm1{%k1}
	vloadunpackhps (%rcx){uint8},%zmm1{%k1}
	vloadunpackhps (%rcx){sint8},%zmm1{%k1}
	vloadunpackhps (%rcx){uint16},%zmm1{%k1}
	vloadunpackhps (%rcx){sint16},%zmm1{%k1}
	vloadunpackhps 0x80(%rcx){sint16},%zmm1{%k1}
	vloadunpacklps (%rcx){eh},%zmm1{%k1}
	vloadunpacklps (%rcx),%zmm1{%k1}
	vloadunpacklps (%rcx){16to16},%zmm1{%k1}
	vloadunpacklps (%rcx){float16},%zmm1{%k1}
	vloadunpacklps (%rcx){uint8},%zmm1{%k1}
	vloadunpacklps (%rcx){sint8},%zmm1{%k1}
	vloadunpacklps (%rcx){uint16},%zmm1{%k1}
	vloadunpacklps (%rcx){sint16},%zmm1{%k1}
	vloadunpacklps 0x80(%rcx){sint16},%zmm1{%k1}
	vmovaps (%rcx){eh},%zmm1{%k1}
	vmovaps (%rcx),%zmm1{%k1}
	vmovaps (%rcx){16to16},%zmm1{%k1}
	vmovaps (%rcx){float16},%zmm1{%k1}
	vmovaps (%rcx){uint8},%zmm1{%k1}
	vmovaps (%rcx){sint8},%zmm1{%k1}
	vmovaps (%rcx){uint16},%zmm1{%k1}
	vmovaps (%rcx){sint16},%zmm1{%k1}
	vmovaps 0x80(%rcx){sint16},%zmm1{%k1}

# Tests for op v1{k1}, Uf32(mt) without broadcast
	vbroadcastf32x4 (%rcx){eh},%zmm1{%k1}
	vbroadcastf32x4 (%rcx),%zmm1{%k1}
	vbroadcastf32x4 (%rcx){float16},%zmm1{%k1}
	vbroadcastf32x4 (%rcx){uint8},%zmm1{%k1}
	vbroadcastf32x4 (%rcx){sint8},%zmm1{%k1}
	vbroadcastf32x4 (%rcx){uint16},%zmm1{%k1}
	vbroadcastf32x4 (%rcx){sint16},%zmm1{%k1}
	vbroadcastf32x4 0x80(%rcx){sint16},%zmm1{%k1}
	vbroadcastss (%rcx){eh},%zmm1{%k1}
	vbroadcastss (%rcx),%zmm1{%k1}
	vbroadcastss (%rcx){float16},%zmm1{%k1}
	vbroadcastss (%rcx){uint8},%zmm1{%k1}
	vbroadcastss (%rcx){sint8},%zmm1{%k1}
	vbroadcastss (%rcx){uint16},%zmm1{%k1}
	vbroadcastss (%rcx){sint16},%zmm1{%k1}
	vbroadcastss 0x80(%rcx){sint16},%zmm1{%k1}

# Tests for op v1{k1}, Uf64(mt)
	vloadunpackhpd (%rcx){eh},%zmm1{%k1}
	vloadunpackhpd (%rcx),%zmm1{%k1}
	vloadunpackhpd (%rcx){8to8},%zmm1{%k1}
	vloadunpackhpd 0x80(%rcx){8to8},%zmm1{%k1}
	vloadunpacklpd (%rcx){eh},%zmm1{%k1}
	vloadunpacklpd (%rcx),%zmm1{%k1}
	vloadunpacklpd (%rcx){8to8},%zmm1{%k1}
	vloadunpacklpd 0x80(%rcx){8to8},%zmm1{%k1}
	vmovapd (%rcx){eh},%zmm1{%k1}
	vmovapd (%rcx),%zmm1{%k1}
	vmovapd (%rcx){8to8},%zmm1{%k1}
	vmovapd 0x80(%rcx){8to8},%zmm1{%k1}

# Tests for op v1{k1}, Uf64(mt) without broadcast
	vbroadcastf64x4 (%rcx){eh},%zmm1{%k1}
	vbroadcastf64x4 0x80(%rcx),%zmm1{%k1}
	vbroadcastf64x4 (%rcx),%zmm1{%k1}
	vbroadcastsd (%rcx){eh},%zmm1{%k1}
	vbroadcastsd 0x80(%rcx),%zmm1{%k1}
	vbroadcastsd (%rcx),%zmm1{%k1}

# Tests for op v1{k1}, Ui32(mt)
	vloadunpackhd (%rcx){eh},%zmm1{%k1}
	vloadunpackhd (%rcx),%zmm1{%k1}
	vloadunpackhd (%rcx){16to16},%zmm1{%k1}
	vloadunpackhd (%rcx){uint8},%zmm1{%k1}
	vloadunpackhd (%rcx){sint8},%zmm1{%k1}
	vloadunpackhd (%rcx){uint16},%zmm1{%k1}
	vloadunpackhd (%rcx){sint16},%zmm1{%k1}
	vloadunpackhd 0x80(%rcx){sint16},%zmm1{%k1}
	vloadunpackld (%rcx){eh},%zmm1{%k1}
	vloadunpackld (%rcx),%zmm1{%k1}
	vloadunpackld (%rcx){16to16},%zmm1{%k1}
	vloadunpackld (%rcx){uint8},%zmm1{%k1}
	vloadunpackld (%rcx){sint8},%zmm1{%k1}
	vloadunpackld (%rcx){uint16},%zmm1{%k1}
	vloadunpackld (%rcx){sint16},%zmm1{%k1}
	vloadunpackld 0x80(%rcx){sint16},%zmm1{%k1}
	vmovdqa32 (%rcx){eh},%zmm1{%k1}
	vmovdqa32 (%rcx),%zmm1{%k1}
	vmovdqa32 (%rcx){16to16},%zmm1{%k1}
	vmovdqa32 (%rcx){uint8},%zmm1{%k1}
	vmovdqa32 (%rcx){sint8},%zmm1{%k1}
	vmovdqa32 (%rcx){uint16},%zmm1{%k1}
	vmovdqa32 (%rcx){sint16},%zmm1{%k1}
	vmovdqa32 0x80(%rcx){sint16},%zmm1{%k1}

# Tests for op v1{k1}, Ui32(mt) without broadcast
	vbroadcasti32x4 (%rcx){eh},%zmm1{%k1}
	vbroadcasti32x4 (%rcx),%zmm1{%k1}
	vbroadcasti32x4 (%rcx){uint8},%zmm1{%k1}
	vbroadcasti32x4 (%rcx){sint8},%zmm1{%k1}
	vbroadcasti32x4 (%rcx){uint16},%zmm1{%k1}
	vbroadcasti32x4 (%rcx){sint16},%zmm1{%k1}
	vbroadcasti32x4 0x80(%rcx){sint16},%zmm1{%k1}
	vpbroadcastd (%rcx){eh},%zmm1{%k1}
	vpbroadcastd (%rcx),%zmm1{%k1}
	vpbroadcastd (%rcx){uint8},%zmm1{%k1}
	vpbroadcastd (%rcx){sint8},%zmm1{%k1}
	vpbroadcastd (%rcx){uint16},%zmm1{%k1}
	vpbroadcastd (%rcx){sint16},%zmm1{%k1}
	vpbroadcastd 0x80(%rcx){sint16},%zmm1{%k1}

# Tests for op v1{k1}, Ui64(mt)
	vloadunpackhq (%rcx){eh},%zmm1{%k1}
	vloadunpackhq (%rcx),%zmm1{%k1}
	vloadunpackhq (%rcx){8to8},%zmm1{%k1}
	vloadunpackhq 0x80(%rcx){8to8},%zmm1{%k1}
	vloadunpacklq (%rcx){eh},%zmm1{%k1}
	vloadunpacklq (%rcx),%zmm1{%k1}
	vloadunpacklq (%rcx){8to8},%zmm1{%k1}
	vloadunpacklq 0x80(%rcx){8to8},%zmm1{%k1}
	vmovdqa64 (%rcx){eh},%zmm1{%k1}
	vmovdqa64 (%rcx),%zmm1{%k1}
	vmovdqa64 (%rcx){8to8},%zmm1{%k1}
	vmovdqa64 0x80(%rcx){8to8},%zmm1{%k1}

# Tests for op v1{k1}, Ui64(mt) without broadcast
	vbroadcasti64x4 (%rcx){eh},%zmm1{%k1}
	vbroadcasti64x4 0x80(%rcx),%zmm1{%k1}
	vbroadcasti64x4 (%rcx),%zmm1{%k1}
	vpbroadcastq (%rcx){eh},%zmm1{%k1}
	vpbroadcastq 0x80(%rcx),%zmm1{%k1}
	vpbroadcastq (%rcx),%zmm1{%k1}

#Test for op v1{k1}, v2, v3mt, offset
	valignd $8,%zmm2,%zmm1,%zmm1{%k1}
	valignd $8,(%rcx),%zmm1,%zmm1{%k1}
	valignd $8,0x80(%rcx),%zmm1,%zmm1{%k1}

#Test for op v1{k1}, v2/mt with SAE
	vexp223ps %zmm2,%zmm1{%k1}
	vexp223ps {sae},%zmm2,%zmm1{%k1}
	vexp223ps (%rcx),%zmm1{%k1}
	vexp223ps (%rcx){eh},%zmm1{%k1}
	vexp223ps 0x80(%rcx),%zmm1{%k1}
	vlog2ps %zmm2,%zmm1{%k1}
	vlog2ps {sae},%zmm2,%zmm1{%k1}
	vlog2ps (%rcx),%zmm1{%k1}
	vlog2ps (%rcx){eh},%zmm1{%k1}
	vlog2ps 0x80(%rcx),%zmm1{%k1}
	vrcp23ps %zmm2,%zmm1{%k1}
	vrcp23ps {sae},%zmm2,%zmm1{%k1}
	vrcp23ps (%rcx),%zmm1{%k1}
	vrcp23ps (%rcx){eh},%zmm1{%k1}
	vrcp23ps 0x80(%rcx),%zmm1{%k1}
	vrsqrt23ps %zmm2,%zmm1{%k1}
	vrsqrt23ps {sae},%zmm2,%zmm1{%k1}
	vrsqrt23ps (%rcx),%zmm1{%k1}
	vrsqrt23ps (%rcx){eh},%zmm1{%k1}
	vrsqrt23ps 0x80(%rcx),%zmm1{%k1}

#Test for op v1{k1}, v2, v3/mt
	vpermd %zmm2,%zmm1,%zmm1{%k1}
	vpermd (%rcx),%zmm1,%zmm1{%k1}
	vpermd 0x80(%rcx),%zmm1,%zmm1{%k1}

# Test for op v1{k1}, v2/mt, imm8
	vpermf32x4 $7,%zmm2,%zmm1{%k1}
	vpermf32x4 $7,(%rcx){eh},%zmm1{%k1}
	vpermf32x4 $7,0x80(%rcx),%zmm1{%k1}
	vpshufd $7,%zmm2,%zmm1{%k1}
	vpshufd $7,(%rcx){eh},%zmm1{%k1}
	vpshufd $7,0x80(%rcx),%zmm1{%k1}

# Tests for op mt{k1}, Df32(v1)
	vpackstorehps %zmm1,(%rcx){eh}{%k1}
	vpackstorehps %zmm1,(%rcx){%k1}
	vpackstorehps %zmm1{float16},(%rcx){%k1}
	vpackstorehps %zmm1{uint8},(%rcx){%k1}
	vpackstorehps %zmm1{sint8},(%rcx){%k1}
	vpackstorehps %zmm1{uint16},(%rcx){%k1}
	vpackstorehps %zmm1{sint16},(%rcx){%k1}
	vpackstorehps %zmm1{sint16},0x80(%rcx)
	vpackstorelps %zmm1,(%rcx){eh}{%k1}
	vpackstorelps %zmm1,(%rcx){%k1}
	vpackstorelps %zmm1{float16},(%rcx){%k1}
	vpackstorelps %zmm1{uint8},(%rcx){%k1}
	vpackstorelps %zmm1{sint8},(%rcx){%k1}
	vpackstorelps %zmm1{uint16},(%rcx){%k1}
	vpackstorelps %zmm1{sint16},(%rcx){%k1}
	vpackstorelps %zmm1{sint16},0x80(%rcx)
	vmovaps %zmm1,(%rcx){eh}{%k1}
	vmovaps %zmm1,(%rcx){%k1}
	vmovaps %zmm1{float16},(%rcx){%k1}
	vmovaps %zmm1{uint8},(%rcx){%k1}
	vmovaps %zmm1{sint8},(%rcx){%k1}
	vmovaps %zmm1{uint16},(%rcx){%k1}
	vmovaps %zmm1{sint16},(%rcx){%k1}
	vmovaps %zmm1{sint16},0x80(%rcx)

# Tests for op mt{k1}, Df32(v1); No EH
	vmovnraps %zmm1,(%rcx){%k1}
	vmovnraps %zmm1{float16},(%rcx){%k1}
	vmovnraps %zmm1{uint8},(%rcx){%k1}
	vmovnraps %zmm1{sint8},(%rcx){%k1}
	vmovnraps %zmm1{uint16},(%rcx){%k1}
	vmovnraps %zmm1{sint16},(%rcx){%k1}
	vmovnraps %zmm1{sint16},0x80(%rcx)
	vmovnrngoaps %zmm1,(%rcx){%k1}
	vmovnrngoaps %zmm1{float16},(%rcx){%k1}
	vmovnrngoaps %zmm1{uint8},(%rcx){%k1}
	vmovnrngoaps %zmm1{sint8},(%rcx){%k1}
	vmovnrngoaps %zmm1{uint16},(%rcx){%k1}
	vmovnrngoaps %zmm1{sint16},(%rcx){%k1}
	vmovnrngoaps %zmm1{sint16},0x80(%rcx)

# Tests for op mt{k1}, Df64(v1)
	vpackstorehpd %zmm1,(%rcx){eh}{%k1}
	vpackstorehpd %zmm1,0x80(%rcx)
	vpackstorehpd %zmm1,(%rcx){%k1}
	vpackstorelpd %zmm1,(%rcx){eh}{%k1}
	vpackstorelpd %zmm1,0x80(%rcx)
	vpackstorelpd %zmm1,(%rcx){%k1}
	vmovapd %zmm1,(%rcx){eh}{%k1}
	vmovapd %zmm1,0x80(%rcx)
	vmovapd %zmm1,(%rcx){%k1}

# Tests for op mt{k1}, Df64(v1), no EH
	vmovnrapd %zmm1,0x80(%rcx)
	vmovnrapd %zmm1,(%rcx){%k1}
	vmovnrngoapd %zmm1,0x80(%rcx)
	vmovnrngoapd %zmm1,(%rcx){%k1}

# Tests for op mt{k1}, Di32(v1)
	vpackstorehd %zmm1,(%rcx){eh}{%k1}
	vpackstorehd %zmm1,(%rcx){%k1}
	vpackstorehd %zmm1{uint8},(%rcx){%k1}
	vpackstorehd %zmm1{sint8},(%rcx){%k1}
	vpackstorehd %zmm1{uint16},(%rcx){%k1}
	vpackstorehd %zmm1{sint16},(%rcx){%k1}
	vpackstorehd %zmm1{sint16},0x80(%rcx)
	vpackstoreld %zmm1,(%rcx){eh}{%k1}
	vpackstoreld %zmm1,(%rcx){%k1}
	vpackstoreld %zmm1{uint8},(%rcx){%k1}
	vpackstoreld %zmm1{sint8},(%rcx){%k1}
	vpackstoreld %zmm1{uint16},(%rcx){%k1}
	vpackstoreld %zmm1{sint16},(%rcx){%k1}
	vpackstoreld %zmm1{sint16},0x80(%rcx)
	vmovdqa32 %zmm1,(%rcx){eh}{%k1}
	vmovdqa32 %zmm1,(%rcx){%k1}
	vmovdqa32 %zmm1{uint8},(%rcx){%k1}
	vmovdqa32 %zmm1{sint8},(%rcx){%k1}
	vmovdqa32 %zmm1{uint16},(%rcx){%k1}
	vmovdqa32 %zmm1{sint16},(%rcx){%k1}
	vmovdqa32 %zmm1{sint16},0x80(%rcx)

# Tests for op mt{k1}, Di64(v1)
	vpackstorehq %zmm1,(%rcx){eh}{%k1}
	vpackstorehq %zmm1,0x80(%rcx)
	vpackstorehq %zmm1,(%rcx){%k1}
	vpackstorelq %zmm1,(%rcx){eh}{%k1}
	vpackstorelq %zmm1,0x80(%rcx)
	vpackstorelq %zmm1,(%rcx){%k1}
	vmovdqa64 %zmm1,(%rcx){eh}{%k1}
	vmovdqa64 %zmm1,0x80(%rcx)
	vmovdqa64 %zmm1,(%rcx){%k1}

# Tests for op v1{k1}, v2
	vmovapd %zmm2,%zmm1{%k1}
	vmovapd %zmm2{dcba},%zmm1{%k1}
	vmovapd %zmm2{cdab},%zmm1{%k1}
	vmovapd %zmm2{badc},%zmm1{%k1}
	vmovapd %zmm2{aaaa},%zmm1{%k1}
	vmovapd %zmm2{bbbb},%zmm1{%k1}
	vmovapd %zmm2{cccc},%zmm1{%k1}
	vmovapd %zmm2{dddd},%zmm1{%k1}
	vmovapd %zmm2{dacb},%zmm1{%k1}
	vmovapd %zmm2{eh},%zmm1{%k1}
	vmovapd %zmm2{dcba}{eh},%zmm1{%k1}
	vmovaps %zmm2,%zmm1{%k1}
	vmovaps %zmm2{dcba},%zmm1{%k1}
	vmovaps %zmm2{cdab},%zmm1{%k1}
	vmovaps %zmm2{badc},%zmm1{%k1}
	vmovaps %zmm2{aaaa},%zmm1{%k1}
	vmovaps %zmm2{bbbb},%zmm1{%k1}
	vmovaps %zmm2{cccc},%zmm1{%k1}
	vmovaps %zmm2{dddd},%zmm1{%k1}
	vmovaps %zmm2{dacb},%zmm1{%k1}
	vmovaps %zmm2{eh},%zmm1{%k1}
	vmovaps %zmm2{dcba}{eh},%zmm1{%k1}
	vmovdqa32 %zmm2,%zmm1{%k1}
	vmovdqa32 %zmm2{dcba},%zmm1{%k1}
	vmovdqa32 %zmm2{cdab},%zmm1{%k1}
	vmovdqa32 %zmm2{badc},%zmm1{%k1}
	vmovdqa32 %zmm2{aaaa},%zmm1{%k1}
	vmovdqa32 %zmm2{bbbb},%zmm1{%k1}
	vmovdqa32 %zmm2{cccc},%zmm1{%k1}
	vmovdqa32 %zmm2{dddd},%zmm1{%k1}
	vmovdqa32 %zmm2{dacb},%zmm1{%k1}
	vmovdqa32 %zmm2{eh},%zmm1{%k1}
	vmovdqa32 %zmm2{dcba}{eh},%zmm1{%k1}
	vmovdqa64 %zmm2,%zmm1{%k1}
	vmovdqa64 %zmm2{dcba},%zmm1{%k1}
	vmovdqa64 %zmm2{cdab},%zmm1{%k1}
	vmovdqa64 %zmm2{badc},%zmm1{%k1}
	vmovdqa64 %zmm2{aaaa},%zmm1{%k1}
	vmovdqa64 %zmm2{bbbb},%zmm1{%k1}
	vmovdqa64 %zmm2{cccc},%zmm1{%k1}
	vmovdqa64 %zmm2{dddd},%zmm1{%k1}
	vmovdqa64 %zmm2{dacb},%zmm1{%k1}
	vmovdqa64 %zmm2{eh},%zmm1{%k1}
	vmovdqa64 %zmm2{dcba}{eh},%zmm1{%k1}

# Tests for op mvt{k1}, Di32(v1)
	vpscatterdd %zmm1,0x99(%rbp, %zmm10, 2){eh}{%k1}
	vpscatterdd %zmm1,0x99(%rbp, %zmm10, 2){%k1}
	vpscatterdd %zmm1{uint8},0x99(%rbp, %zmm10, 2){%k1}
	vpscatterdd %zmm1{sint8},0x99(%rbp, %zmm10, 2){%k1}
	vpscatterdd %zmm1{uint16},0x99(%rbp, %zmm10, 2){%k1}
	vpscatterdd %zmm1{sint16},0x99(%rbp, %zmm10, 2){%k1}
	vpscatterdd %zmm1{sint16},0x80(%rdx, %zmm10, 2){%k1}

# Tests for op mvt{k1}, Df32(v1)
	vscatterdps %zmm1,0x99(%rbp, %zmm10, 2){eh}{%k1}
	vscatterdps %zmm1,0x99(%rbp, %zmm10, 2){%k1}
	vscatterdps %zmm1{float16},0x99(%rbp, %zmm10, 2){%k1}
	vscatterdps %zmm1{uint8},0x99(%rbp, %zmm10, 2){%k1}
	vscatterdps %zmm1{sint8},0x99(%rbp, %zmm10, 2){%k1}
	vscatterdps %zmm1{uint16},0x99(%rbp, %zmm10, 2){%k1}
	vscatterdps %zmm1{sint16},0x99(%rbp, %zmm10, 2){%k1}
	vscatterdps %zmm1{sint16},0x80(%rdx, %zmm10, 2){%k1}

# Tests for op Uf32(mvt){k1}
	vgatherpf0dps 0x99(%rbp, %zmm10, 2){eh}{%k1}
	vgatherpf0dps 0x99(%rbp, %zmm10, 2){%k2}
	vgatherpf0dps 0x99(%rbp, %zmm10, 2){float16}{%k2}
	vgatherpf0dps 0x99(%rbp, %zmm10, 2){uint8}{%k2}
	vgatherpf0dps 0x99(%rbp, %zmm10, 2){sint8}{%k2}
	vgatherpf0dps 0x99(%rbp, %zmm10, 2){uint16}{%k2}
	vgatherpf0dps 0x99(%rbp, %zmm10, 2){sint16}{%k2}
	vgatherpf0dps 0x80(%rdx, %zmm10, 2){sint16}{%k1}
	vgatherpf0hintdps 0x99(%rbp, %zmm10, 2){eh}{%k1}
	vgatherpf0hintdps 0x99(%rbp, %zmm10, 2){%k2}
	vgatherpf0hintdps 0x99(%rbp, %zmm10, 2){float16}{%k2}
	vgatherpf0hintdps 0x99(%rbp, %zmm10, 2){uint8}{%k2}
	vgatherpf0hintdps 0x99(%rbp, %zmm10, 2){sint8}{%k2}
	vgatherpf0hintdps 0x99(%rbp, %zmm10, 2){uint16}{%k2}
	vgatherpf0hintdps 0x99(%rbp, %zmm10, 2){sint16}{%k2}
	vgatherpf0hintdps 0x80(%rdx, %zmm10, 2){sint16}{%k1}
	vgatherpf1dps 0x99(%rbp, %zmm10, 2){eh}{%k1}
	vgatherpf1dps 0x99(%rbp, %zmm10, 2){%k2}
	vgatherpf1dps 0x99(%rbp, %zmm10, 2){float16}{%k2}
	vgatherpf1dps 0x99(%rbp, %zmm10, 2){uint8}{%k2}
	vgatherpf1dps 0x99(%rbp, %zmm10, 2){sint8}{%k2}
	vgatherpf1dps 0x99(%rbp, %zmm10, 2){uint16}{%k2}
	vgatherpf1dps 0x99(%rbp, %zmm10, 2){sint16}{%k2}
	vgatherpf1dps 0x80(%rdx, %zmm10, 2){sint16}{%k1}
	vscatterpf0dps 0x99(%rbp, %zmm10, 2){eh}{%k1}
	vscatterpf0dps 0x99(%rbp, %zmm10, 2){%k2}
	vscatterpf0dps 0x99(%rbp, %zmm10, 2){float16}{%k2}
	vscatterpf0dps 0x99(%rbp, %zmm10, 2){uint8}{%k2}
	vscatterpf0dps 0x99(%rbp, %zmm10, 2){sint8}{%k2}
	vscatterpf0dps 0x99(%rbp, %zmm10, 2){uint16}{%k2}
	vscatterpf0dps 0x99(%rbp, %zmm10, 2){sint16}{%k2}
	vscatterpf0dps 0x80(%rdx, %zmm10, 2){sint16}{%k1}
	vscatterpf0hintdps 0x99(%rbp, %zmm10, 2){eh}{%k1}
	vscatterpf0hintdps 0x99(%rbp, %zmm10, 2){%k2}
	vscatterpf0hintdps 0x99(%rbp, %zmm10, 2){float16}{%k2}
	vscatterpf0hintdps 0x99(%rbp, %zmm10, 2){uint8}{%k2}
	vscatterpf0hintdps 0x99(%rbp, %zmm10, 2){sint8}{%k2}
	vscatterpf0hintdps 0x99(%rbp, %zmm10, 2){uint16}{%k2}
	vscatterpf0hintdps 0x99(%rbp, %zmm10, 2){sint16}{%k2}
	vscatterpf0hintdps 0x80(%rdx, %zmm10, 2){sint16}{%k1}
	vscatterpf1dps 0x99(%rbp, %zmm10, 2){eh}{%k1}
	vscatterpf1dps 0x99(%rbp, %zmm10, 2){%k2}
	vscatterpf1dps 0x99(%rbp, %zmm10, 2){float16}{%k2}
	vscatterpf1dps 0x99(%rbp, %zmm10, 2){uint8}{%k2}
	vscatterpf1dps 0x99(%rbp, %zmm10, 2){sint8}{%k2}
	vscatterpf1dps 0x99(%rbp, %zmm10, 2){uint16}{%k2}
	vscatterpf1dps 0x99(%rbp, %zmm10, 2){sint16}{%k2}
	vscatterpf1dps 0x80(%rdx, %zmm10, 2){sint16}{%k1}

# Tests for op Uf64(mvt){k1}
	vgatherpf0hintdpd 0x99(%rbp, %zmm10, 2){eh}{%k1}
	vgatherpf0hintdpd 0x80(%rdx, %zmm10, 2){%k1}
	vscatterpf0hintdpd 0x99(%rbp, %zmm10, 2){eh}{%k1}
	vscatterpf0hintdpd 0x80(%rdx, %zmm10, 2){%k1}

#Test for op v1{k1}, Uf32(mvt)
	vgatherdps 0x99(%rbp, %zmm10, 2){eh},%zmm1{%k1}
	vgatherdps 0x99(%rbp, %zmm10, 2),%zmm1{%k1}
	vgatherdps 0x99(%rbp, %zmm10, 2){float16},%zmm1{%k1}
	vgatherdps 0x99(%rbp, %zmm10, 2){uint8},%zmm1{%k1}
	vgatherdps 0x99(%rbp, %zmm10, 2){sint8},%zmm1{%k1}
	vgatherdps 0x99(%rbp, %zmm10, 2){uint16},%zmm1{%k1}
	vgatherdps 0x99(%rbp, %zmm10, 2){sint16},%zmm1{%k1}
	vgatherdps 0x80(%rdx, %zmm10, 2),%zmm1{%k1}
	vgatherdps 0x99(%rbp, %zmm10, 2),%zmm1{%k1}

#Test for op v1{k1}, Uf64(mvt)
	vgatherdpd 0x99(%rbp, %zmm10, 2){eh},%zmm1{%k1}
	vgatherdpd 0x80(%rdx, %zmm10, 2),%zmm1{%k1}
	vgatherdpd 0x99(%rbp, %zmm10, 2),%zmm1{%k1}

#Test for op v1{k1}, Ui32(mvt)
	vpgatherdd 0x99(%rbp, %zmm10, 2){eh},%zmm1{%k1}
	vpgatherdd 0x99(%rbp, %zmm10, 2),%zmm1{%k1}
	vpgatherdd 0x99(%rbp, %zmm10, 2){uint8},%zmm1{%k1}
	vpgatherdd 0x99(%rbp, %zmm10, 2){sint8},%zmm1{%k1}
	vpgatherdd 0x99(%rbp, %zmm10, 2){uint16},%zmm1{%k1}
	vpgatherdd 0x99(%rbp, %zmm10, 2){sint16},%zmm1{%k1}
	vpgatherdd 0x80(%rdx, %zmm10, 2),%zmm1{%k1}
	vpgatherdd 0x99(%rbp, %zmm10, 2),%zmm1{%k1}

#Test for op v1{k1}, Ui64(mvt)
	vpgatherdq 0x99(%rbp, %zmm10, 2){eh},%zmm1{%k1}
	vpgatherdq 0x80(%rdx, %zmm10, 2),%zmm1{%k1}
	vpgatherdq 0x99(%rbp, %zmm10, 2),%zmm1{%k1}

#Test for op mvt{k1}, dq(v1)
	vpscatterdq %zmm1,0x99(%rbp, %zmm10, 2){eh}{%k1}
	vpscatterdq %zmm1,0x80(%rdx, %zmm10, 2){%k1}
	vpscatterdq %zmm1,0x99(%rbp, %zmm10, 2){%k1}

# Test for op r32, r32
	lzcnt %eax,%ebx
	lzcnt %r9d,%r15d
	popcnt %eax,%ebx
	popcnt %r9d,%r15d
	tzcnt %eax,%ebx
	tzcnt %r9d,%r15d
	tzcnti %eax,%ebx
	tzcnti %r9d,%r15d

# Test for op r64, r64
	lzcnt %rax,%rbx
	lzcnt %r9,%r15
	popcnt %rax,%rbx
	popcnt %r9,%r15
	tzcnt %rax,%rbx
	tzcnt %r9,%r15
	tzcnti %rax,%rbx
	tzcnti %r9,%r15

# Test for op m8
	clevict0 (%rcx)
	clevict0 0x80(%rcx)
	clevict1 (%rcx)
	clevict1 0x80(%rcx)
	vprefetch0 (%rcx)
	vprefetch0 0x80(%rcx)
	vprefetch1 (%rcx)
	vprefetch1 0x80(%rcx)
	vprefetch2 (%rcx)
	vprefetch2 0x80(%rcx)
	vprefetche0 (%rcx)
	vprefetche0 0x80(%rcx)
	vprefetche1 (%rcx)
	vprefetche1 0x80(%rcx)
	vprefetche2 (%rcx)
	vprefetche2 0x80(%rcx)
	vprefetchenta (%rcx)
	vprefetchenta 0x80(%rcx)
	vprefetchnta (%rcx)
	vprefetchnta 0x80(%rcx)

# Test for op r32
	delay %eax
	delay %r9d
	spflt %eax
	spflt %r9d

# Test for op r64
	delay %rax
	delay %r9
	spflt %rax
	spflt %r9

# Generate test cases for different operands forms
	vpandd %zmm30{cdab},%zmm20,%zmm20{%k1}
	vpandd %zmm30{cdab},%zmm20,%zmm30{%k1}
	vpandd %zmm30{cdab},%zmm30,%zmm30{%k1}
	vpandd %zmm30{cdab},%zmm30,%zmm20{%k1}
	vpandd %zmm30{cdab},%zmm10,%zmm20{%k1}
	vpslld $7,(%rcx),%zmm20{%k1}
	vpslld $7,%zmm30,%zmm20{%k1}
	vpadcd 0x12345678,%k2,%zmm10{%k1}
	vpadcd 0x12345678,%k2,%zmm20{%k1}
	vpadcd (%rbp),%k2,%zmm10{%k1}
	vpadcd (%rbp),%k2,%zmm20{%k1}
	vpadcd (%rsp),%k2,%zmm10{%k1}
	vpadcd (%rsp),%k2,%zmm20{%k1}
	vpadcd 0x99(%rbp),%k2,%zmm10{%k1}
	vpadcd 0x99(%rbp),%k2,%zmm20{%k1}
	vpadcd 0x99(%r15),%k2,%zmm10{%k1}
	vpadcd 0x99(%r15),%k2,%zmm20{%k1}
	vpadcd 0x99(%rip),%k2,%zmm10{%k1}
	vpadcd 0x99(%rip),%k2,%zmm20{%k1}
	vpadcd 0x99(%rsp),%k2,%zmm10{%k1}
	vpadcd 0x99(%rsp),%k2,%zmm20{%k1}
	vpadcd 0x99(%r12),%k2,%zmm10{%k1}
	vpadcd 0x99(%r12),%k2,%zmm20{%k1}
	vpadcd -0x99(,%riz),%k2,%zmm10{%k1}
	vpadcd -0x99(,%riz),%k2,%zmm20{%k1}
	vpadcd -0x99(,%riz,2),%k2,%zmm10{%k1}
	vpadcd -0x99(,%riz,2),%k2,%zmm20{%k1}
	vpadcd -0x99(%rbx,%riz),%k2,%zmm10{%k1}
	vpadcd -0x99(%rbx,%riz),%k2,%zmm20{%k1}
	vpadcd -0x99(%rbx,%riz,2),%k2,%zmm10{%k1}
	vpadcd -0x99(%rbx,%riz,2),%k2,%zmm20{%k1}
	vpadcd -0x99(%r12,%r15,4),%k2,%zmm10{%k1}
	vpadcd -0x99(%r12,%r15,4),%k2,%zmm20{%k1}
	vpadcd -0x99(%r8,%r15,8),%k2,%zmm10{%k1}
	vpadcd -0x99(%r8,%r15,8),%k2,%zmm20{%k1}
	vpadcd -0x99(%rbp,%r13,4),%k2,%zmm10{%k1}
	vpadcd -0x99(%rbp,%r13,4),%k2,%zmm20{%k1}
	vpadcd -0x99(%rsp,%r12,1),%k2,%zmm10{%k1}
	vpadcd -0x99(%rsp,%r12,1),%k2,%zmm20{%k1}
	vgatherdps (,%zmm1),%zmm10{%k1}
	vgatherdps (,%zmm1),%zmm20{%k1}
	vgatherdps (,%zmm10),%zmm10{%k1}
	vgatherdps (,%zmm10),%zmm20{%k1}
	vgatherdps (,%zmm1,2),%zmm10{%k1}
	vgatherdps (,%zmm1,2),%zmm20{%k1}
	vgatherdps (,%zmm10,2),%zmm10{%k1}
	vgatherdps (,%zmm10,2),%zmm20{%k1}
	vgatherdps -0x99(,%zmm1),%zmm10{%k1}
	vgatherdps -0x99(,%zmm1),%zmm20{%k1}
	vgatherdps -0x9(,%zmm10),%zmm10{%k1}
	vgatherdps -0x9(,%zmm10),%zmm20{%k1}
	vgatherdps 0x99(,%zmm1,2),%zmm10{%k1}
	vgatherdps 0x99(,%zmm1,2),%zmm20{%k1}
	vgatherdps 0x9(,%zmm10,2),%zmm10{%k1}
	vgatherdps 0x9(,%zmm10,2),%zmm20{%k1}
	vgatherdps (%rbx,%zmm1),%zmm10{%k1}
	vgatherdps (%rbx,%zmm1),%zmm20{%k1}
	vgatherdps (%rbx,%zmm10),%zmm10{%k1}
	vgatherdps (%rbx,%zmm10),%zmm20{%k1}
	vgatherdps -0x99(%rbx,%zmm1),%zmm10{%k1}
	vgatherdps -0x99(%rbx,%zmm1),%zmm20{%k1}
	vgatherdps -0x9(%rbx,%zmm10),%zmm10{%k1}
	vgatherdps -0x9(%rbx,%zmm10),%zmm20{%k1}
	vgatherdps -0x99(%rbx,%zmm1,2),%zmm10{%k1}
	vgatherdps -0x99(%rbx,%zmm1,2),%zmm20{%k1}
	vgatherdps -0x9(%rbx,%zmm10,2),%zmm10{%k1}
	vgatherdps -0x9(%rbx,%zmm10,2),%zmm20{%k1}
	vgatherdps 0x99(%r12,%zmm1,4),%zmm10{%k1}
	vgatherdps 0x99(%r12,%zmm1,4),%zmm20{%k1}
	vgatherdps 0x9(%r12,%zmm10,4),%zmm10{%k1}
	vgatherdps 0x9(%r12,%zmm10,4),%zmm20{%k1}
	vgatherdps -0x99(%r13,%zmm30,4),%zmm10{%k1}
	vgatherdps -0x99(%r13,%zmm30,4),%zmm20{%k1}
	vpadcd 0x1234,%k2,%zmm10{%k1}
	vpadcd 0x1234,%k2,%zmm20{%k1}
	vpadcd (%ebp),%k2,%zmm10{%k1}
	vpadcd (%ebp),%k2,%zmm20{%k1}
	vpadcd (%esp),%k2,%zmm10{%k1}
	vpadcd (%esp),%k2,%zmm20{%k1}
	vpadcd 0x99(%ebp),%k2,%zmm10{%k1}
	vpadcd 0x99(%ebp),%k2,%zmm20{%k1}
	vpadcd 0x99(,%eiz),%k2,%zmm10{%k1}
	vpadcd 0x99(,%eiz),%k2,%zmm20{%k1}
	vpadcd 0x99(,%eiz,2),%k2,%zmm10{%k1}
	vpadcd 0x99(,%eiz,2),%k2,%zmm20{%k1}
	vpadcd 0x99(%eax,%eiz),%k2,%zmm10{%k1}
	vpadcd 0x99(%eax,%eiz),%k2,%zmm20{%k1}
	vpadcd 0x99(%eax,%eiz,2),%k2,%zmm10{%k1}
	vpadcd 0x99(%eax,%eiz,2),%k2,%zmm20{%k1}
	vpadcd 0x99(%eax,%ebx,4),%k2,%zmm10{%k1}
	vpadcd 0x99(%eax,%ebx,4),%k2,%zmm20{%k1}
	vpadcd 0x99(%esp,%ecx,8),%k2,%zmm10{%k1}
	vpadcd 0x99(%esp,%ecx,8),%k2,%zmm20{%k1}
	vpadcd 0x99(%ebp,%edx,1),%k2,%zmm10{%k1}
	vpadcd 0x99(%ebp,%edx,1),%k2,%zmm20{%k1}
	vgatherdps (,%zmm1),%zmm10{%k1}
	vgatherdps (,%zmm1),%zmm20{%k1}
	vgatherdps (,%zmm10),%zmm10{%k1}
	vgatherdps (,%zmm10),%zmm20{%k1}
	vgatherdps (,%zmm1,2),%zmm10{%k1}
	vgatherdps (,%zmm1,2),%zmm20{%k1}
	vgatherdps (,%zmm10,2),%zmm10{%k1}
	vgatherdps (,%zmm10,2),%zmm20{%k1}
	vgatherdps -0x99(,%zmm1),%zmm10{%k1}
	vgatherdps -0x99(,%zmm1),%zmm20{%k1}
	vgatherdps -0x9(,%zmm10),%zmm10{%k1}
	vgatherdps -0x9(,%zmm10),%zmm20{%k1}
	vgatherdps 0x99(,%zmm1,2),%zmm10{%k1}
	vgatherdps 0x99(,%zmm1,2),%zmm20{%k1}
	vgatherdps 0x9(,%zmm10,2),%zmm10{%k1}
	vgatherdps 0x9(,%zmm10,2),%zmm20{%k1}
	vgatherdps (%eax,%zmm1),%zmm10{%k1}
	vgatherdps (%eax,%zmm1),%zmm20{%k1}
	vgatherdps (%eax,%zmm10),%zmm10{%k1}
	vgatherdps (%eax,%zmm10),%zmm20{%k1}
	vgatherdps 0x99(%eax,%zmm1,1),%zmm10{%k1}
	vgatherdps 0x99(%eax,%zmm1,1),%zmm20{%k1}
	vgatherdps 0x9(%eax,%zmm7,1),%zmm10{%k1}
	vgatherdps 0x9(%eax,%zmm7,1),%zmm20{%k1}
	vgatherdps -0x99(%eax,%zmm1,2),%zmm10{%k1}
	vgatherdps -0x99(%eax,%zmm1,2),%zmm20{%k1}
	vgatherdps -0x9(%eax,%zmm7,2),%zmm10{%k1}
	vgatherdps -0x9(%eax,%zmm7,2),%zmm20{%k1}
	vgatherdps 0x99(%ebp,%zmm1,4),%zmm10{%k1}
	vgatherdps 0x99(%ebp,%zmm1,4),%zmm20{%k1}
	vgatherdps 0x9(%ebp,%zmm7,4),%zmm10{%k1}
	vgatherdps 0x9(%ebp,%zmm7,4),%zmm20{%k1}

	.intel_syntax noprefix

# Tests for op k1, k2
	kand k2,k1
	kandn k2,k1
	kandnr k2,k1
	kmerge2l1h k2,k1
	kmerge2l1l k2,k1
	kmov k2,k1
	knot k2,k1
	kor k2,k1
	kortest k2,k1
	kxnor k2,k1
	kxor k2,k1

# Tests for op r32, k2
	kmov k2,eax
	kmov k2,r9d

# Tests for op k1, r32
	kmov eax,k1
	kmov r9d,k1

#Test for op r64, k1, k2
	kconcath rax,k1,k2
	kconcath r9,k1,k2
	kconcatl rax,k1,k2
	kconcatl r9,k1,k2

#Test for op k1, r64, imm3
	kextract k1,rbx,2
	kextract k1,r15,2

# Tests for op v1{k1}, k2, si(v3/mt)
	vpadcd zmm1{k1},k2,zmm3
	vpadcd zmm1{k1},k2,zmm3{dcba}
	vpadcd zmm1{k1},k2,zmm3{cdab}
	vpadcd zmm1{k1},k2,zmm3{badc}
	vpadcd zmm1{k1},k2,zmm3{aaaa}
	vpadcd zmm1{k1},k2,zmm3{bbbb}
	vpadcd zmm1{k1},k2,zmm3{cccc}
	vpadcd zmm1{k1},k2,zmm3{dddd}
	vpadcd zmm1{k1},k2,zmm3{dacb}
	vpadcd zmm1{k1},k2,zmm3{eh}
	vpadcd zmm1{k1},k2,zmm3{dcba}{eh}
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx]{eh}
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx]
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx]{16to16}
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx]{1to16}
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx]{4to16}
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint8}
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint8}
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint16}
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint16}
	vpadcd zmm1{k1},k2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpadcd zmm1{k1},k2,[rcx]{sint16}
	vpaddsetcd zmm1{k1},k2,zmm3
	vpaddsetcd zmm1{k1},k2,zmm3{dcba}
	vpaddsetcd zmm1{k1},k2,zmm3{cdab}
	vpaddsetcd zmm1{k1},k2,zmm3{badc}
	vpaddsetcd zmm1{k1},k2,zmm3{aaaa}
	vpaddsetcd zmm1{k1},k2,zmm3{bbbb}
	vpaddsetcd zmm1{k1},k2,zmm3{cccc}
	vpaddsetcd zmm1{k1},k2,zmm3{dddd}
	vpaddsetcd zmm1{k1},k2,zmm3{dacb}
	vpaddsetcd zmm1{k1},k2,zmm3{eh}
	vpaddsetcd zmm1{k1},k2,zmm3{dcba}{eh}
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx]{eh}
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx]
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx]{16to16}
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx]{1to16}
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx]{4to16}
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint8}
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint8}
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint16}
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint16}
	vpaddsetcd zmm1{k1},k2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpaddsetcd zmm1{k1},k2,[rcx]{sint16}
	vpsbbd zmm1{k1},k2,zmm3
	vpsbbd zmm1{k1},k2,zmm3{dcba}
	vpsbbd zmm1{k1},k2,zmm3{cdab}
	vpsbbd zmm1{k1},k2,zmm3{badc}
	vpsbbd zmm1{k1},k2,zmm3{aaaa}
	vpsbbd zmm1{k1},k2,zmm3{bbbb}
	vpsbbd zmm1{k1},k2,zmm3{cccc}
	vpsbbd zmm1{k1},k2,zmm3{dddd}
	vpsbbd zmm1{k1},k2,zmm3{dacb}
	vpsbbd zmm1{k1},k2,zmm3{eh}
	vpsbbd zmm1{k1},k2,zmm3{dcba}{eh}
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx]{eh}
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx]
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx]{16to16}
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx]{1to16}
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx]{4to16}
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint8}
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint8}
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint16}
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint16}
	vpsbbd zmm1{k1},k2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpsbbd zmm1{k1},k2,[rcx]{sint16}
	vpsbbrd zmm1{k1},k2,zmm3
	vpsbbrd zmm1{k1},k2,zmm3{dcba}
	vpsbbrd zmm1{k1},k2,zmm3{cdab}
	vpsbbrd zmm1{k1},k2,zmm3{badc}
	vpsbbrd zmm1{k1},k2,zmm3{aaaa}
	vpsbbrd zmm1{k1},k2,zmm3{bbbb}
	vpsbbrd zmm1{k1},k2,zmm3{cccc}
	vpsbbrd zmm1{k1},k2,zmm3{dddd}
	vpsbbrd zmm1{k1},k2,zmm3{dacb}
	vpsbbrd zmm1{k1},k2,zmm3{eh}
	vpsbbrd zmm1{k1},k2,zmm3{dcba}{eh}
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx]{eh}
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx]
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx]{16to16}
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx]{1to16}
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx]{4to16}
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint8}
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint8}
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint16}
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint16}
	vpsbbrd zmm1{k1},k2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpsbbrd zmm1{k1},k2,[rcx]{sint16}
	vpsubrsetbd zmm1{k1},k2,zmm3
	vpsubrsetbd zmm1{k1},k2,zmm3{dcba}
	vpsubrsetbd zmm1{k1},k2,zmm3{cdab}
	vpsubrsetbd zmm1{k1},k2,zmm3{badc}
	vpsubrsetbd zmm1{k1},k2,zmm3{aaaa}
	vpsubrsetbd zmm1{k1},k2,zmm3{bbbb}
	vpsubrsetbd zmm1{k1},k2,zmm3{cccc}
	vpsubrsetbd zmm1{k1},k2,zmm3{dddd}
	vpsubrsetbd zmm1{k1},k2,zmm3{dacb}
	vpsubrsetbd zmm1{k1},k2,zmm3{eh}
	vpsubrsetbd zmm1{k1},k2,zmm3{dcba}{eh}
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{eh}
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{16to16}
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{1to16}
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{4to16}
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint8}
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint8}
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint16}
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint16}
	vpsubrsetbd zmm1{k1},k2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpsubrsetbd zmm1{k1},k2,[rcx]{sint16}
	vpsubsetbd zmm1{k1},k2,zmm3
	vpsubsetbd zmm1{k1},k2,zmm3{dcba}
	vpsubsetbd zmm1{k1},k2,zmm3{cdab}
	vpsubsetbd zmm1{k1},k2,zmm3{badc}
	vpsubsetbd zmm1{k1},k2,zmm3{aaaa}
	vpsubsetbd zmm1{k1},k2,zmm3{bbbb}
	vpsubsetbd zmm1{k1},k2,zmm3{cccc}
	vpsubsetbd zmm1{k1},k2,zmm3{dddd}
	vpsubsetbd zmm1{k1},k2,zmm3{dacb}
	vpsubsetbd zmm1{k1},k2,zmm3{eh}
	vpsubsetbd zmm1{k1},k2,zmm3{dcba}{eh}
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{eh}
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{16to16}
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{1to16}
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{4to16}
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint8}
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint8}
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{uint16}
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx]{sint16}
	vpsubsetbd zmm1{k1},k2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpsubsetbd zmm1{k1},k2,[rcx]{sint16}

# Tests for op v1{k1}, v2, sf(v3/mt) with rounding
	vaddnps zmm1{k1},zmm2,zmm3
	vaddnps zmm1{k1},zmm2,zmm3{dcba}
	vaddnps zmm1{k1},zmm2,zmm3{cdab}
	vaddnps zmm1{k1},zmm2,zmm3{badc}
	vaddnps zmm1{k1},zmm2,zmm3{aaaa}
	vaddnps zmm1{k1},zmm2,zmm3{bbbb}
	vaddnps zmm1{k1},zmm2,zmm3{cccc}
	vaddnps zmm1{k1},zmm2,zmm3{dddd}
	vaddnps zmm1{k1},zmm2,zmm3{dacb}
	vaddnps zmm1{k1},zmm2,zmm3,{rn}
	vaddnps zmm1{k1},zmm2,zmm3,{rd}
	vaddnps zmm1{k1},zmm2,zmm3,{ru}
	vaddnps zmm1{k1},zmm2,zmm3,{rz}
	vaddnps zmm1{k1},zmm2,zmm3,{sae}
	vaddnps zmm1{k1},zmm2,zmm3,{rn-sae}
	vaddnps zmm1{k1},zmm2,zmm3,{rd-sae}
	vaddnps zmm1{k1},zmm2,zmm3,{ru-sae}
	vaddnps zmm1{k1},zmm2,zmm3,{rz-sae}
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vaddnps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vaddnps zmm1{k1},zmm2,[rcx]{uint16}
	vaddps zmm1{k1},zmm2,zmm3
	vaddps zmm1{k1},zmm2,zmm3{dcba}
	vaddps zmm1{k1},zmm2,zmm3{cdab}
	vaddps zmm1{k1},zmm2,zmm3{badc}
	vaddps zmm1{k1},zmm2,zmm3{aaaa}
	vaddps zmm1{k1},zmm2,zmm3{bbbb}
	vaddps zmm1{k1},zmm2,zmm3{cccc}
	vaddps zmm1{k1},zmm2,zmm3{dddd}
	vaddps zmm1{k1},zmm2,zmm3{dacb}
	vaddps zmm1{k1},zmm2,zmm3,{rn}
	vaddps zmm1{k1},zmm2,zmm3,{rd}
	vaddps zmm1{k1},zmm2,zmm3,{ru}
	vaddps zmm1{k1},zmm2,zmm3,{rz}
	vaddps zmm1{k1},zmm2,zmm3,{sae}
	vaddps zmm1{k1},zmm2,zmm3,{rn-sae}
	vaddps zmm1{k1},zmm2,zmm3,{rd-sae}
	vaddps zmm1{k1},zmm2,zmm3,{ru-sae}
	vaddps zmm1{k1},zmm2,zmm3,{rz-sae}
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vaddps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vaddps zmm1{k1},zmm2,[rcx]{uint16}
	vaddsetsps zmm1{k1},zmm2,zmm3
	vaddsetsps zmm1{k1},zmm2,zmm3{dcba}
	vaddsetsps zmm1{k1},zmm2,zmm3{cdab}
	vaddsetsps zmm1{k1},zmm2,zmm3{badc}
	vaddsetsps zmm1{k1},zmm2,zmm3{aaaa}
	vaddsetsps zmm1{k1},zmm2,zmm3{bbbb}
	vaddsetsps zmm1{k1},zmm2,zmm3{cccc}
	vaddsetsps zmm1{k1},zmm2,zmm3{dddd}
	vaddsetsps zmm1{k1},zmm2,zmm3{dacb}
	vaddsetsps zmm1{k1},zmm2,zmm3,{rn}
	vaddsetsps zmm1{k1},zmm2,zmm3,{rd}
	vaddsetsps zmm1{k1},zmm2,zmm3,{ru}
	vaddsetsps zmm1{k1},zmm2,zmm3,{rz}
	vaddsetsps zmm1{k1},zmm2,zmm3,{sae}
	vaddsetsps zmm1{k1},zmm2,zmm3,{rn-sae}
	vaddsetsps zmm1{k1},zmm2,zmm3,{rd-sae}
	vaddsetsps zmm1{k1},zmm2,zmm3,{ru-sae}
	vaddsetsps zmm1{k1},zmm2,zmm3,{rz-sae}
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vaddsetsps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vaddsetsps zmm1{k1},zmm2,[rcx]{uint16}
	vfmadd132ps zmm1{k1},zmm2,zmm3
	vfmadd132ps zmm1{k1},zmm2,zmm3{dcba}
	vfmadd132ps zmm1{k1},zmm2,zmm3{cdab}
	vfmadd132ps zmm1{k1},zmm2,zmm3{badc}
	vfmadd132ps zmm1{k1},zmm2,zmm3{aaaa}
	vfmadd132ps zmm1{k1},zmm2,zmm3{bbbb}
	vfmadd132ps zmm1{k1},zmm2,zmm3{cccc}
	vfmadd132ps zmm1{k1},zmm2,zmm3{dddd}
	vfmadd132ps zmm1{k1},zmm2,zmm3{dacb}
	vfmadd132ps zmm1{k1},zmm2,zmm3,{rn}
	vfmadd132ps zmm1{k1},zmm2,zmm3,{rd}
	vfmadd132ps zmm1{k1},zmm2,zmm3,{ru}
	vfmadd132ps zmm1{k1},zmm2,zmm3,{rz}
	vfmadd132ps zmm1{k1},zmm2,zmm3,{sae}
	vfmadd132ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmadd132ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmadd132ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmadd132ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfmadd132ps zmm1{k1},zmm2,[rcx]{uint16}
	vfmadd213ps zmm1{k1},zmm2,zmm3
	vfmadd213ps zmm1{k1},zmm2,zmm3{dcba}
	vfmadd213ps zmm1{k1},zmm2,zmm3{cdab}
	vfmadd213ps zmm1{k1},zmm2,zmm3{badc}
	vfmadd213ps zmm1{k1},zmm2,zmm3{aaaa}
	vfmadd213ps zmm1{k1},zmm2,zmm3{bbbb}
	vfmadd213ps zmm1{k1},zmm2,zmm3{cccc}
	vfmadd213ps zmm1{k1},zmm2,zmm3{dddd}
	vfmadd213ps zmm1{k1},zmm2,zmm3{dacb}
	vfmadd213ps zmm1{k1},zmm2,zmm3,{rn}
	vfmadd213ps zmm1{k1},zmm2,zmm3,{rd}
	vfmadd213ps zmm1{k1},zmm2,zmm3,{ru}
	vfmadd213ps zmm1{k1},zmm2,zmm3,{rz}
	vfmadd213ps zmm1{k1},zmm2,zmm3,{sae}
	vfmadd213ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmadd213ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmadd213ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmadd213ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfmadd213ps zmm1{k1},zmm2,[rcx]{uint16}
	vfmadd231ps zmm1{k1},zmm2,zmm3
	vfmadd231ps zmm1{k1},zmm2,zmm3{dcba}
	vfmadd231ps zmm1{k1},zmm2,zmm3{cdab}
	vfmadd231ps zmm1{k1},zmm2,zmm3{badc}
	vfmadd231ps zmm1{k1},zmm2,zmm3{aaaa}
	vfmadd231ps zmm1{k1},zmm2,zmm3{bbbb}
	vfmadd231ps zmm1{k1},zmm2,zmm3{cccc}
	vfmadd231ps zmm1{k1},zmm2,zmm3{dddd}
	vfmadd231ps zmm1{k1},zmm2,zmm3{dacb}
	vfmadd231ps zmm1{k1},zmm2,zmm3,{rn}
	vfmadd231ps zmm1{k1},zmm2,zmm3,{rd}
	vfmadd231ps zmm1{k1},zmm2,zmm3,{ru}
	vfmadd231ps zmm1{k1},zmm2,zmm3,{rz}
	vfmadd231ps zmm1{k1},zmm2,zmm3,{sae}
	vfmadd231ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmadd231ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmadd231ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmadd231ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfmadd231ps zmm1{k1},zmm2,[rcx]{uint16}
	vfmsub132ps zmm1{k1},zmm2,zmm3
	vfmsub132ps zmm1{k1},zmm2,zmm3{dcba}
	vfmsub132ps zmm1{k1},zmm2,zmm3{cdab}
	vfmsub132ps zmm1{k1},zmm2,zmm3{badc}
	vfmsub132ps zmm1{k1},zmm2,zmm3{aaaa}
	vfmsub132ps zmm1{k1},zmm2,zmm3{bbbb}
	vfmsub132ps zmm1{k1},zmm2,zmm3{cccc}
	vfmsub132ps zmm1{k1},zmm2,zmm3{dddd}
	vfmsub132ps zmm1{k1},zmm2,zmm3{dacb}
	vfmsub132ps zmm1{k1},zmm2,zmm3,{rn}
	vfmsub132ps zmm1{k1},zmm2,zmm3,{rd}
	vfmsub132ps zmm1{k1},zmm2,zmm3,{ru}
	vfmsub132ps zmm1{k1},zmm2,zmm3,{rz}
	vfmsub132ps zmm1{k1},zmm2,zmm3,{sae}
	vfmsub132ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmsub132ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmsub132ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmsub132ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfmsub132ps zmm1{k1},zmm2,[rcx]{uint16}
	vfmsub213ps zmm1{k1},zmm2,zmm3
	vfmsub213ps zmm1{k1},zmm2,zmm3{dcba}
	vfmsub213ps zmm1{k1},zmm2,zmm3{cdab}
	vfmsub213ps zmm1{k1},zmm2,zmm3{badc}
	vfmsub213ps zmm1{k1},zmm2,zmm3{aaaa}
	vfmsub213ps zmm1{k1},zmm2,zmm3{bbbb}
	vfmsub213ps zmm1{k1},zmm2,zmm3{cccc}
	vfmsub213ps zmm1{k1},zmm2,zmm3{dddd}
	vfmsub213ps zmm1{k1},zmm2,zmm3{dacb}
	vfmsub213ps zmm1{k1},zmm2,zmm3,{rn}
	vfmsub213ps zmm1{k1},zmm2,zmm3,{rd}
	vfmsub213ps zmm1{k1},zmm2,zmm3,{ru}
	vfmsub213ps zmm1{k1},zmm2,zmm3,{rz}
	vfmsub213ps zmm1{k1},zmm2,zmm3,{sae}
	vfmsub213ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmsub213ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmsub213ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmsub213ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfmsub213ps zmm1{k1},zmm2,[rcx]{uint16}
	vfmsub231ps zmm1{k1},zmm2,zmm3
	vfmsub231ps zmm1{k1},zmm2,zmm3{dcba}
	vfmsub231ps zmm1{k1},zmm2,zmm3{cdab}
	vfmsub231ps zmm1{k1},zmm2,zmm3{badc}
	vfmsub231ps zmm1{k1},zmm2,zmm3{aaaa}
	vfmsub231ps zmm1{k1},zmm2,zmm3{bbbb}
	vfmsub231ps zmm1{k1},zmm2,zmm3{cccc}
	vfmsub231ps zmm1{k1},zmm2,zmm3{dddd}
	vfmsub231ps zmm1{k1},zmm2,zmm3{dacb}
	vfmsub231ps zmm1{k1},zmm2,zmm3,{rn}
	vfmsub231ps zmm1{k1},zmm2,zmm3,{rd}
	vfmsub231ps zmm1{k1},zmm2,zmm3,{ru}
	vfmsub231ps zmm1{k1},zmm2,zmm3,{rz}
	vfmsub231ps zmm1{k1},zmm2,zmm3,{sae}
	vfmsub231ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmsub231ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmsub231ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmsub231ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfmsub231ps zmm1{k1},zmm2,[rcx]{uint16}
	vfnmadd132ps zmm1{k1},zmm2,zmm3
	vfnmadd132ps zmm1{k1},zmm2,zmm3{dcba}
	vfnmadd132ps zmm1{k1},zmm2,zmm3{cdab}
	vfnmadd132ps zmm1{k1},zmm2,zmm3{badc}
	vfnmadd132ps zmm1{k1},zmm2,zmm3{aaaa}
	vfnmadd132ps zmm1{k1},zmm2,zmm3{bbbb}
	vfnmadd132ps zmm1{k1},zmm2,zmm3{cccc}
	vfnmadd132ps zmm1{k1},zmm2,zmm3{dddd}
	vfnmadd132ps zmm1{k1},zmm2,zmm3{dacb}
	vfnmadd132ps zmm1{k1},zmm2,zmm3,{rn}
	vfnmadd132ps zmm1{k1},zmm2,zmm3,{rd}
	vfnmadd132ps zmm1{k1},zmm2,zmm3,{ru}
	vfnmadd132ps zmm1{k1},zmm2,zmm3,{rz}
	vfnmadd132ps zmm1{k1},zmm2,zmm3,{sae}
	vfnmadd132ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmadd132ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmadd132ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmadd132ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfnmadd132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfnmadd132ps zmm1{k1},zmm2,[rcx]{uint16}
	vfnmadd213ps zmm1{k1},zmm2,zmm3
	vfnmadd213ps zmm1{k1},zmm2,zmm3{dcba}
	vfnmadd213ps zmm1{k1},zmm2,zmm3{cdab}
	vfnmadd213ps zmm1{k1},zmm2,zmm3{badc}
	vfnmadd213ps zmm1{k1},zmm2,zmm3{aaaa}
	vfnmadd213ps zmm1{k1},zmm2,zmm3{bbbb}
	vfnmadd213ps zmm1{k1},zmm2,zmm3{cccc}
	vfnmadd213ps zmm1{k1},zmm2,zmm3{dddd}
	vfnmadd213ps zmm1{k1},zmm2,zmm3{dacb}
	vfnmadd213ps zmm1{k1},zmm2,zmm3,{rn}
	vfnmadd213ps zmm1{k1},zmm2,zmm3,{rd}
	vfnmadd213ps zmm1{k1},zmm2,zmm3,{ru}
	vfnmadd213ps zmm1{k1},zmm2,zmm3,{rz}
	vfnmadd213ps zmm1{k1},zmm2,zmm3,{sae}
	vfnmadd213ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmadd213ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmadd213ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmadd213ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfnmadd213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfnmadd213ps zmm1{k1},zmm2,[rcx]{uint16}
	vfnmadd231ps zmm1{k1},zmm2,zmm3
	vfnmadd231ps zmm1{k1},zmm2,zmm3{dcba}
	vfnmadd231ps zmm1{k1},zmm2,zmm3{cdab}
	vfnmadd231ps zmm1{k1},zmm2,zmm3{badc}
	vfnmadd231ps zmm1{k1},zmm2,zmm3{aaaa}
	vfnmadd231ps zmm1{k1},zmm2,zmm3{bbbb}
	vfnmadd231ps zmm1{k1},zmm2,zmm3{cccc}
	vfnmadd231ps zmm1{k1},zmm2,zmm3{dddd}
	vfnmadd231ps zmm1{k1},zmm2,zmm3{dacb}
	vfnmadd231ps zmm1{k1},zmm2,zmm3,{rn}
	vfnmadd231ps zmm1{k1},zmm2,zmm3,{rd}
	vfnmadd231ps zmm1{k1},zmm2,zmm3,{ru}
	vfnmadd231ps zmm1{k1},zmm2,zmm3,{rz}
	vfnmadd231ps zmm1{k1},zmm2,zmm3,{sae}
	vfnmadd231ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmadd231ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmadd231ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmadd231ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfnmadd231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfnmadd231ps zmm1{k1},zmm2,[rcx]{uint16}
	vfnmsub132ps zmm1{k1},zmm2,zmm3
	vfnmsub132ps zmm1{k1},zmm2,zmm3{dcba}
	vfnmsub132ps zmm1{k1},zmm2,zmm3{cdab}
	vfnmsub132ps zmm1{k1},zmm2,zmm3{badc}
	vfnmsub132ps zmm1{k1},zmm2,zmm3{aaaa}
	vfnmsub132ps zmm1{k1},zmm2,zmm3{bbbb}
	vfnmsub132ps zmm1{k1},zmm2,zmm3{cccc}
	vfnmsub132ps zmm1{k1},zmm2,zmm3{dddd}
	vfnmsub132ps zmm1{k1},zmm2,zmm3{dacb}
	vfnmsub132ps zmm1{k1},zmm2,zmm3,{rn}
	vfnmsub132ps zmm1{k1},zmm2,zmm3,{rd}
	vfnmsub132ps zmm1{k1},zmm2,zmm3,{ru}
	vfnmsub132ps zmm1{k1},zmm2,zmm3,{rz}
	vfnmsub132ps zmm1{k1},zmm2,zmm3,{sae}
	vfnmsub132ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmsub132ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmsub132ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmsub132ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfnmsub132ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfnmsub132ps zmm1{k1},zmm2,[rcx]{uint16}
	vfnmsub213ps zmm1{k1},zmm2,zmm3
	vfnmsub213ps zmm1{k1},zmm2,zmm3{dcba}
	vfnmsub213ps zmm1{k1},zmm2,zmm3{cdab}
	vfnmsub213ps zmm1{k1},zmm2,zmm3{badc}
	vfnmsub213ps zmm1{k1},zmm2,zmm3{aaaa}
	vfnmsub213ps zmm1{k1},zmm2,zmm3{bbbb}
	vfnmsub213ps zmm1{k1},zmm2,zmm3{cccc}
	vfnmsub213ps zmm1{k1},zmm2,zmm3{dddd}
	vfnmsub213ps zmm1{k1},zmm2,zmm3{dacb}
	vfnmsub213ps zmm1{k1},zmm2,zmm3,{rn}
	vfnmsub213ps zmm1{k1},zmm2,zmm3,{rd}
	vfnmsub213ps zmm1{k1},zmm2,zmm3,{ru}
	vfnmsub213ps zmm1{k1},zmm2,zmm3,{rz}
	vfnmsub213ps zmm1{k1},zmm2,zmm3,{sae}
	vfnmsub213ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmsub213ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmsub213ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmsub213ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfnmsub213ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfnmsub213ps zmm1{k1},zmm2,[rcx]{uint16}
	vfnmsub231ps zmm1{k1},zmm2,zmm3
	vfnmsub231ps zmm1{k1},zmm2,zmm3{dcba}
	vfnmsub231ps zmm1{k1},zmm2,zmm3{cdab}
	vfnmsub231ps zmm1{k1},zmm2,zmm3{badc}
	vfnmsub231ps zmm1{k1},zmm2,zmm3{aaaa}
	vfnmsub231ps zmm1{k1},zmm2,zmm3{bbbb}
	vfnmsub231ps zmm1{k1},zmm2,zmm3{cccc}
	vfnmsub231ps zmm1{k1},zmm2,zmm3{dddd}
	vfnmsub231ps zmm1{k1},zmm2,zmm3{dacb}
	vfnmsub231ps zmm1{k1},zmm2,zmm3,{rn}
	vfnmsub231ps zmm1{k1},zmm2,zmm3,{rd}
	vfnmsub231ps zmm1{k1},zmm2,zmm3,{ru}
	vfnmsub231ps zmm1{k1},zmm2,zmm3,{rz}
	vfnmsub231ps zmm1{k1},zmm2,zmm3,{sae}
	vfnmsub231ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmsub231ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmsub231ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmsub231ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfnmsub231ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vfnmsub231ps zmm1{k1},zmm2,[rcx]{uint16}
	vmulps zmm1{k1},zmm2,zmm3
	vmulps zmm1{k1},zmm2,zmm3{dcba}
	vmulps zmm1{k1},zmm2,zmm3{cdab}
	vmulps zmm1{k1},zmm2,zmm3{badc}
	vmulps zmm1{k1},zmm2,zmm3{aaaa}
	vmulps zmm1{k1},zmm2,zmm3{bbbb}
	vmulps zmm1{k1},zmm2,zmm3{cccc}
	vmulps zmm1{k1},zmm2,zmm3{dddd}
	vmulps zmm1{k1},zmm2,zmm3{dacb}
	vmulps zmm1{k1},zmm2,zmm3,{rn}
	vmulps zmm1{k1},zmm2,zmm3,{rd}
	vmulps zmm1{k1},zmm2,zmm3,{ru}
	vmulps zmm1{k1},zmm2,zmm3,{rz}
	vmulps zmm1{k1},zmm2,zmm3,{sae}
	vmulps zmm1{k1},zmm2,zmm3,{rn-sae}
	vmulps zmm1{k1},zmm2,zmm3,{rd-sae}
	vmulps zmm1{k1},zmm2,zmm3,{ru-sae}
	vmulps zmm1{k1},zmm2,zmm3,{rz-sae}
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vmulps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vmulps zmm1{k1},zmm2,[rcx]{uint16}
	vsubps zmm1{k1},zmm2,zmm3
	vsubps zmm1{k1},zmm2,zmm3{dcba}
	vsubps zmm1{k1},zmm2,zmm3{cdab}
	vsubps zmm1{k1},zmm2,zmm3{badc}
	vsubps zmm1{k1},zmm2,zmm3{aaaa}
	vsubps zmm1{k1},zmm2,zmm3{bbbb}
	vsubps zmm1{k1},zmm2,zmm3{cccc}
	vsubps zmm1{k1},zmm2,zmm3{dddd}
	vsubps zmm1{k1},zmm2,zmm3{dacb}
	vsubps zmm1{k1},zmm2,zmm3,{rn}
	vsubps zmm1{k1},zmm2,zmm3,{rd}
	vsubps zmm1{k1},zmm2,zmm3,{ru}
	vsubps zmm1{k1},zmm2,zmm3,{rz}
	vsubps zmm1{k1},zmm2,zmm3,{sae}
	vsubps zmm1{k1},zmm2,zmm3,{rn-sae}
	vsubps zmm1{k1},zmm2,zmm3,{rd-sae}
	vsubps zmm1{k1},zmm2,zmm3,{ru-sae}
	vsubps zmm1{k1},zmm2,zmm3,{rz-sae}
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vsubps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vsubps zmm1{k1},zmm2,[rcx]{uint16}
	vsubrps zmm1{k1},zmm2,zmm3
	vsubrps zmm1{k1},zmm2,zmm3{dcba}
	vsubrps zmm1{k1},zmm2,zmm3{cdab}
	vsubrps zmm1{k1},zmm2,zmm3{badc}
	vsubrps zmm1{k1},zmm2,zmm3{aaaa}
	vsubrps zmm1{k1},zmm2,zmm3{bbbb}
	vsubrps zmm1{k1},zmm2,zmm3{cccc}
	vsubrps zmm1{k1},zmm2,zmm3{dddd}
	vsubrps zmm1{k1},zmm2,zmm3{dacb}
	vsubrps zmm1{k1},zmm2,zmm3,{rn}
	vsubrps zmm1{k1},zmm2,zmm3,{rd}
	vsubrps zmm1{k1},zmm2,zmm3,{ru}
	vsubrps zmm1{k1},zmm2,zmm3,{rz}
	vsubrps zmm1{k1},zmm2,zmm3,{sae}
	vsubrps zmm1{k1},zmm2,zmm3,{rn-sae}
	vsubrps zmm1{k1},zmm2,zmm3,{rd-sae}
	vsubrps zmm1{k1},zmm2,zmm3,{ru-sae}
	vsubrps zmm1{k1},zmm2,zmm3,{rz-sae}
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vsubrps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vsubrps zmm1{k1},zmm2,[rcx]{uint16}

# Tests for op v1{k1}, v2, sf(v3/mt) with SAE only
	vgmaxabsps zmm1{k1},zmm2,zmm3
	vgmaxabsps zmm1{k1},zmm2,zmm3{dcba}
	vgmaxabsps zmm1{k1},zmm2,zmm3{cdab}
	vgmaxabsps zmm1{k1},zmm2,zmm3{badc}
	vgmaxabsps zmm1{k1},zmm2,zmm3{aaaa}
	vgmaxabsps zmm1{k1},zmm2,zmm3{bbbb}
	vgmaxabsps zmm1{k1},zmm2,zmm3{cccc}
	vgmaxabsps zmm1{k1},zmm2,zmm3{dddd}
	vgmaxabsps zmm1{k1},zmm2,zmm3{dacb}
	vgmaxabsps zmm1{k1},zmm2,zmm3,{sae}
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vgmaxabsps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vgmaxabsps zmm1{k1},zmm2,[rcx]{uint16}
	vgmaxps zmm1{k1},zmm2,zmm3
	vgmaxps zmm1{k1},zmm2,zmm3{dcba}
	vgmaxps zmm1{k1},zmm2,zmm3{cdab}
	vgmaxps zmm1{k1},zmm2,zmm3{badc}
	vgmaxps zmm1{k1},zmm2,zmm3{aaaa}
	vgmaxps zmm1{k1},zmm2,zmm3{bbbb}
	vgmaxps zmm1{k1},zmm2,zmm3{cccc}
	vgmaxps zmm1{k1},zmm2,zmm3{dddd}
	vgmaxps zmm1{k1},zmm2,zmm3{dacb}
	vgmaxps zmm1{k1},zmm2,zmm3,{sae}
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vgmaxps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vgmaxps zmm1{k1},zmm2,[rcx]{uint16}
	vgminps zmm1{k1},zmm2,zmm3
	vgminps zmm1{k1},zmm2,zmm3{dcba}
	vgminps zmm1{k1},zmm2,zmm3{cdab}
	vgminps zmm1{k1},zmm2,zmm3{badc}
	vgminps zmm1{k1},zmm2,zmm3{aaaa}
	vgminps zmm1{k1},zmm2,zmm3{bbbb}
	vgminps zmm1{k1},zmm2,zmm3{cccc}
	vgminps zmm1{k1},zmm2,zmm3{dddd}
	vgminps zmm1{k1},zmm2,zmm3{dacb}
	vgminps zmm1{k1},zmm2,zmm3,{sae}
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vgminps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vgminps zmm1{k1},zmm2,[rcx]{uint16}

# Tests for op v1{k1}, v2, sbroadcastonly2_32(v3/mt) with rounding
	vfmadd233ps zmm1{k1},zmm2,zmm3
	vfmadd233ps zmm1{k1},zmm2,zmm3{dcba}
	vfmadd233ps zmm1{k1},zmm2,zmm3,{rn}
	vfmadd233ps zmm1{k1},zmm2,zmm3,{rd}
	vfmadd233ps zmm1{k1},zmm2,zmm3,{ru}
	vfmadd233ps zmm1{k1},zmm2,zmm3,{rz}
	vfmadd233ps zmm1{k1},zmm2,zmm3,{sae}
	vfmadd233ps zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmadd233ps zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmadd233ps zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmadd233ps zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmadd233ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmadd233ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmadd233ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfmadd233ps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfmadd233ps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to16}
	vfmadd233ps zmm1{k1},zmm2,[rcx]{4to16}

# Tests for op v1{k1}, v2, sf(v3/mt)
	vblendmps zmm1{k1},zmm2,zmm3
	vblendmps zmm1{k1},zmm2,zmm3{dcba}
	vblendmps zmm1{k1},zmm2,zmm3{cdab}
	vblendmps zmm1{k1},zmm2,zmm3{badc}
	vblendmps zmm1{k1},zmm2,zmm3{aaaa}
	vblendmps zmm1{k1},zmm2,zmm3{bbbb}
	vblendmps zmm1{k1},zmm2,zmm3{cccc}
	vblendmps zmm1{k1},zmm2,zmm3{dddd}
	vblendmps zmm1{k1},zmm2,zmm3{dacb}
	vblendmps zmm1{k1},zmm2,zmm3{eh}
	vblendmps zmm1{k1},zmm2,zmm3{dcba}{eh}
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{float16}
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vblendmps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vblendmps zmm1{k1},zmm2,[rcx]{uint16}

# Tests for op v1{k1}, v2, sd(v3/mt) with rounding
	vaddnpd zmm1{k1},zmm2,zmm3
	vaddnpd zmm1{k1},zmm2,zmm3{dcba}
	vaddnpd zmm1{k1},zmm2,zmm3{cdab}
	vaddnpd zmm1{k1},zmm2,zmm3{badc}
	vaddnpd zmm1{k1},zmm2,zmm3{aaaa}
	vaddnpd zmm1{k1},zmm2,zmm3{bbbb}
	vaddnpd zmm1{k1},zmm2,zmm3{cccc}
	vaddnpd zmm1{k1},zmm2,zmm3{dddd}
	vaddnpd zmm1{k1},zmm2,zmm3{dacb}
	vaddnpd zmm1{k1},zmm2,zmm3,{rn}
	vaddnpd zmm1{k1},zmm2,zmm3,{rd}
	vaddnpd zmm1{k1},zmm2,zmm3,{ru}
	vaddnpd zmm1{k1},zmm2,zmm3,{rz}
	vaddnpd zmm1{k1},zmm2,zmm3,{sae}
	vaddnpd zmm1{k1},zmm2,zmm3,{rn-sae}
	vaddnpd zmm1{k1},zmm2,zmm3,{rd-sae}
	vaddnpd zmm1{k1},zmm2,zmm3,{ru-sae}
	vaddnpd zmm1{k1},zmm2,zmm3,{rz-sae}
	vaddnpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vaddnpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vaddnpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vaddnpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vaddnpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vaddnpd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vaddnpd zmm1{k1},zmm2,[rcx]{4to8}
	vaddpd zmm1{k1},zmm2,zmm3
	vaddpd zmm1{k1},zmm2,zmm3{dcba}
	vaddpd zmm1{k1},zmm2,zmm3{cdab}
	vaddpd zmm1{k1},zmm2,zmm3{badc}
	vaddpd zmm1{k1},zmm2,zmm3{aaaa}
	vaddpd zmm1{k1},zmm2,zmm3{bbbb}
	vaddpd zmm1{k1},zmm2,zmm3{cccc}
	vaddpd zmm1{k1},zmm2,zmm3{dddd}
	vaddpd zmm1{k1},zmm2,zmm3{dacb}
	vaddpd zmm1{k1},zmm2,zmm3,{rn}
	vaddpd zmm1{k1},zmm2,zmm3,{rd}
	vaddpd zmm1{k1},zmm2,zmm3,{ru}
	vaddpd zmm1{k1},zmm2,zmm3,{rz}
	vaddpd zmm1{k1},zmm2,zmm3,{sae}
	vaddpd zmm1{k1},zmm2,zmm3,{rn-sae}
	vaddpd zmm1{k1},zmm2,zmm3,{rd-sae}
	vaddpd zmm1{k1},zmm2,zmm3,{ru-sae}
	vaddpd zmm1{k1},zmm2,zmm3,{rz-sae}
	vaddpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vaddpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vaddpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vaddpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vaddpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vaddpd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vaddpd zmm1{k1},zmm2,[rcx]{4to8}
	vfmadd132pd zmm1{k1},zmm2,zmm3
	vfmadd132pd zmm1{k1},zmm2,zmm3{dcba}
	vfmadd132pd zmm1{k1},zmm2,zmm3{cdab}
	vfmadd132pd zmm1{k1},zmm2,zmm3{badc}
	vfmadd132pd zmm1{k1},zmm2,zmm3{aaaa}
	vfmadd132pd zmm1{k1},zmm2,zmm3{bbbb}
	vfmadd132pd zmm1{k1},zmm2,zmm3{cccc}
	vfmadd132pd zmm1{k1},zmm2,zmm3{dddd}
	vfmadd132pd zmm1{k1},zmm2,zmm3{dacb}
	vfmadd132pd zmm1{k1},zmm2,zmm3,{rn}
	vfmadd132pd zmm1{k1},zmm2,zmm3,{rd}
	vfmadd132pd zmm1{k1},zmm2,zmm3,{ru}
	vfmadd132pd zmm1{k1},zmm2,zmm3,{rz}
	vfmadd132pd zmm1{k1},zmm2,zmm3,{sae}
	vfmadd132pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmadd132pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmadd132pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmadd132pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfmadd132pd zmm1{k1},zmm2,[rcx]{4to8}
	vfmadd213pd zmm1{k1},zmm2,zmm3
	vfmadd213pd zmm1{k1},zmm2,zmm3{dcba}
	vfmadd213pd zmm1{k1},zmm2,zmm3{cdab}
	vfmadd213pd zmm1{k1},zmm2,zmm3{badc}
	vfmadd213pd zmm1{k1},zmm2,zmm3{aaaa}
	vfmadd213pd zmm1{k1},zmm2,zmm3{bbbb}
	vfmadd213pd zmm1{k1},zmm2,zmm3{cccc}
	vfmadd213pd zmm1{k1},zmm2,zmm3{dddd}
	vfmadd213pd zmm1{k1},zmm2,zmm3{dacb}
	vfmadd213pd zmm1{k1},zmm2,zmm3,{rn}
	vfmadd213pd zmm1{k1},zmm2,zmm3,{rd}
	vfmadd213pd zmm1{k1},zmm2,zmm3,{ru}
	vfmadd213pd zmm1{k1},zmm2,zmm3,{rz}
	vfmadd213pd zmm1{k1},zmm2,zmm3,{sae}
	vfmadd213pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmadd213pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmadd213pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmadd213pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfmadd213pd zmm1{k1},zmm2,[rcx]{4to8}
	vfmadd231pd zmm1{k1},zmm2,zmm3
	vfmadd231pd zmm1{k1},zmm2,zmm3{dcba}
	vfmadd231pd zmm1{k1},zmm2,zmm3{cdab}
	vfmadd231pd zmm1{k1},zmm2,zmm3{badc}
	vfmadd231pd zmm1{k1},zmm2,zmm3{aaaa}
	vfmadd231pd zmm1{k1},zmm2,zmm3{bbbb}
	vfmadd231pd zmm1{k1},zmm2,zmm3{cccc}
	vfmadd231pd zmm1{k1},zmm2,zmm3{dddd}
	vfmadd231pd zmm1{k1},zmm2,zmm3{dacb}
	vfmadd231pd zmm1{k1},zmm2,zmm3,{rn}
	vfmadd231pd zmm1{k1},zmm2,zmm3,{rd}
	vfmadd231pd zmm1{k1},zmm2,zmm3,{ru}
	vfmadd231pd zmm1{k1},zmm2,zmm3,{rz}
	vfmadd231pd zmm1{k1},zmm2,zmm3,{sae}
	vfmadd231pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmadd231pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmadd231pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmadd231pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfmadd231pd zmm1{k1},zmm2,[rcx]{4to8}
	vfmsub132pd zmm1{k1},zmm2,zmm3
	vfmsub132pd zmm1{k1},zmm2,zmm3{dcba}
	vfmsub132pd zmm1{k1},zmm2,zmm3{cdab}
	vfmsub132pd zmm1{k1},zmm2,zmm3{badc}
	vfmsub132pd zmm1{k1},zmm2,zmm3{aaaa}
	vfmsub132pd zmm1{k1},zmm2,zmm3{bbbb}
	vfmsub132pd zmm1{k1},zmm2,zmm3{cccc}
	vfmsub132pd zmm1{k1},zmm2,zmm3{dddd}
	vfmsub132pd zmm1{k1},zmm2,zmm3{dacb}
	vfmsub132pd zmm1{k1},zmm2,zmm3,{rn}
	vfmsub132pd zmm1{k1},zmm2,zmm3,{rd}
	vfmsub132pd zmm1{k1},zmm2,zmm3,{ru}
	vfmsub132pd zmm1{k1},zmm2,zmm3,{rz}
	vfmsub132pd zmm1{k1},zmm2,zmm3,{sae}
	vfmsub132pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmsub132pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmsub132pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmsub132pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfmsub132pd zmm1{k1},zmm2,[rcx]{4to8}
	vfmsub213pd zmm1{k1},zmm2,zmm3
	vfmsub213pd zmm1{k1},zmm2,zmm3{dcba}
	vfmsub213pd zmm1{k1},zmm2,zmm3{cdab}
	vfmsub213pd zmm1{k1},zmm2,zmm3{badc}
	vfmsub213pd zmm1{k1},zmm2,zmm3{aaaa}
	vfmsub213pd zmm1{k1},zmm2,zmm3{bbbb}
	vfmsub213pd zmm1{k1},zmm2,zmm3{cccc}
	vfmsub213pd zmm1{k1},zmm2,zmm3{dddd}
	vfmsub213pd zmm1{k1},zmm2,zmm3{dacb}
	vfmsub213pd zmm1{k1},zmm2,zmm3,{rn}
	vfmsub213pd zmm1{k1},zmm2,zmm3,{rd}
	vfmsub213pd zmm1{k1},zmm2,zmm3,{ru}
	vfmsub213pd zmm1{k1},zmm2,zmm3,{rz}
	vfmsub213pd zmm1{k1},zmm2,zmm3,{sae}
	vfmsub213pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmsub213pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmsub213pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmsub213pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfmsub213pd zmm1{k1},zmm2,[rcx]{4to8}
	vfmsub231pd zmm1{k1},zmm2,zmm3
	vfmsub231pd zmm1{k1},zmm2,zmm3{dcba}
	vfmsub231pd zmm1{k1},zmm2,zmm3{cdab}
	vfmsub231pd zmm1{k1},zmm2,zmm3{badc}
	vfmsub231pd zmm1{k1},zmm2,zmm3{aaaa}
	vfmsub231pd zmm1{k1},zmm2,zmm3{bbbb}
	vfmsub231pd zmm1{k1},zmm2,zmm3{cccc}
	vfmsub231pd zmm1{k1},zmm2,zmm3{dddd}
	vfmsub231pd zmm1{k1},zmm2,zmm3{dacb}
	vfmsub231pd zmm1{k1},zmm2,zmm3,{rn}
	vfmsub231pd zmm1{k1},zmm2,zmm3,{rd}
	vfmsub231pd zmm1{k1},zmm2,zmm3,{ru}
	vfmsub231pd zmm1{k1},zmm2,zmm3,{rz}
	vfmsub231pd zmm1{k1},zmm2,zmm3,{sae}
	vfmsub231pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfmsub231pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfmsub231pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfmsub231pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfmsub231pd zmm1{k1},zmm2,[rcx]{4to8}
	vfnmadd132pd zmm1{k1},zmm2,zmm3
	vfnmadd132pd zmm1{k1},zmm2,zmm3{dcba}
	vfnmadd132pd zmm1{k1},zmm2,zmm3{cdab}
	vfnmadd132pd zmm1{k1},zmm2,zmm3{badc}
	vfnmadd132pd zmm1{k1},zmm2,zmm3{aaaa}
	vfnmadd132pd zmm1{k1},zmm2,zmm3{bbbb}
	vfnmadd132pd zmm1{k1},zmm2,zmm3{cccc}
	vfnmadd132pd zmm1{k1},zmm2,zmm3{dddd}
	vfnmadd132pd zmm1{k1},zmm2,zmm3{dacb}
	vfnmadd132pd zmm1{k1},zmm2,zmm3,{rn}
	vfnmadd132pd zmm1{k1},zmm2,zmm3,{rd}
	vfnmadd132pd zmm1{k1},zmm2,zmm3,{ru}
	vfnmadd132pd zmm1{k1},zmm2,zmm3,{rz}
	vfnmadd132pd zmm1{k1},zmm2,zmm3,{sae}
	vfnmadd132pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmadd132pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmadd132pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmadd132pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfnmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfnmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfnmadd132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfnmadd132pd zmm1{k1},zmm2,[rcx]{4to8}
	vfnmadd213pd zmm1{k1},zmm2,zmm3
	vfnmadd213pd zmm1{k1},zmm2,zmm3{dcba}
	vfnmadd213pd zmm1{k1},zmm2,zmm3{cdab}
	vfnmadd213pd zmm1{k1},zmm2,zmm3{badc}
	vfnmadd213pd zmm1{k1},zmm2,zmm3{aaaa}
	vfnmadd213pd zmm1{k1},zmm2,zmm3{bbbb}
	vfnmadd213pd zmm1{k1},zmm2,zmm3{cccc}
	vfnmadd213pd zmm1{k1},zmm2,zmm3{dddd}
	vfnmadd213pd zmm1{k1},zmm2,zmm3{dacb}
	vfnmadd213pd zmm1{k1},zmm2,zmm3,{rn}
	vfnmadd213pd zmm1{k1},zmm2,zmm3,{rd}
	vfnmadd213pd zmm1{k1},zmm2,zmm3,{ru}
	vfnmadd213pd zmm1{k1},zmm2,zmm3,{rz}
	vfnmadd213pd zmm1{k1},zmm2,zmm3,{sae}
	vfnmadd213pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmadd213pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmadd213pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmadd213pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfnmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfnmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfnmadd213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfnmadd213pd zmm1{k1},zmm2,[rcx]{4to8}
	vfnmadd231pd zmm1{k1},zmm2,zmm3
	vfnmadd231pd zmm1{k1},zmm2,zmm3{dcba}
	vfnmadd231pd zmm1{k1},zmm2,zmm3{cdab}
	vfnmadd231pd zmm1{k1},zmm2,zmm3{badc}
	vfnmadd231pd zmm1{k1},zmm2,zmm3{aaaa}
	vfnmadd231pd zmm1{k1},zmm2,zmm3{bbbb}
	vfnmadd231pd zmm1{k1},zmm2,zmm3{cccc}
	vfnmadd231pd zmm1{k1},zmm2,zmm3{dddd}
	vfnmadd231pd zmm1{k1},zmm2,zmm3{dacb}
	vfnmadd231pd zmm1{k1},zmm2,zmm3,{rn}
	vfnmadd231pd zmm1{k1},zmm2,zmm3,{rd}
	vfnmadd231pd zmm1{k1},zmm2,zmm3,{ru}
	vfnmadd231pd zmm1{k1},zmm2,zmm3,{rz}
	vfnmadd231pd zmm1{k1},zmm2,zmm3,{sae}
	vfnmadd231pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmadd231pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmadd231pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmadd231pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfnmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfnmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfnmadd231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfnmadd231pd zmm1{k1},zmm2,[rcx]{4to8}
	vfnmsub132pd zmm1{k1},zmm2,zmm3
	vfnmsub132pd zmm1{k1},zmm2,zmm3{dcba}
	vfnmsub132pd zmm1{k1},zmm2,zmm3{cdab}
	vfnmsub132pd zmm1{k1},zmm2,zmm3{badc}
	vfnmsub132pd zmm1{k1},zmm2,zmm3{aaaa}
	vfnmsub132pd zmm1{k1},zmm2,zmm3{bbbb}
	vfnmsub132pd zmm1{k1},zmm2,zmm3{cccc}
	vfnmsub132pd zmm1{k1},zmm2,zmm3{dddd}
	vfnmsub132pd zmm1{k1},zmm2,zmm3{dacb}
	vfnmsub132pd zmm1{k1},zmm2,zmm3,{rn}
	vfnmsub132pd zmm1{k1},zmm2,zmm3,{rd}
	vfnmsub132pd zmm1{k1},zmm2,zmm3,{ru}
	vfnmsub132pd zmm1{k1},zmm2,zmm3,{rz}
	vfnmsub132pd zmm1{k1},zmm2,zmm3,{sae}
	vfnmsub132pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmsub132pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmsub132pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmsub132pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfnmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfnmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfnmsub132pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfnmsub132pd zmm1{k1},zmm2,[rcx]{4to8}
	vfnmsub213pd zmm1{k1},zmm2,zmm3
	vfnmsub213pd zmm1{k1},zmm2,zmm3{dcba}
	vfnmsub213pd zmm1{k1},zmm2,zmm3{cdab}
	vfnmsub213pd zmm1{k1},zmm2,zmm3{badc}
	vfnmsub213pd zmm1{k1},zmm2,zmm3{aaaa}
	vfnmsub213pd zmm1{k1},zmm2,zmm3{bbbb}
	vfnmsub213pd zmm1{k1},zmm2,zmm3{cccc}
	vfnmsub213pd zmm1{k1},zmm2,zmm3{dddd}
	vfnmsub213pd zmm1{k1},zmm2,zmm3{dacb}
	vfnmsub213pd zmm1{k1},zmm2,zmm3,{rn}
	vfnmsub213pd zmm1{k1},zmm2,zmm3,{rd}
	vfnmsub213pd zmm1{k1},zmm2,zmm3,{ru}
	vfnmsub213pd zmm1{k1},zmm2,zmm3,{rz}
	vfnmsub213pd zmm1{k1},zmm2,zmm3,{sae}
	vfnmsub213pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmsub213pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmsub213pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmsub213pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfnmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfnmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfnmsub213pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfnmsub213pd zmm1{k1},zmm2,[rcx]{4to8}
	vfnmsub231pd zmm1{k1},zmm2,zmm3
	vfnmsub231pd zmm1{k1},zmm2,zmm3{dcba}
	vfnmsub231pd zmm1{k1},zmm2,zmm3{cdab}
	vfnmsub231pd zmm1{k1},zmm2,zmm3{badc}
	vfnmsub231pd zmm1{k1},zmm2,zmm3{aaaa}
	vfnmsub231pd zmm1{k1},zmm2,zmm3{bbbb}
	vfnmsub231pd zmm1{k1},zmm2,zmm3{cccc}
	vfnmsub231pd zmm1{k1},zmm2,zmm3{dddd}
	vfnmsub231pd zmm1{k1},zmm2,zmm3{dacb}
	vfnmsub231pd zmm1{k1},zmm2,zmm3,{rn}
	vfnmsub231pd zmm1{k1},zmm2,zmm3,{rd}
	vfnmsub231pd zmm1{k1},zmm2,zmm3,{ru}
	vfnmsub231pd zmm1{k1},zmm2,zmm3,{rz}
	vfnmsub231pd zmm1{k1},zmm2,zmm3,{sae}
	vfnmsub231pd zmm1{k1},zmm2,zmm3,{rn-sae}
	vfnmsub231pd zmm1{k1},zmm2,zmm3,{rd-sae}
	vfnmsub231pd zmm1{k1},zmm2,zmm3,{ru-sae}
	vfnmsub231pd zmm1{k1},zmm2,zmm3,{rz-sae}
	vfnmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfnmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfnmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfnmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfnmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfnmsub231pd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfnmsub231pd zmm1{k1},zmm2,[rcx]{4to8}
	vmulpd zmm1{k1},zmm2,zmm3
	vmulpd zmm1{k1},zmm2,zmm3{dcba}
	vmulpd zmm1{k1},zmm2,zmm3{cdab}
	vmulpd zmm1{k1},zmm2,zmm3{badc}
	vmulpd zmm1{k1},zmm2,zmm3{aaaa}
	vmulpd zmm1{k1},zmm2,zmm3{bbbb}
	vmulpd zmm1{k1},zmm2,zmm3{cccc}
	vmulpd zmm1{k1},zmm2,zmm3{dddd}
	vmulpd zmm1{k1},zmm2,zmm3{dacb}
	vmulpd zmm1{k1},zmm2,zmm3,{rn}
	vmulpd zmm1{k1},zmm2,zmm3,{rd}
	vmulpd zmm1{k1},zmm2,zmm3,{ru}
	vmulpd zmm1{k1},zmm2,zmm3,{rz}
	vmulpd zmm1{k1},zmm2,zmm3,{sae}
	vmulpd zmm1{k1},zmm2,zmm3,{rn-sae}
	vmulpd zmm1{k1},zmm2,zmm3,{rd-sae}
	vmulpd zmm1{k1},zmm2,zmm3,{ru-sae}
	vmulpd zmm1{k1},zmm2,zmm3,{rz-sae}
	vmulpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vmulpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vmulpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vmulpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vmulpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vmulpd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vmulpd zmm1{k1},zmm2,[rcx]{4to8}
	vsubpd zmm1{k1},zmm2,zmm3
	vsubpd zmm1{k1},zmm2,zmm3{dcba}
	vsubpd zmm1{k1},zmm2,zmm3{cdab}
	vsubpd zmm1{k1},zmm2,zmm3{badc}
	vsubpd zmm1{k1},zmm2,zmm3{aaaa}
	vsubpd zmm1{k1},zmm2,zmm3{bbbb}
	vsubpd zmm1{k1},zmm2,zmm3{cccc}
	vsubpd zmm1{k1},zmm2,zmm3{dddd}
	vsubpd zmm1{k1},zmm2,zmm3{dacb}
	vsubpd zmm1{k1},zmm2,zmm3,{rn}
	vsubpd zmm1{k1},zmm2,zmm3,{rd}
	vsubpd zmm1{k1},zmm2,zmm3,{ru}
	vsubpd zmm1{k1},zmm2,zmm3,{rz}
	vsubpd zmm1{k1},zmm2,zmm3,{sae}
	vsubpd zmm1{k1},zmm2,zmm3,{rn-sae}
	vsubpd zmm1{k1},zmm2,zmm3,{rd-sae}
	vsubpd zmm1{k1},zmm2,zmm3,{ru-sae}
	vsubpd zmm1{k1},zmm2,zmm3,{rz-sae}
	vsubpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vsubpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vsubpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vsubpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vsubpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vsubpd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vsubpd zmm1{k1},zmm2,[rcx]{4to8}
	vsubrpd zmm1{k1},zmm2,zmm3
	vsubrpd zmm1{k1},zmm2,zmm3{dcba}
	vsubrpd zmm1{k1},zmm2,zmm3{cdab}
	vsubrpd zmm1{k1},zmm2,zmm3{badc}
	vsubrpd zmm1{k1},zmm2,zmm3{aaaa}
	vsubrpd zmm1{k1},zmm2,zmm3{bbbb}
	vsubrpd zmm1{k1},zmm2,zmm3{cccc}
	vsubrpd zmm1{k1},zmm2,zmm3{dddd}
	vsubrpd zmm1{k1},zmm2,zmm3{dacb}
	vsubrpd zmm1{k1},zmm2,zmm3,{rn}
	vsubrpd zmm1{k1},zmm2,zmm3,{rd}
	vsubrpd zmm1{k1},zmm2,zmm3,{ru}
	vsubrpd zmm1{k1},zmm2,zmm3,{rz}
	vsubrpd zmm1{k1},zmm2,zmm3,{sae}
	vsubrpd zmm1{k1},zmm2,zmm3,{rn-sae}
	vsubrpd zmm1{k1},zmm2,zmm3,{rd-sae}
	vsubrpd zmm1{k1},zmm2,zmm3,{ru-sae}
	vsubrpd zmm1{k1},zmm2,zmm3,{rz-sae}
	vsubrpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vsubrpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vsubrpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vsubrpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vsubrpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vsubrpd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vsubrpd zmm1{k1},zmm2,[rcx]{4to8}

# Tests for op v1{k1}, v2, sd(v3/mt) with SAE only
	vfixupnanpd zmm1{k1},zmm2,zmm3
	vfixupnanpd zmm1{k1},zmm2,zmm3{dcba}
	vfixupnanpd zmm1{k1},zmm2,zmm3{cdab}
	vfixupnanpd zmm1{k1},zmm2,zmm3{badc}
	vfixupnanpd zmm1{k1},zmm2,zmm3{aaaa}
	vfixupnanpd zmm1{k1},zmm2,zmm3{bbbb}
	vfixupnanpd zmm1{k1},zmm2,zmm3{cccc}
	vfixupnanpd zmm1{k1},zmm2,zmm3{dddd}
	vfixupnanpd zmm1{k1},zmm2,zmm3{dacb}
	vfixupnanpd zmm1{k1},zmm2,zmm3,{sae}
	vfixupnanpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfixupnanpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfixupnanpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vfixupnanpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vfixupnanpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vfixupnanpd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vfixupnanpd zmm1{k1},zmm2,[rcx]{4to8}
	vgmaxpd zmm1{k1},zmm2,zmm3
	vgmaxpd zmm1{k1},zmm2,zmm3{dcba}
	vgmaxpd zmm1{k1},zmm2,zmm3{cdab}
	vgmaxpd zmm1{k1},zmm2,zmm3{badc}
	vgmaxpd zmm1{k1},zmm2,zmm3{aaaa}
	vgmaxpd zmm1{k1},zmm2,zmm3{bbbb}
	vgmaxpd zmm1{k1},zmm2,zmm3{cccc}
	vgmaxpd zmm1{k1},zmm2,zmm3{dddd}
	vgmaxpd zmm1{k1},zmm2,zmm3{dacb}
	vgmaxpd zmm1{k1},zmm2,zmm3,{sae}
	vgmaxpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vgmaxpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vgmaxpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vgmaxpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vgmaxpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vgmaxpd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vgmaxpd zmm1{k1},zmm2,[rcx]{4to8}
	vgminpd zmm1{k1},zmm2,zmm3
	vgminpd zmm1{k1},zmm2,zmm3{dcba}
	vgminpd zmm1{k1},zmm2,zmm3{cdab}
	vgminpd zmm1{k1},zmm2,zmm3{badc}
	vgminpd zmm1{k1},zmm2,zmm3{aaaa}
	vgminpd zmm1{k1},zmm2,zmm3{bbbb}
	vgminpd zmm1{k1},zmm2,zmm3{cccc}
	vgminpd zmm1{k1},zmm2,zmm3{dddd}
	vgminpd zmm1{k1},zmm2,zmm3{dacb}
	vgminpd zmm1{k1},zmm2,zmm3,{sae}
	vgminpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vgminpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vgminpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vgminpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vgminpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vgminpd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vgminpd zmm1{k1},zmm2,[rcx]{4to8}

# Tests for op v1{k1}, v2, sd(v3/mt)
	vblendmpd zmm1{k1},zmm2,zmm3
	vblendmpd zmm1{k1},zmm2,zmm3{dcba}
	vblendmpd zmm1{k1},zmm2,zmm3{cdab}
	vblendmpd zmm1{k1},zmm2,zmm3{badc}
	vblendmpd zmm1{k1},zmm2,zmm3{aaaa}
	vblendmpd zmm1{k1},zmm2,zmm3{bbbb}
	vblendmpd zmm1{k1},zmm2,zmm3{cccc}
	vblendmpd zmm1{k1},zmm2,zmm3{dddd}
	vblendmpd zmm1{k1},zmm2,zmm3{dacb}
	vblendmpd zmm1{k1},zmm2,zmm3{eh}
	vblendmpd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vblendmpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vblendmpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vblendmpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vblendmpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vblendmpd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vblendmpd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vblendmpd zmm1{k1},zmm2,[rcx]{4to8}

# Tests for op v1{k1}, v2, si(v3/mt)
	vpaddd zmm1{k1},zmm2,zmm3
	vpaddd zmm1{k1},zmm2,zmm3{dcba}
	vpaddd zmm1{k1},zmm2,zmm3{cdab}
	vpaddd zmm1{k1},zmm2,zmm3{badc}
	vpaddd zmm1{k1},zmm2,zmm3{aaaa}
	vpaddd zmm1{k1},zmm2,zmm3{bbbb}
	vpaddd zmm1{k1},zmm2,zmm3{cccc}
	vpaddd zmm1{k1},zmm2,zmm3{dddd}
	vpaddd zmm1{k1},zmm2,zmm3{dacb}
	vpaddd zmm1{k1},zmm2,zmm3{eh}
	vpaddd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpaddd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpaddd zmm1{k1},zmm2,[rcx]{sint16}
	vpaddsetsd zmm1{k1},zmm2,zmm3
	vpaddsetsd zmm1{k1},zmm2,zmm3{dcba}
	vpaddsetsd zmm1{k1},zmm2,zmm3{cdab}
	vpaddsetsd zmm1{k1},zmm2,zmm3{badc}
	vpaddsetsd zmm1{k1},zmm2,zmm3{aaaa}
	vpaddsetsd zmm1{k1},zmm2,zmm3{bbbb}
	vpaddsetsd zmm1{k1},zmm2,zmm3{cccc}
	vpaddsetsd zmm1{k1},zmm2,zmm3{dddd}
	vpaddsetsd zmm1{k1},zmm2,zmm3{dacb}
	vpaddsetsd zmm1{k1},zmm2,zmm3{eh}
	vpaddsetsd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpaddsetsd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpaddsetsd zmm1{k1},zmm2,[rcx]{sint16}
	vpandd zmm1{k1},zmm2,zmm3
	vpandd zmm1{k1},zmm2,zmm3{dcba}
	vpandd zmm1{k1},zmm2,zmm3{cdab}
	vpandd zmm1{k1},zmm2,zmm3{badc}
	vpandd zmm1{k1},zmm2,zmm3{aaaa}
	vpandd zmm1{k1},zmm2,zmm3{bbbb}
	vpandd zmm1{k1},zmm2,zmm3{cccc}
	vpandd zmm1{k1},zmm2,zmm3{dddd}
	vpandd zmm1{k1},zmm2,zmm3{dacb}
	vpandd zmm1{k1},zmm2,zmm3{eh}
	vpandd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpandd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpandd zmm1{k1},zmm2,[rcx]{sint16}
	vpandnd zmm1{k1},zmm2,zmm3
	vpandnd zmm1{k1},zmm2,zmm3{dcba}
	vpandnd zmm1{k1},zmm2,zmm3{cdab}
	vpandnd zmm1{k1},zmm2,zmm3{badc}
	vpandnd zmm1{k1},zmm2,zmm3{aaaa}
	vpandnd zmm1{k1},zmm2,zmm3{bbbb}
	vpandnd zmm1{k1},zmm2,zmm3{cccc}
	vpandnd zmm1{k1},zmm2,zmm3{dddd}
	vpandnd zmm1{k1},zmm2,zmm3{dacb}
	vpandnd zmm1{k1},zmm2,zmm3{eh}
	vpandnd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpandnd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpandnd zmm1{k1},zmm2,[rcx]{sint16}
	vpblendmd zmm1{k1},zmm2,zmm3
	vpblendmd zmm1{k1},zmm2,zmm3{dcba}
	vpblendmd zmm1{k1},zmm2,zmm3{cdab}
	vpblendmd zmm1{k1},zmm2,zmm3{badc}
	vpblendmd zmm1{k1},zmm2,zmm3{aaaa}
	vpblendmd zmm1{k1},zmm2,zmm3{bbbb}
	vpblendmd zmm1{k1},zmm2,zmm3{cccc}
	vpblendmd zmm1{k1},zmm2,zmm3{dddd}
	vpblendmd zmm1{k1},zmm2,zmm3{dacb}
	vpblendmd zmm1{k1},zmm2,zmm3{eh}
	vpblendmd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpblendmd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpblendmd zmm1{k1},zmm2,[rcx]{sint16}
	vpmadd231d zmm1{k1},zmm2,zmm3
	vpmadd231d zmm1{k1},zmm2,zmm3{dcba}
	vpmadd231d zmm1{k1},zmm2,zmm3{cdab}
	vpmadd231d zmm1{k1},zmm2,zmm3{badc}
	vpmadd231d zmm1{k1},zmm2,zmm3{aaaa}
	vpmadd231d zmm1{k1},zmm2,zmm3{bbbb}
	vpmadd231d zmm1{k1},zmm2,zmm3{cccc}
	vpmadd231d zmm1{k1},zmm2,zmm3{dddd}
	vpmadd231d zmm1{k1},zmm2,zmm3{dacb}
	vpmadd231d zmm1{k1},zmm2,zmm3{eh}
	vpmadd231d zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpmadd231d zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpmadd231d zmm1{k1},zmm2,[rcx]{sint16}
	vpmaxsd zmm1{k1},zmm2,zmm3
	vpmaxsd zmm1{k1},zmm2,zmm3{dcba}
	vpmaxsd zmm1{k1},zmm2,zmm3{cdab}
	vpmaxsd zmm1{k1},zmm2,zmm3{badc}
	vpmaxsd zmm1{k1},zmm2,zmm3{aaaa}
	vpmaxsd zmm1{k1},zmm2,zmm3{bbbb}
	vpmaxsd zmm1{k1},zmm2,zmm3{cccc}
	vpmaxsd zmm1{k1},zmm2,zmm3{dddd}
	vpmaxsd zmm1{k1},zmm2,zmm3{dacb}
	vpmaxsd zmm1{k1},zmm2,zmm3{eh}
	vpmaxsd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpmaxsd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpmaxsd zmm1{k1},zmm2,[rcx]{sint16}
	vpmaxud zmm1{k1},zmm2,zmm3
	vpmaxud zmm1{k1},zmm2,zmm3{dcba}
	vpmaxud zmm1{k1},zmm2,zmm3{cdab}
	vpmaxud zmm1{k1},zmm2,zmm3{badc}
	vpmaxud zmm1{k1},zmm2,zmm3{aaaa}
	vpmaxud zmm1{k1},zmm2,zmm3{bbbb}
	vpmaxud zmm1{k1},zmm2,zmm3{cccc}
	vpmaxud zmm1{k1},zmm2,zmm3{dddd}
	vpmaxud zmm1{k1},zmm2,zmm3{dacb}
	vpmaxud zmm1{k1},zmm2,zmm3{eh}
	vpmaxud zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpmaxud zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpmaxud zmm1{k1},zmm2,[rcx]{sint16}
	vpminsd zmm1{k1},zmm2,zmm3
	vpminsd zmm1{k1},zmm2,zmm3{dcba}
	vpminsd zmm1{k1},zmm2,zmm3{cdab}
	vpminsd zmm1{k1},zmm2,zmm3{badc}
	vpminsd zmm1{k1},zmm2,zmm3{aaaa}
	vpminsd zmm1{k1},zmm2,zmm3{bbbb}
	vpminsd zmm1{k1},zmm2,zmm3{cccc}
	vpminsd zmm1{k1},zmm2,zmm3{dddd}
	vpminsd zmm1{k1},zmm2,zmm3{dacb}
	vpminsd zmm1{k1},zmm2,zmm3{eh}
	vpminsd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpminsd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpminsd zmm1{k1},zmm2,[rcx]{sint16}
	vpminud zmm1{k1},zmm2,zmm3
	vpminud zmm1{k1},zmm2,zmm3{dcba}
	vpminud zmm1{k1},zmm2,zmm3{cdab}
	vpminud zmm1{k1},zmm2,zmm3{badc}
	vpminud zmm1{k1},zmm2,zmm3{aaaa}
	vpminud zmm1{k1},zmm2,zmm3{bbbb}
	vpminud zmm1{k1},zmm2,zmm3{cccc}
	vpminud zmm1{k1},zmm2,zmm3{dddd}
	vpminud zmm1{k1},zmm2,zmm3{dacb}
	vpminud zmm1{k1},zmm2,zmm3{eh}
	vpminud zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpminud zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpminud zmm1{k1},zmm2,[rcx]{sint16}
	vpmulhd zmm1{k1},zmm2,zmm3
	vpmulhd zmm1{k1},zmm2,zmm3{dcba}
	vpmulhd zmm1{k1},zmm2,zmm3{cdab}
	vpmulhd zmm1{k1},zmm2,zmm3{badc}
	vpmulhd zmm1{k1},zmm2,zmm3{aaaa}
	vpmulhd zmm1{k1},zmm2,zmm3{bbbb}
	vpmulhd zmm1{k1},zmm2,zmm3{cccc}
	vpmulhd zmm1{k1},zmm2,zmm3{dddd}
	vpmulhd zmm1{k1},zmm2,zmm3{dacb}
	vpmulhd zmm1{k1},zmm2,zmm3{eh}
	vpmulhd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpmulhd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpmulhd zmm1{k1},zmm2,[rcx]{sint16}
	vpmulhud zmm1{k1},zmm2,zmm3
	vpmulhud zmm1{k1},zmm2,zmm3{dcba}
	vpmulhud zmm1{k1},zmm2,zmm3{cdab}
	vpmulhud zmm1{k1},zmm2,zmm3{badc}
	vpmulhud zmm1{k1},zmm2,zmm3{aaaa}
	vpmulhud zmm1{k1},zmm2,zmm3{bbbb}
	vpmulhud zmm1{k1},zmm2,zmm3{cccc}
	vpmulhud zmm1{k1},zmm2,zmm3{dddd}
	vpmulhud zmm1{k1},zmm2,zmm3{dacb}
	vpmulhud zmm1{k1},zmm2,zmm3{eh}
	vpmulhud zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpmulhud zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpmulhud zmm1{k1},zmm2,[rcx]{sint16}
	vpmulld zmm1{k1},zmm2,zmm3
	vpmulld zmm1{k1},zmm2,zmm3{dcba}
	vpmulld zmm1{k1},zmm2,zmm3{cdab}
	vpmulld zmm1{k1},zmm2,zmm3{badc}
	vpmulld zmm1{k1},zmm2,zmm3{aaaa}
	vpmulld zmm1{k1},zmm2,zmm3{bbbb}
	vpmulld zmm1{k1},zmm2,zmm3{cccc}
	vpmulld zmm1{k1},zmm2,zmm3{dddd}
	vpmulld zmm1{k1},zmm2,zmm3{dacb}
	vpmulld zmm1{k1},zmm2,zmm3{eh}
	vpmulld zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpmulld zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpmulld zmm1{k1},zmm2,[rcx]{sint16}
	vpord zmm1{k1},zmm2,zmm3
	vpord zmm1{k1},zmm2,zmm3{dcba}
	vpord zmm1{k1},zmm2,zmm3{cdab}
	vpord zmm1{k1},zmm2,zmm3{badc}
	vpord zmm1{k1},zmm2,zmm3{aaaa}
	vpord zmm1{k1},zmm2,zmm3{bbbb}
	vpord zmm1{k1},zmm2,zmm3{cccc}
	vpord zmm1{k1},zmm2,zmm3{dddd}
	vpord zmm1{k1},zmm2,zmm3{dacb}
	vpord zmm1{k1},zmm2,zmm3{eh}
	vpord zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpord zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpord zmm1{k1},zmm2,[rcx]{sint16}
	vpsllvd zmm1{k1},zmm2,zmm3
	vpsllvd zmm1{k1},zmm2,zmm3{dcba}
	vpsllvd zmm1{k1},zmm2,zmm3{cdab}
	vpsllvd zmm1{k1},zmm2,zmm3{badc}
	vpsllvd zmm1{k1},zmm2,zmm3{aaaa}
	vpsllvd zmm1{k1},zmm2,zmm3{bbbb}
	vpsllvd zmm1{k1},zmm2,zmm3{cccc}
	vpsllvd zmm1{k1},zmm2,zmm3{dddd}
	vpsllvd zmm1{k1},zmm2,zmm3{dacb}
	vpsllvd zmm1{k1},zmm2,zmm3{eh}
	vpsllvd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpsllvd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpsllvd zmm1{k1},zmm2,[rcx]{sint16}
	vpsravd zmm1{k1},zmm2,zmm3
	vpsravd zmm1{k1},zmm2,zmm3{dcba}
	vpsravd zmm1{k1},zmm2,zmm3{cdab}
	vpsravd zmm1{k1},zmm2,zmm3{badc}
	vpsravd zmm1{k1},zmm2,zmm3{aaaa}
	vpsravd zmm1{k1},zmm2,zmm3{bbbb}
	vpsravd zmm1{k1},zmm2,zmm3{cccc}
	vpsravd zmm1{k1},zmm2,zmm3{dddd}
	vpsravd zmm1{k1},zmm2,zmm3{dacb}
	vpsravd zmm1{k1},zmm2,zmm3{eh}
	vpsravd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpsravd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpsravd zmm1{k1},zmm2,[rcx]{sint16}
	vpsrlvd zmm1{k1},zmm2,zmm3
	vpsrlvd zmm1{k1},zmm2,zmm3{dcba}
	vpsrlvd zmm1{k1},zmm2,zmm3{cdab}
	vpsrlvd zmm1{k1},zmm2,zmm3{badc}
	vpsrlvd zmm1{k1},zmm2,zmm3{aaaa}
	vpsrlvd zmm1{k1},zmm2,zmm3{bbbb}
	vpsrlvd zmm1{k1},zmm2,zmm3{cccc}
	vpsrlvd zmm1{k1},zmm2,zmm3{dddd}
	vpsrlvd zmm1{k1},zmm2,zmm3{dacb}
	vpsrlvd zmm1{k1},zmm2,zmm3{eh}
	vpsrlvd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpsrlvd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpsrlvd zmm1{k1},zmm2,[rcx]{sint16}
	vpsubd zmm1{k1},zmm2,zmm3
	vpsubd zmm1{k1},zmm2,zmm3{dcba}
	vpsubd zmm1{k1},zmm2,zmm3{cdab}
	vpsubd zmm1{k1},zmm2,zmm3{badc}
	vpsubd zmm1{k1},zmm2,zmm3{aaaa}
	vpsubd zmm1{k1},zmm2,zmm3{bbbb}
	vpsubd zmm1{k1},zmm2,zmm3{cccc}
	vpsubd zmm1{k1},zmm2,zmm3{dddd}
	vpsubd zmm1{k1},zmm2,zmm3{dacb}
	vpsubd zmm1{k1},zmm2,zmm3{eh}
	vpsubd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpsubd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpsubd zmm1{k1},zmm2,[rcx]{sint16}
	vpsubrd zmm1{k1},zmm2,zmm3
	vpsubrd zmm1{k1},zmm2,zmm3{dcba}
	vpsubrd zmm1{k1},zmm2,zmm3{cdab}
	vpsubrd zmm1{k1},zmm2,zmm3{badc}
	vpsubrd zmm1{k1},zmm2,zmm3{aaaa}
	vpsubrd zmm1{k1},zmm2,zmm3{bbbb}
	vpsubrd zmm1{k1},zmm2,zmm3{cccc}
	vpsubrd zmm1{k1},zmm2,zmm3{dddd}
	vpsubrd zmm1{k1},zmm2,zmm3{dacb}
	vpsubrd zmm1{k1},zmm2,zmm3{eh}
	vpsubrd zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpsubrd zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpsubrd zmm1{k1},zmm2,[rcx]{sint16}
	vpxord zmm1{k1},zmm2,zmm3
	vpxord zmm1{k1},zmm2,zmm3{dcba}
	vpxord zmm1{k1},zmm2,zmm3{cdab}
	vpxord zmm1{k1},zmm2,zmm3{badc}
	vpxord zmm1{k1},zmm2,zmm3{aaaa}
	vpxord zmm1{k1},zmm2,zmm3{bbbb}
	vpxord zmm1{k1},zmm2,zmm3{cccc}
	vpxord zmm1{k1},zmm2,zmm3{dddd}
	vpxord zmm1{k1},zmm2,zmm3{dacb}
	vpxord zmm1{k1},zmm2,zmm3{eh}
	vpxord zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpxord zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpxord zmm1{k1},zmm2,[rcx]{sint16}

# Tests for op v1{k1}, v2, si(v3/mt) with SAE
	vfixupnanps zmm1{k1},zmm2,zmm3
	vfixupnanps zmm1{k1},zmm2,zmm3{dcba}
	vfixupnanps zmm1{k1},zmm2,zmm3{cdab}
	vfixupnanps zmm1{k1},zmm2,zmm3{badc}
	vfixupnanps zmm1{k1},zmm2,zmm3{aaaa}
	vfixupnanps zmm1{k1},zmm2,zmm3{bbbb}
	vfixupnanps zmm1{k1},zmm2,zmm3{cccc}
	vfixupnanps zmm1{k1},zmm2,zmm3{dddd}
	vfixupnanps zmm1{k1},zmm2,zmm3{dacb}
	vfixupnanps zmm1{k1},zmm2,zmm3,{sae}
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vfixupnanps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vfixupnanps zmm1{k1},zmm2,[rcx]{sint16}

# Tests for op v1{k1}, v2, sbroadcastonly2_32(v3/mt)
	vpmadd233d zmm1{k1},zmm2,zmm3
	vpmadd233d zmm1{k1},zmm2,zmm3{dcba}
	vpmadd233d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpmadd233d zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpmadd233d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpmadd233d zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpmadd233d zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to16}
	vpmadd233d zmm1{k1},zmm2,[rcx]{4to16}

# Tests for op v1{k1}, v2, si(v3/mt) with rounding
	vscaleps zmm1{k1},zmm2,zmm3
	vscaleps zmm1{k1},zmm2,zmm3{dcba}
	vscaleps zmm1{k1},zmm2,zmm3{cdab}
	vscaleps zmm1{k1},zmm2,zmm3{badc}
	vscaleps zmm1{k1},zmm2,zmm3{aaaa}
	vscaleps zmm1{k1},zmm2,zmm3{bbbb}
	vscaleps zmm1{k1},zmm2,zmm3{cccc}
	vscaleps zmm1{k1},zmm2,zmm3{dddd}
	vscaleps zmm1{k1},zmm2,zmm3{dacb}
	vscaleps zmm1{k1},zmm2,zmm3,{rn}
	vscaleps zmm1{k1},zmm2,zmm3,{rd}
	vscaleps zmm1{k1},zmm2,zmm3,{ru}
	vscaleps zmm1{k1},zmm2,zmm3,{rz}
	vscaleps zmm1{k1},zmm2,zmm3,{sae}
	vscaleps zmm1{k1},zmm2,zmm3,{rn-sae}
	vscaleps zmm1{k1},zmm2,zmm3,{rd-sae}
	vscaleps zmm1{k1},zmm2,zmm3,{ru-sae}
	vscaleps zmm1{k1},zmm2,zmm3,{rz-sae}
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{16to16}
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to16}
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to16}
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint8}
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint8}
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{uint16}
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx]{sint16}
	vscaleps zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vscaleps zmm1{k1},zmm2,[rcx]{sint16}

# Tests for op k1{k1}, v2, sf(v3/mt) with SAE only
	vcmpeqps k1{k2},zmm2,zmm3
	vcmpeqps k1{k2},zmm2,zmm3{dcba}
	vcmpeqps k1{k2},zmm2,zmm3{cdab}
	vcmpeqps k1{k2},zmm2,zmm3{badc}
	vcmpeqps k1{k2},zmm2,zmm3{aaaa}
	vcmpeqps k1{k2},zmm2,zmm3{bbbb}
	vcmpeqps k1{k2},zmm2,zmm3{cccc}
	vcmpeqps k1{k2},zmm2,zmm3{dddd}
	vcmpeqps k1{k2},zmm2,zmm3{dacb}
	vcmpeqps k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx]{float16}
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vcmpeqps k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vcmpeqps k1{k2},zmm2,[rcx]{uint16}
	vcmpleps k1{k2},zmm2,zmm3
	vcmpleps k1{k2},zmm2,zmm3{dcba}
	vcmpleps k1{k2},zmm2,zmm3{cdab}
	vcmpleps k1{k2},zmm2,zmm3{badc}
	vcmpleps k1{k2},zmm2,zmm3{aaaa}
	vcmpleps k1{k2},zmm2,zmm3{bbbb}
	vcmpleps k1{k2},zmm2,zmm3{cccc}
	vcmpleps k1{k2},zmm2,zmm3{dddd}
	vcmpleps k1{k2},zmm2,zmm3{dacb}
	vcmpleps k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx]{float16}
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vcmpleps k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vcmpleps k1{k2},zmm2,[rcx]{uint16}
	vcmpltps k1{k2},zmm2,zmm3
	vcmpltps k1{k2},zmm2,zmm3{dcba}
	vcmpltps k1{k2},zmm2,zmm3{cdab}
	vcmpltps k1{k2},zmm2,zmm3{badc}
	vcmpltps k1{k2},zmm2,zmm3{aaaa}
	vcmpltps k1{k2},zmm2,zmm3{bbbb}
	vcmpltps k1{k2},zmm2,zmm3{cccc}
	vcmpltps k1{k2},zmm2,zmm3{dddd}
	vcmpltps k1{k2},zmm2,zmm3{dacb}
	vcmpltps k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx]{float16}
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vcmpltps k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vcmpltps k1{k2},zmm2,[rcx]{uint16}
	vcmpneqps k1{k2},zmm2,zmm3
	vcmpneqps k1{k2},zmm2,zmm3{dcba}
	vcmpneqps k1{k2},zmm2,zmm3{cdab}
	vcmpneqps k1{k2},zmm2,zmm3{badc}
	vcmpneqps k1{k2},zmm2,zmm3{aaaa}
	vcmpneqps k1{k2},zmm2,zmm3{bbbb}
	vcmpneqps k1{k2},zmm2,zmm3{cccc}
	vcmpneqps k1{k2},zmm2,zmm3{dddd}
	vcmpneqps k1{k2},zmm2,zmm3{dacb}
	vcmpneqps k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx]{float16}
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vcmpneqps k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vcmpneqps k1{k2},zmm2,[rcx]{uint16}
	vcmpnleps k1{k2},zmm2,zmm3
	vcmpnleps k1{k2},zmm2,zmm3{dcba}
	vcmpnleps k1{k2},zmm2,zmm3{cdab}
	vcmpnleps k1{k2},zmm2,zmm3{badc}
	vcmpnleps k1{k2},zmm2,zmm3{aaaa}
	vcmpnleps k1{k2},zmm2,zmm3{bbbb}
	vcmpnleps k1{k2},zmm2,zmm3{cccc}
	vcmpnleps k1{k2},zmm2,zmm3{dddd}
	vcmpnleps k1{k2},zmm2,zmm3{dacb}
	vcmpnleps k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx]{float16}
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vcmpnleps k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vcmpnleps k1{k2},zmm2,[rcx]{uint16}
	vcmpnltps k1{k2},zmm2,zmm3
	vcmpnltps k1{k2},zmm2,zmm3{dcba}
	vcmpnltps k1{k2},zmm2,zmm3{cdab}
	vcmpnltps k1{k2},zmm2,zmm3{badc}
	vcmpnltps k1{k2},zmm2,zmm3{aaaa}
	vcmpnltps k1{k2},zmm2,zmm3{bbbb}
	vcmpnltps k1{k2},zmm2,zmm3{cccc}
	vcmpnltps k1{k2},zmm2,zmm3{dddd}
	vcmpnltps k1{k2},zmm2,zmm3{dacb}
	vcmpnltps k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx]{float16}
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vcmpnltps k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vcmpnltps k1{k2},zmm2,[rcx]{uint16}
	vcmpordps k1{k2},zmm2,zmm3
	vcmpordps k1{k2},zmm2,zmm3{dcba}
	vcmpordps k1{k2},zmm2,zmm3{cdab}
	vcmpordps k1{k2},zmm2,zmm3{badc}
	vcmpordps k1{k2},zmm2,zmm3{aaaa}
	vcmpordps k1{k2},zmm2,zmm3{bbbb}
	vcmpordps k1{k2},zmm2,zmm3{cccc}
	vcmpordps k1{k2},zmm2,zmm3{dddd}
	vcmpordps k1{k2},zmm2,zmm3{dacb}
	vcmpordps k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx]{float16}
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vcmpordps k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vcmpordps k1{k2},zmm2,[rcx]{uint16}
	vcmpunordps k1{k2},zmm2,zmm3
	vcmpunordps k1{k2},zmm2,zmm3{dcba}
	vcmpunordps k1{k2},zmm2,zmm3{cdab}
	vcmpunordps k1{k2},zmm2,zmm3{badc}
	vcmpunordps k1{k2},zmm2,zmm3{aaaa}
	vcmpunordps k1{k2},zmm2,zmm3{bbbb}
	vcmpunordps k1{k2},zmm2,zmm3{cccc}
	vcmpunordps k1{k2},zmm2,zmm3{dddd}
	vcmpunordps k1{k2},zmm2,zmm3{dacb}
	vcmpunordps k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx]{float16}
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vcmpunordps k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{uint16}
	vcmpunordps k1{k2},zmm2,[rcx]{uint16}

# Tests for op k1{k1}, v2, sd(v3/mt) with SAE only
	vcmpeqpd k1{k2},zmm2,zmm3
	vcmpeqpd k1{k2},zmm2,zmm3{dcba}
	vcmpeqpd k1{k2},zmm2,zmm3{cdab}
	vcmpeqpd k1{k2},zmm2,zmm3{badc}
	vcmpeqpd k1{k2},zmm2,zmm3{aaaa}
	vcmpeqpd k1{k2},zmm2,zmm3{bbbb}
	vcmpeqpd k1{k2},zmm2,zmm3{cccc}
	vcmpeqpd k1{k2},zmm2,zmm3{dddd}
	vcmpeqpd k1{k2},zmm2,zmm3{dacb}
	vcmpeqpd k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpeqpd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpeqpd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpeqpd k1{k2},zmm2,ZMMWORD PTR [rcx]{8to8}
	vcmpeqpd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to8}
	vcmpeqpd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to8}
	vcmpeqpd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vcmpeqpd k1{k2},zmm2,[rcx]{4to8}
	vcmplepd k1{k2},zmm2,zmm3
	vcmplepd k1{k2},zmm2,zmm3{dcba}
	vcmplepd k1{k2},zmm2,zmm3{cdab}
	vcmplepd k1{k2},zmm2,zmm3{badc}
	vcmplepd k1{k2},zmm2,zmm3{aaaa}
	vcmplepd k1{k2},zmm2,zmm3{bbbb}
	vcmplepd k1{k2},zmm2,zmm3{cccc}
	vcmplepd k1{k2},zmm2,zmm3{dddd}
	vcmplepd k1{k2},zmm2,zmm3{dacb}
	vcmplepd k1{k2},zmm2,zmm3{dacb},{sae}
	vcmplepd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmplepd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmplepd k1{k2},zmm2,ZMMWORD PTR [rcx]{8to8}
	vcmplepd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to8}
	vcmplepd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to8}
	vcmplepd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vcmplepd k1{k2},zmm2,[rcx]{4to8}
	vcmpltpd k1{k2},zmm2,zmm3
	vcmpltpd k1{k2},zmm2,zmm3{dcba}
	vcmpltpd k1{k2},zmm2,zmm3{cdab}
	vcmpltpd k1{k2},zmm2,zmm3{badc}
	vcmpltpd k1{k2},zmm2,zmm3{aaaa}
	vcmpltpd k1{k2},zmm2,zmm3{bbbb}
	vcmpltpd k1{k2},zmm2,zmm3{cccc}
	vcmpltpd k1{k2},zmm2,zmm3{dddd}
	vcmpltpd k1{k2},zmm2,zmm3{dacb}
	vcmpltpd k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpltpd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpltpd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpltpd k1{k2},zmm2,ZMMWORD PTR [rcx]{8to8}
	vcmpltpd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to8}
	vcmpltpd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to8}
	vcmpltpd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vcmpltpd k1{k2},zmm2,[rcx]{4to8}
	vcmpneqpd k1{k2},zmm2,zmm3
	vcmpneqpd k1{k2},zmm2,zmm3{dcba}
	vcmpneqpd k1{k2},zmm2,zmm3{cdab}
	vcmpneqpd k1{k2},zmm2,zmm3{badc}
	vcmpneqpd k1{k2},zmm2,zmm3{aaaa}
	vcmpneqpd k1{k2},zmm2,zmm3{bbbb}
	vcmpneqpd k1{k2},zmm2,zmm3{cccc}
	vcmpneqpd k1{k2},zmm2,zmm3{dddd}
	vcmpneqpd k1{k2},zmm2,zmm3{dacb}
	vcmpneqpd k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpneqpd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpneqpd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpneqpd k1{k2},zmm2,ZMMWORD PTR [rcx]{8to8}
	vcmpneqpd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to8}
	vcmpneqpd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to8}
	vcmpneqpd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vcmpneqpd k1{k2},zmm2,[rcx]{4to8}
	vcmpnlepd k1{k2},zmm2,zmm3
	vcmpnlepd k1{k2},zmm2,zmm3{dcba}
	vcmpnlepd k1{k2},zmm2,zmm3{cdab}
	vcmpnlepd k1{k2},zmm2,zmm3{badc}
	vcmpnlepd k1{k2},zmm2,zmm3{aaaa}
	vcmpnlepd k1{k2},zmm2,zmm3{bbbb}
	vcmpnlepd k1{k2},zmm2,zmm3{cccc}
	vcmpnlepd k1{k2},zmm2,zmm3{dddd}
	vcmpnlepd k1{k2},zmm2,zmm3{dacb}
	vcmpnlepd k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpnlepd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpnlepd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpnlepd k1{k2},zmm2,ZMMWORD PTR [rcx]{8to8}
	vcmpnlepd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to8}
	vcmpnlepd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to8}
	vcmpnlepd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vcmpnlepd k1{k2},zmm2,[rcx]{4to8}
	vcmpnltpd k1{k2},zmm2,zmm3
	vcmpnltpd k1{k2},zmm2,zmm3{dcba}
	vcmpnltpd k1{k2},zmm2,zmm3{cdab}
	vcmpnltpd k1{k2},zmm2,zmm3{badc}
	vcmpnltpd k1{k2},zmm2,zmm3{aaaa}
	vcmpnltpd k1{k2},zmm2,zmm3{bbbb}
	vcmpnltpd k1{k2},zmm2,zmm3{cccc}
	vcmpnltpd k1{k2},zmm2,zmm3{dddd}
	vcmpnltpd k1{k2},zmm2,zmm3{dacb}
	vcmpnltpd k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpnltpd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpnltpd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpnltpd k1{k2},zmm2,ZMMWORD PTR [rcx]{8to8}
	vcmpnltpd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to8}
	vcmpnltpd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to8}
	vcmpnltpd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vcmpnltpd k1{k2},zmm2,[rcx]{4to8}
	vcmpordpd k1{k2},zmm2,zmm3
	vcmpordpd k1{k2},zmm2,zmm3{dcba}
	vcmpordpd k1{k2},zmm2,zmm3{cdab}
	vcmpordpd k1{k2},zmm2,zmm3{badc}
	vcmpordpd k1{k2},zmm2,zmm3{aaaa}
	vcmpordpd k1{k2},zmm2,zmm3{bbbb}
	vcmpordpd k1{k2},zmm2,zmm3{cccc}
	vcmpordpd k1{k2},zmm2,zmm3{dddd}
	vcmpordpd k1{k2},zmm2,zmm3{dacb}
	vcmpordpd k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpordpd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpordpd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpordpd k1{k2},zmm2,ZMMWORD PTR [rcx]{8to8}
	vcmpordpd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to8}
	vcmpordpd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to8}
	vcmpordpd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vcmpordpd k1{k2},zmm2,[rcx]{4to8}
	vcmpunordpd k1{k2},zmm2,zmm3
	vcmpunordpd k1{k2},zmm2,zmm3{dcba}
	vcmpunordpd k1{k2},zmm2,zmm3{cdab}
	vcmpunordpd k1{k2},zmm2,zmm3{badc}
	vcmpunordpd k1{k2},zmm2,zmm3{aaaa}
	vcmpunordpd k1{k2},zmm2,zmm3{bbbb}
	vcmpunordpd k1{k2},zmm2,zmm3{cccc}
	vcmpunordpd k1{k2},zmm2,zmm3{dddd}
	vcmpunordpd k1{k2},zmm2,zmm3{dacb}
	vcmpunordpd k1{k2},zmm2,zmm3{dacb},{sae}
	vcmpunordpd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vcmpunordpd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vcmpunordpd k1{k2},zmm2,ZMMWORD PTR [rcx]{8to8}
	vcmpunordpd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to8}
	vcmpunordpd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to8}
	vcmpunordpd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vcmpunordpd k1{k2},zmm2,[rcx]{4to8}

# Tests for op k2{k1}, v2, si(v3/mt)
	vpcmpeqd k1{k2},zmm2,zmm3
	vpcmpeqd k1{k2},zmm2,zmm3{dcba}
	vpcmpeqd k1{k2},zmm2,zmm3{cdab}
	vpcmpeqd k1{k2},zmm2,zmm3{badc}
	vpcmpeqd k1{k2},zmm2,zmm3{aaaa}
	vpcmpeqd k1{k2},zmm2,zmm3{bbbb}
	vpcmpeqd k1{k2},zmm2,zmm3{cccc}
	vpcmpeqd k1{k2},zmm2,zmm3{dddd}
	vpcmpeqd k1{k2},zmm2,zmm3{dacb}
	vpcmpeqd k1{k2},zmm2,zmm3{eh}
	vpcmpeqd k1{k2},zmm2,zmm3{dcba}{eh}
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpcmpeqd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpcmpeqd k1{k2},zmm2,[rcx]{sint16}
	vpcmpgtd k1{k2},zmm2,zmm3
	vpcmpgtd k1{k2},zmm2,zmm3{dcba}
	vpcmpgtd k1{k2},zmm2,zmm3{cdab}
	vpcmpgtd k1{k2},zmm2,zmm3{badc}
	vpcmpgtd k1{k2},zmm2,zmm3{aaaa}
	vpcmpgtd k1{k2},zmm2,zmm3{bbbb}
	vpcmpgtd k1{k2},zmm2,zmm3{cccc}
	vpcmpgtd k1{k2},zmm2,zmm3{dddd}
	vpcmpgtd k1{k2},zmm2,zmm3{dacb}
	vpcmpgtd k1{k2},zmm2,zmm3{eh}
	vpcmpgtd k1{k2},zmm2,zmm3{dcba}{eh}
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpcmpgtd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpcmpgtd k1{k2},zmm2,[rcx]{sint16}
	vpcmpled k1{k2},zmm2,zmm3
	vpcmpled k1{k2},zmm2,zmm3{dcba}
	vpcmpled k1{k2},zmm2,zmm3{cdab}
	vpcmpled k1{k2},zmm2,zmm3{badc}
	vpcmpled k1{k2},zmm2,zmm3{aaaa}
	vpcmpled k1{k2},zmm2,zmm3{bbbb}
	vpcmpled k1{k2},zmm2,zmm3{cccc}
	vpcmpled k1{k2},zmm2,zmm3{dddd}
	vpcmpled k1{k2},zmm2,zmm3{dacb}
	vpcmpled k1{k2},zmm2,zmm3{eh}
	vpcmpled k1{k2},zmm2,zmm3{dcba}{eh}
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx]
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpcmpled k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpcmpled k1{k2},zmm2,[rcx]{sint16}
	vpcmpltd k1{k2},zmm2,zmm3
	vpcmpltd k1{k2},zmm2,zmm3{dcba}
	vpcmpltd k1{k2},zmm2,zmm3{cdab}
	vpcmpltd k1{k2},zmm2,zmm3{badc}
	vpcmpltd k1{k2},zmm2,zmm3{aaaa}
	vpcmpltd k1{k2},zmm2,zmm3{bbbb}
	vpcmpltd k1{k2},zmm2,zmm3{cccc}
	vpcmpltd k1{k2},zmm2,zmm3{dddd}
	vpcmpltd k1{k2},zmm2,zmm3{dacb}
	vpcmpltd k1{k2},zmm2,zmm3{eh}
	vpcmpltd k1{k2},zmm2,zmm3{dcba}{eh}
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpcmpltd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpcmpltd k1{k2},zmm2,[rcx]{sint16}
	vpcmpneqd k1{k2},zmm2,zmm3
	vpcmpneqd k1{k2},zmm2,zmm3{dcba}
	vpcmpneqd k1{k2},zmm2,zmm3{cdab}
	vpcmpneqd k1{k2},zmm2,zmm3{badc}
	vpcmpneqd k1{k2},zmm2,zmm3{aaaa}
	vpcmpneqd k1{k2},zmm2,zmm3{bbbb}
	vpcmpneqd k1{k2},zmm2,zmm3{cccc}
	vpcmpneqd k1{k2},zmm2,zmm3{dddd}
	vpcmpneqd k1{k2},zmm2,zmm3{dacb}
	vpcmpneqd k1{k2},zmm2,zmm3{eh}
	vpcmpneqd k1{k2},zmm2,zmm3{dcba}{eh}
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpcmpneqd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpcmpneqd k1{k2},zmm2,[rcx]{sint16}
	vpcmpnled k1{k2},zmm2,zmm3
	vpcmpnled k1{k2},zmm2,zmm3{dcba}
	vpcmpnled k1{k2},zmm2,zmm3{cdab}
	vpcmpnled k1{k2},zmm2,zmm3{badc}
	vpcmpnled k1{k2},zmm2,zmm3{aaaa}
	vpcmpnled k1{k2},zmm2,zmm3{bbbb}
	vpcmpnled k1{k2},zmm2,zmm3{cccc}
	vpcmpnled k1{k2},zmm2,zmm3{dddd}
	vpcmpnled k1{k2},zmm2,zmm3{dacb}
	vpcmpnled k1{k2},zmm2,zmm3{eh}
	vpcmpnled k1{k2},zmm2,zmm3{dcba}{eh}
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx]
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpcmpnled k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpcmpnled k1{k2},zmm2,[rcx]{sint16}
	vpcmpnltd k1{k2},zmm2,zmm3
	vpcmpnltd k1{k2},zmm2,zmm3{dcba}
	vpcmpnltd k1{k2},zmm2,zmm3{cdab}
	vpcmpnltd k1{k2},zmm2,zmm3{badc}
	vpcmpnltd k1{k2},zmm2,zmm3{aaaa}
	vpcmpnltd k1{k2},zmm2,zmm3{bbbb}
	vpcmpnltd k1{k2},zmm2,zmm3{cccc}
	vpcmpnltd k1{k2},zmm2,zmm3{dddd}
	vpcmpnltd k1{k2},zmm2,zmm3{dacb}
	vpcmpnltd k1{k2},zmm2,zmm3{eh}
	vpcmpnltd k1{k2},zmm2,zmm3{dcba}{eh}
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8}
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vpcmpnltd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vpcmpnltd k1{k2},zmm2,[rcx]{sint16}
	vptestmd k1{k2},zmm2,zmm3
	vptestmd k1{k2},zmm2,zmm3{dcba}
	vptestmd k1{k2},zmm2,zmm3{cdab}
	vptestmd k1{k2},zmm2,zmm3{badc}
	vptestmd k1{k2},zmm2,zmm3{aaaa}
	vptestmd k1{k2},zmm2,zmm3{bbbb}
	vptestmd k1{k2},zmm2,zmm3{cccc}
	vptestmd k1{k2},zmm2,zmm3{dddd}
	vptestmd k1{k2},zmm2,zmm3{dacb}
	vptestmd k1{k2},zmm2,zmm3{eh}
	vptestmd k1{k2},zmm2,zmm3{dcba}{eh}
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh}
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx]
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16}
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16}
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16}
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8}
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8}
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16}
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16}
	vptestmd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16}
	vptestmd k1{k2},zmm2,[rcx]{sint16}

# Tests for op k1{k1}, v2, sf(v3/mt), imm8 with SAE only
	vcmpps k1{k2},zmm2,zmm3,100
	vcmpps k1{k2},zmm2,zmm3{dcba},100
	vcmpps k1{k2},zmm2,zmm3{cdab},100
	vcmpps k1{k2},zmm2,zmm3{badc},100
	vcmpps k1{k2},zmm2,zmm3{aaaa},100
	vcmpps k1{k2},zmm2,zmm3{bbbb},100
	vcmpps k1{k2},zmm2,zmm3{cccc},100
	vcmpps k1{k2},zmm2,zmm3{dddd},100
	vcmpps k1{k2},zmm2,zmm3{dacb},100
	vcmpps k1{k2},zmm2,zmm3{dacb},100,{sae}
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx]{eh},100
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx],100
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16},100
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16},100
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16},100
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8},100
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx]{float16},100
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16},100
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16},100
	vcmpps k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{uint16},100
	vcmpps k1{k2},zmm2,[rcx]{uint16},100

# Tests for op k1{k1}, v2, sd(v3/mt), imm8 with SAE only
	vcmppd k1{k2},zmm2,zmm3,100
	vcmppd k1{k2},zmm2,zmm3{dcba},100
	vcmppd k1{k2},zmm2,zmm3{cdab},100
	vcmppd k1{k2},zmm2,zmm3{badc},100
	vcmppd k1{k2},zmm2,zmm3{aaaa},100
	vcmppd k1{k2},zmm2,zmm3{bbbb},100
	vcmppd k1{k2},zmm2,zmm3{cccc},100
	vcmppd k1{k2},zmm2,zmm3{dddd},100
	vcmppd k1{k2},zmm2,zmm3{dacb},100
	vcmppd k1{k2},zmm2,zmm3{dacb},100,{sae}
	vcmppd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh},100
	vcmppd k1{k2},zmm2,ZMMWORD PTR [rcx],100
	vcmppd k1{k2},zmm2,ZMMWORD PTR [rcx]{8to8},100
	vcmppd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to8},100
	vcmppd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to8},100
	vcmppd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{4to8},100
	vcmppd k1{k2},zmm2,[rcx]{4to8},100

# Tests for op k2{k1}, v2, si(v3/mt), imm8
	vpcmpd k1{k2},zmm2,zmm3,100
	vpcmpd k1{k2},zmm2,zmm3{dcba},100
	vpcmpd k1{k2},zmm2,zmm3{cdab},100
	vpcmpd k1{k2},zmm2,zmm3{badc},100
	vpcmpd k1{k2},zmm2,zmm3{aaaa},100
	vpcmpd k1{k2},zmm2,zmm3{bbbb},100
	vpcmpd k1{k2},zmm2,zmm3{cccc},100
	vpcmpd k1{k2},zmm2,zmm3{dddd},100
	vpcmpd k1{k2},zmm2,zmm3{dacb},100
	vpcmpd k1{k2},zmm2,zmm3{eh},100
	vpcmpd k1{k2},zmm2,zmm3{dcba}{eh},100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx]{eh},100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx],100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16},100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16},100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16},100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8},100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8},100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16},100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16},100
	vpcmpd k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16},100
	vpcmpd k1{k2},zmm2,[rcx]{sint16},100
	vpcmpud k1{k2},zmm2,zmm3,100
	vpcmpud k1{k2},zmm2,zmm3{dcba},100
	vpcmpud k1{k2},zmm2,zmm3{cdab},100
	vpcmpud k1{k2},zmm2,zmm3{badc},100
	vpcmpud k1{k2},zmm2,zmm3{aaaa},100
	vpcmpud k1{k2},zmm2,zmm3{bbbb},100
	vpcmpud k1{k2},zmm2,zmm3{cccc},100
	vpcmpud k1{k2},zmm2,zmm3{dddd},100
	vpcmpud k1{k2},zmm2,zmm3{dacb},100
	vpcmpud k1{k2},zmm2,zmm3{eh},100
	vpcmpud k1{k2},zmm2,zmm3{dcba}{eh},100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx]{eh},100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx],100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx]{16to16},100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx]{1to16},100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx]{4to16},100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx]{uint8},100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx]{sint8},100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx]{uint16},100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx]{sint16},100
	vpcmpud k1{k2},zmm2,ZMMWORD PTR [rcx+0x80]{sint16},100
	vpcmpud k1{k2},zmm2,[rcx]{sint16},100

# Tests for op v1{k1}, v2, sq(v3/mt)
	vpandq zmm1{k1},zmm2,zmm3
	vpandq zmm1{k1},zmm2,zmm3{dcba}
	vpandq zmm1{k1},zmm2,zmm3{cdab}
	vpandq zmm1{k1},zmm2,zmm3{badc}
	vpandq zmm1{k1},zmm2,zmm3{aaaa}
	vpandq zmm1{k1},zmm2,zmm3{bbbb}
	vpandq zmm1{k1},zmm2,zmm3{cccc}
	vpandq zmm1{k1},zmm2,zmm3{dddd}
	vpandq zmm1{k1},zmm2,zmm3{dacb}
	vpandq zmm1{k1},zmm2,zmm3{eh}
	vpandq zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpandq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpandq zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpandq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vpandq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vpandq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vpandq zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vpandq zmm1{k1},zmm2,[rcx]{4to8}
	vpandnq zmm1{k1},zmm2,zmm3
	vpandnq zmm1{k1},zmm2,zmm3{dcba}
	vpandnq zmm1{k1},zmm2,zmm3{cdab}
	vpandnq zmm1{k1},zmm2,zmm3{badc}
	vpandnq zmm1{k1},zmm2,zmm3{aaaa}
	vpandnq zmm1{k1},zmm2,zmm3{bbbb}
	vpandnq zmm1{k1},zmm2,zmm3{cccc}
	vpandnq zmm1{k1},zmm2,zmm3{dddd}
	vpandnq zmm1{k1},zmm2,zmm3{dacb}
	vpandnq zmm1{k1},zmm2,zmm3{eh}
	vpandnq zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpandnq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpandnq zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpandnq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vpandnq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vpandnq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vpandnq zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vpandnq zmm1{k1},zmm2,[rcx]{4to8}
	vpblendmq zmm1{k1},zmm2,zmm3
	vpblendmq zmm1{k1},zmm2,zmm3{dcba}
	vpblendmq zmm1{k1},zmm2,zmm3{cdab}
	vpblendmq zmm1{k1},zmm2,zmm3{badc}
	vpblendmq zmm1{k1},zmm2,zmm3{aaaa}
	vpblendmq zmm1{k1},zmm2,zmm3{bbbb}
	vpblendmq zmm1{k1},zmm2,zmm3{cccc}
	vpblendmq zmm1{k1},zmm2,zmm3{dddd}
	vpblendmq zmm1{k1},zmm2,zmm3{dacb}
	vpblendmq zmm1{k1},zmm2,zmm3{eh}
	vpblendmq zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpblendmq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpblendmq zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpblendmq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vpblendmq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vpblendmq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vpblendmq zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vpblendmq zmm1{k1},zmm2,[rcx]{4to8}
	vporq zmm1{k1},zmm2,zmm3
	vporq zmm1{k1},zmm2,zmm3{dcba}
	vporq zmm1{k1},zmm2,zmm3{cdab}
	vporq zmm1{k1},zmm2,zmm3{badc}
	vporq zmm1{k1},zmm2,zmm3{aaaa}
	vporq zmm1{k1},zmm2,zmm3{bbbb}
	vporq zmm1{k1},zmm2,zmm3{cccc}
	vporq zmm1{k1},zmm2,zmm3{dddd}
	vporq zmm1{k1},zmm2,zmm3{dacb}
	vporq zmm1{k1},zmm2,zmm3{eh}
	vporq zmm1{k1},zmm2,zmm3{dcba}{eh}
	vporq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vporq zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vporq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vporq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vporq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vporq zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vporq zmm1{k1},zmm2,[rcx]{4to8}
	vpxorq zmm1{k1},zmm2,zmm3
	vpxorq zmm1{k1},zmm2,zmm3{dcba}
	vpxorq zmm1{k1},zmm2,zmm3{cdab}
	vpxorq zmm1{k1},zmm2,zmm3{badc}
	vpxorq zmm1{k1},zmm2,zmm3{aaaa}
	vpxorq zmm1{k1},zmm2,zmm3{bbbb}
	vpxorq zmm1{k1},zmm2,zmm3{cccc}
	vpxorq zmm1{k1},zmm2,zmm3{dddd}
	vpxorq zmm1{k1},zmm2,zmm3{dacb}
	vpxorq zmm1{k1},zmm2,zmm3{eh}
	vpxorq zmm1{k1},zmm2,zmm3{dcba}{eh}
	vpxorq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{eh}
	vpxorq zmm1{k1},zmm2,ZMMWORD PTR [rcx]
	vpxorq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{8to8}
	vpxorq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{1to8}
	vpxorq zmm1{k1},zmm2,ZMMWORD PTR [rcx]{4to8}
	vpxorq zmm1{k1},zmm2,ZMMWORD PTR [rcx+0x80]{4to8}
	vpxorq zmm1{k1},zmm2,[rcx]{4to8}

# Tests for op v1{k1}, sbroadcastonlyhalf(v2/mt)
	vcvtdq2pd zmm1{k1},zmm3
	vcvtdq2pd zmm1{k1},ymm3
	vcvtdq2pd zmm1{k1},zmm3{dcba}
	vcvtdq2pd zmm1{k1},ymm3{dcba}
	vcvtdq2pd zmm1{k1},zmm3{cdab}
	vcvtdq2pd zmm1{k1},ymm3{cdab}
	vcvtdq2pd zmm1{k1},zmm3{badc}
	vcvtdq2pd zmm1{k1},ymm3{badc}
	vcvtdq2pd zmm1{k1},zmm3{aaaa}
	vcvtdq2pd zmm1{k1},ymm3{aaaa}
	vcvtdq2pd zmm1{k1},zmm3{bbbb}
	vcvtdq2pd zmm1{k1},ymm3{bbbb}
	vcvtdq2pd zmm1{k1},zmm3{cccc}
	vcvtdq2pd zmm1{k1},ymm3{cccc}
	vcvtdq2pd zmm1{k1},zmm3{dddd}
	vcvtdq2pd zmm1{k1},ymm3{dddd}
	vcvtdq2pd zmm1{k1},zmm3{dacb}
	vcvtdq2pd zmm1{k1},ymm3{dacb}
	vcvtdq2pd zmm1{k1},zmm3{eh}
	vcvtdq2pd zmm1{k1},ymm3{eh}
	vcvtdq2pd zmm1{k1},zmm3{dcba}{eh}
	vcvtdq2pd zmm1{k1},ymm3{dcba}{eh}
	vcvtdq2pd zmm1{k1},YMMWORD PTR [rcx]{eh}
	vcvtdq2pd zmm1{k1},YMMWORD PTR [rcx]
	vcvtdq2pd zmm1{k1},YMMWORD PTR [rcx+0x80]
	vcvtdq2pd zmm1{k1},YMMWORD PTR [rcx]{8to8}
	vcvtdq2pd zmm1{k1},YMMWORD PTR [rcx+0x80]{8to8}
	vcvtdq2pd zmm1{k1},YMMWORD PTR [rcx]{1to8}
	vcvtdq2pd zmm1{k1},YMMWORD PTR [rcx+0x80]{1to8}
	vcvtdq2pd zmm1{k1},YMMWORD PTR [rcx]{4to8}
	vcvtdq2pd zmm1{k1},YMMWORD PTR [rcx+0x80]{4to8}
	vcvtdq2pd zmm1{k1},[rcx]{4to8}
	vcvtps2pd zmm1{k1},zmm3
	vcvtps2pd zmm1{k1},ymm3
	vcvtps2pd zmm1{k1},zmm3{dcba}
	vcvtps2pd zmm1{k1},ymm3{dcba}
	vcvtps2pd zmm1{k1},zmm3{cdab}
	vcvtps2pd zmm1{k1},ymm3{cdab}
	vcvtps2pd zmm1{k1},zmm3{badc}
	vcvtps2pd zmm1{k1},ymm3{badc}
	vcvtps2pd zmm1{k1},zmm3{aaaa}
	vcvtps2pd zmm1{k1},ymm3{aaaa}
	vcvtps2pd zmm1{k1},zmm3{bbbb}
	vcvtps2pd zmm1{k1},ymm3{bbbb}
	vcvtps2pd zmm1{k1},zmm3{cccc}
	vcvtps2pd zmm1{k1},ymm3{cccc}
	vcvtps2pd zmm1{k1},zmm3{dddd}
	vcvtps2pd zmm1{k1},ymm3{dddd}
	vcvtps2pd zmm1{k1},zmm3{dacb}
	vcvtps2pd zmm1{k1},ymm3{dacb}
	vcvtps2pd zmm1{k1},zmm3{eh}
	vcvtps2pd zmm1{k1},ymm3{eh}
	vcvtps2pd zmm1{k1},zmm3{dcba}{eh}
	vcvtps2pd zmm1{k1},ymm3{dcba}{eh}
	vcvtps2pd zmm1{k1},YMMWORD PTR [rcx]{eh}
	vcvtps2pd zmm1{k1},YMMWORD PTR [rcx]
	vcvtps2pd zmm1{k1},YMMWORD PTR [rcx+0x80]
	vcvtps2pd zmm1{k1},YMMWORD PTR [rcx]{8to8}
	vcvtps2pd zmm1{k1},YMMWORD PTR [rcx+0x80]{8to8}
	vcvtps2pd zmm1{k1},YMMWORD PTR [rcx]{1to8}
	vcvtps2pd zmm1{k1},YMMWORD PTR [rcx+0x80]{1to8}
	vcvtps2pd zmm1{k1},YMMWORD PTR [rcx]{4to8}
	vcvtps2pd zmm1{k1},YMMWORD PTR [rcx+0x80]{4to8}
	vcvtps2pd zmm1{k1},[rcx]{4to8}
	vcvtudq2pd zmm1{k1},zmm3
	vcvtudq2pd zmm1{k1},ymm3
	vcvtudq2pd zmm1{k1},zmm3{dcba}
	vcvtudq2pd zmm1{k1},ymm3{dcba}
	vcvtudq2pd zmm1{k1},zmm3{cdab}
	vcvtudq2pd zmm1{k1},ymm3{cdab}
	vcvtudq2pd zmm1{k1},zmm3{badc}
	vcvtudq2pd zmm1{k1},ymm3{badc}
	vcvtudq2pd zmm1{k1},zmm3{aaaa}
	vcvtudq2pd zmm1{k1},ymm3{aaaa}
	vcvtudq2pd zmm1{k1},zmm3{bbbb}
	vcvtudq2pd zmm1{k1},ymm3{bbbb}
	vcvtudq2pd zmm1{k1},zmm3{cccc}
	vcvtudq2pd zmm1{k1},ymm3{cccc}
	vcvtudq2pd zmm1{k1},zmm3{dddd}
	vcvtudq2pd zmm1{k1},ymm3{dddd}
	vcvtudq2pd zmm1{k1},zmm3{dacb}
	vcvtudq2pd zmm1{k1},ymm3{dacb}
	vcvtudq2pd zmm1{k1},zmm3{eh}
	vcvtudq2pd zmm1{k1},ymm3{eh}
	vcvtudq2pd zmm1{k1},zmm3{dcba}{eh}
	vcvtudq2pd zmm1{k1},ymm3{dcba}{eh}
	vcvtudq2pd zmm1{k1},YMMWORD PTR [rcx]{eh}
	vcvtudq2pd zmm1{k1},YMMWORD PTR [rcx]
	vcvtudq2pd zmm1{k1},YMMWORD PTR [rcx+0x80]
	vcvtudq2pd zmm1{k1},YMMWORD PTR [rcx]{8to8}
	vcvtudq2pd zmm1{k1},YMMWORD PTR [rcx+0x80]{8to8}
	vcvtudq2pd zmm1{k1},YMMWORD PTR [rcx]{1to8}
	vcvtudq2pd zmm1{k1},YMMWORD PTR [rcx+0x80]{1to8}
	vcvtudq2pd zmm1{k1},YMMWORD PTR [rcx]{4to8}
	vcvtudq2pd zmm1{k1},YMMWORD PTR [rcx+0x80]{4to8}
	vcvtudq2pd zmm1{k1},[rcx]{4to8}

# Tests for op v1{k1}, sf(v2/mt) with SAE
	vgetexpps zmm1{k1},zmm3
	vgetexpps zmm1{k1},zmm3{dcba}
	vgetexpps zmm1{k1},zmm3{cdab}
	vgetexpps zmm1{k1},zmm3{badc}
	vgetexpps zmm1{k1},zmm3{aaaa}
	vgetexpps zmm1{k1},zmm3{bbbb}
	vgetexpps zmm1{k1},zmm3{cccc}
	vgetexpps zmm1{k1},zmm3{dddd}
	vgetexpps zmm1{k1},zmm3{dacb}
	vgetexpps zmm1{k1},zmm3,{sae}
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx]
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx]{16to16}
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx]{1to16}
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx]{4to16}
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx]{float16}
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vgetexpps zmm1{k1},ZMMWORD PTR [rcx+0x80]{uint16}
	vgetexpps zmm1{k1},[rcx]{uint16}

#Test for op v1{k1}, sd(v2/mt) with SAE
	vgetexppd zmm1{k1},zmm3
	vgetexppd zmm1{k1},zmm3{dcba}
	vgetexppd zmm1{k1},zmm3{cdab}
	vgetexppd zmm1{k1},zmm3{badc}
	vgetexppd zmm1{k1},zmm3{aaaa}
	vgetexppd zmm1{k1},zmm3{bbbb}
	vgetexppd zmm1{k1},zmm3{cccc}
	vgetexppd zmm1{k1},zmm3{dddd}
	vgetexppd zmm1{k1},zmm3{dacb}
	vgetexppd zmm1{k1},ZMMWORD PTR [rcx]
	vgetexppd zmm1{k1},ZMMWORD PTR [rcx]{8to8}
	vgetexppd zmm1{k1},ZMMWORD PTR [rcx]{1to8}
	vgetexppd zmm1{k1},ZMMWORD PTR [rcx]{4to8}
	vgetexppd zmm1{k1},zmm3,{sae}
	vgetexppd zmm1{k1},ZMMWORD PTR [rcx]{eh}{4to8}
	vgetexppd zmm1{k1},ZMMWORD PTR [rcx+0x80]{4to8}
	vgetexppd zmm1{k1},[rcx]{4to8}

# Tests for op v1{k1}, sd(v2/mt) with rounding
	vcvtpd2ps zmm1{k1},zmm2
	vcvtpd2ps zmm1{k1},zmm2{dcba}
	vcvtpd2ps zmm1{k1},zmm2{cdab}
	vcvtpd2ps zmm1{k1},zmm2{badc}
	vcvtpd2ps zmm1{k1},zmm2{aaaa}
	vcvtpd2ps zmm1{k1},zmm2{bbbb}
	vcvtpd2ps zmm1{k1},zmm2{cccc}
	vcvtpd2ps zmm1{k1},zmm2{dddd}
	vcvtpd2ps zmm1{k1},zmm2{dacb}
	vcvtpd2ps zmm1{k1},zmm2,{rn}
	vcvtpd2ps zmm1{k1},zmm2,{rd}
	vcvtpd2ps zmm1{k1},zmm2,{ru}
	vcvtpd2ps zmm1{k1},zmm2,{rz}
	vcvtpd2ps zmm1{k1},zmm2,{sae}
	vcvtpd2ps zmm1{k1},zmm2,{rn-sae}
	vcvtpd2ps zmm1{k1},zmm2,{rd-sae}
	vcvtpd2ps zmm1{k1},zmm2,{ru-sae}
	vcvtpd2ps zmm1{k1},zmm2,{rz-sae}
	vcvtpd2ps zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vcvtpd2ps zmm1{k1},ZMMWORD PTR [rcx]
	vcvtpd2ps zmm1{k1},ZMMWORD PTR [rcx]{8to8}
	vcvtpd2ps zmm1{k1},ZMMWORD PTR [rcx]{1to8}
	vcvtpd2ps zmm1{k1},ZMMWORD PTR [rcx]{4to8}
	vcvtpd2ps zmm1{k1},ZMMWORD PTR [rcx+0x80]{4to8}
	vcvtpd2ps zmm1{k1},[rcx]{4to8}

# Tests for op v1{k1}, sf(v2/mt), imm8 with SAE
	vcvtfxpntps2dq zmm1{k1},zmm3,7
	vcvtfxpntps2dq zmm1{k1},zmm3{dcba},7
	vcvtfxpntps2dq zmm1{k1},zmm3{cdab},7
	vcvtfxpntps2dq zmm1{k1},zmm3{badc},7
	vcvtfxpntps2dq zmm1{k1},zmm3{aaaa},7
	vcvtfxpntps2dq zmm1{k1},zmm3{bbbb},7
	vcvtfxpntps2dq zmm1{k1},zmm3{cccc},7
	vcvtfxpntps2dq zmm1{k1},zmm3{dddd},7
	vcvtfxpntps2dq zmm1{k1},zmm3{dacb},7
	vcvtfxpntps2dq zmm1{k1},zmm3,7,{sae}
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx],7
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx]{16to16},7
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx]{1to16},7
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx]{4to16},7
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx]{uint8},7
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx]{float16},7
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx]{sint16},7
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx]{uint16},7
	vcvtfxpntps2dq zmm1{k1},ZMMWORD PTR [rcx+0x80]{uint16},7
	vcvtfxpntps2dq zmm1{k1},[rcx]{uint16},7
	vcvtfxpntps2udq zmm1{k1},zmm3,7
	vcvtfxpntps2udq zmm1{k1},zmm3{dcba},7
	vcvtfxpntps2udq zmm1{k1},zmm3{cdab},7
	vcvtfxpntps2udq zmm1{k1},zmm3{badc},7
	vcvtfxpntps2udq zmm1{k1},zmm3{aaaa},7
	vcvtfxpntps2udq zmm1{k1},zmm3{bbbb},7
	vcvtfxpntps2udq zmm1{k1},zmm3{cccc},7
	vcvtfxpntps2udq zmm1{k1},zmm3{dddd},7
	vcvtfxpntps2udq zmm1{k1},zmm3{dacb},7
	vcvtfxpntps2udq zmm1{k1},zmm3,7,{sae}
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx],7
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx]{16to16},7
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx]{1to16},7
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx]{4to16},7
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx]{uint8},7
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx]{float16},7
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx]{sint16},7
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx]{uint16},7
	vcvtfxpntps2udq zmm1{k1},ZMMWORD PTR [rcx+0x80]{uint16},7
	vcvtfxpntps2udq zmm1{k1},[rcx]{uint16},7
	vrndfxpntps zmm1{k1},zmm3,7
	vrndfxpntps zmm1{k1},zmm3{dcba},7
	vrndfxpntps zmm1{k1},zmm3{cdab},7
	vrndfxpntps zmm1{k1},zmm3{badc},7
	vrndfxpntps zmm1{k1},zmm3{aaaa},7
	vrndfxpntps zmm1{k1},zmm3{bbbb},7
	vrndfxpntps zmm1{k1},zmm3{cccc},7
	vrndfxpntps zmm1{k1},zmm3{dddd},7
	vrndfxpntps zmm1{k1},zmm3{dacb},7
	vrndfxpntps zmm1{k1},zmm3,7,{sae}
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx],7
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx]{16to16},7
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx]{1to16},7
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx]{4to16},7
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx]{uint8},7
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx]{float16},7
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx]{sint16},7
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx]{uint16},7
	vrndfxpntps zmm1{k1},ZMMWORD PTR [rcx+0x80]{uint16},7
	vrndfxpntps zmm1{k1},[rcx]{uint16},7
	vgetmantps zmm1{k1},zmm3,7
	vgetmantps zmm1{k1},zmm3{dcba},7
	vgetmantps zmm1{k1},zmm3{cdab},7
	vgetmantps zmm1{k1},zmm3{badc},7
	vgetmantps zmm1{k1},zmm3{aaaa},7
	vgetmantps zmm1{k1},zmm3{bbbb},7
	vgetmantps zmm1{k1},zmm3{cccc},7
	vgetmantps zmm1{k1},zmm3{dddd},7
	vgetmantps zmm1{k1},zmm3{dacb},7
	vgetmantps zmm1{k1},zmm3,7,{sae}
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx],7
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx]{16to16},7
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx]{1to16},7
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx]{4to16},7
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx]{uint8},7
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx]{float16},7
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx]{sint16},7
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx]{uint16},7
	vgetmantps zmm1{k1},ZMMWORD PTR [rcx+0x80]{uint16},7
	vgetmantps zmm1{k1},[rcx]{uint16},7

# Tests for op v1{k1}, sd(v2/mt), imm8 with SAE
	vcvtfxpntpd2dq zmm1{k1},zmm3,7
	vcvtfxpntpd2dq zmm1{k1},zmm3{dcba},7
	vcvtfxpntpd2dq zmm1{k1},zmm3{cdab},7
	vcvtfxpntpd2dq zmm1{k1},zmm3{badc},7
	vcvtfxpntpd2dq zmm1{k1},zmm3{aaaa},7
	vcvtfxpntpd2dq zmm1{k1},zmm3{bbbb},7
	vcvtfxpntpd2dq zmm1{k1},zmm3{cccc},7
	vcvtfxpntpd2dq zmm1{k1},zmm3{dddd},7
	vcvtfxpntpd2dq zmm1{k1},zmm3{dacb},7
	vcvtfxpntpd2dq zmm1{k1},zmm3,7,{sae}
	vcvtfxpntpd2dq zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vcvtfxpntpd2dq zmm1{k1},ZMMWORD PTR [rcx],7
	vcvtfxpntpd2dq zmm1{k1},ZMMWORD PTR [rcx]{8to8},7
	vcvtfxpntpd2dq zmm1{k1},ZMMWORD PTR [rcx]{1to8},7
	vcvtfxpntpd2dq zmm1{k1},ZMMWORD PTR [rcx]{4to8},7
	vcvtfxpntpd2dq zmm1{k1},ZMMWORD PTR [rcx+0x80]{4to8},7
	vcvtfxpntpd2dq zmm1{k1},[rcx]{4to8},7
	vcvtfxpntpd2udq zmm1{k1},zmm3,7
	vcvtfxpntpd2udq zmm1{k1},zmm3{dcba},7
	vcvtfxpntpd2udq zmm1{k1},zmm3{cdab},7
	vcvtfxpntpd2udq zmm1{k1},zmm3{badc},7
	vcvtfxpntpd2udq zmm1{k1},zmm3{aaaa},7
	vcvtfxpntpd2udq zmm1{k1},zmm3{bbbb},7
	vcvtfxpntpd2udq zmm1{k1},zmm3{cccc},7
	vcvtfxpntpd2udq zmm1{k1},zmm3{dddd},7
	vcvtfxpntpd2udq zmm1{k1},zmm3{dacb},7
	vcvtfxpntpd2udq zmm1{k1},zmm3,7,{sae}
	vcvtfxpntpd2udq zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vcvtfxpntpd2udq zmm1{k1},ZMMWORD PTR [rcx],7
	vcvtfxpntpd2udq zmm1{k1},ZMMWORD PTR [rcx]{8to8},7
	vcvtfxpntpd2udq zmm1{k1},ZMMWORD PTR [rcx]{1to8},7
	vcvtfxpntpd2udq zmm1{k1},ZMMWORD PTR [rcx]{4to8},7
	vcvtfxpntpd2udq zmm1{k1},ZMMWORD PTR [rcx+0x80]{4to8},7
	vcvtfxpntpd2udq zmm1{k1},[rcx]{4to8},7
	vrndfxpntpd zmm1{k1},zmm3,7
	vrndfxpntpd zmm1{k1},zmm3{dcba},7
	vrndfxpntpd zmm1{k1},zmm3{cdab},7
	vrndfxpntpd zmm1{k1},zmm3{badc},7
	vrndfxpntpd zmm1{k1},zmm3{aaaa},7
	vrndfxpntpd zmm1{k1},zmm3{bbbb},7
	vrndfxpntpd zmm1{k1},zmm3{cccc},7
	vrndfxpntpd zmm1{k1},zmm3{dddd},7
	vrndfxpntpd zmm1{k1},zmm3{dacb},7
	vrndfxpntpd zmm1{k1},zmm3,7,{sae}
	vrndfxpntpd zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vrndfxpntpd zmm1{k1},ZMMWORD PTR [rcx],7
	vrndfxpntpd zmm1{k1},ZMMWORD PTR [rcx]{8to8},7
	vrndfxpntpd zmm1{k1},ZMMWORD PTR [rcx]{1to8},7
	vrndfxpntpd zmm1{k1},ZMMWORD PTR [rcx]{4to8},7
	vrndfxpntpd zmm1{k1},ZMMWORD PTR [rcx+0x80]{4to8},7
	vrndfxpntpd zmm1{k1},[rcx]{4to8},7
	vgetmantpd zmm1{k1},zmm3,7
	vgetmantpd zmm1{k1},zmm3{dcba},7
	vgetmantpd zmm1{k1},zmm3{cdab},7
	vgetmantpd zmm1{k1},zmm3{badc},7
	vgetmantpd zmm1{k1},zmm3{aaaa},7
	vgetmantpd zmm1{k1},zmm3{bbbb},7
	vgetmantpd zmm1{k1},zmm3{cccc},7
	vgetmantpd zmm1{k1},zmm3{dddd},7
	vgetmantpd zmm1{k1},zmm3{dacb},7
	vgetmantpd zmm1{k1},zmm3,7,{sae}
	vgetmantpd zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vgetmantpd zmm1{k1},ZMMWORD PTR [rcx],7
	vgetmantpd zmm1{k1},ZMMWORD PTR [rcx]{8to8},7
	vgetmantpd zmm1{k1},ZMMWORD PTR [rcx]{1to8},7
	vgetmantpd zmm1{k1},ZMMWORD PTR [rcx]{4to8},7
	vgetmantpd zmm1{k1},ZMMWORD PTR [rcx+0x80]{4to8},7
	vgetmantpd zmm1{k1},[rcx]{4to8},7

# Tests for op v1{k1}, Si32(v2/mt), imm8
	vpslld zmm1{k1},zmm3,7
	vpslld zmm1{k1},zmm3{dcba},7
	vpslld zmm1{k1},zmm3{cdab},7
	vpslld zmm1{k1},zmm3{badc},7
	vpslld zmm1{k1},zmm3{aaaa},7
	vpslld zmm1{k1},zmm3{bbbb},7
	vpslld zmm1{k1},zmm3{cccc},7
	vpslld zmm1{k1},zmm3{dddd},7
	vpslld zmm1{k1},zmm3{dacb},7
	vpslld zmm1{k1},zmm3{eh},7
	vpslld zmm1{k1},zmm3{dcba}{eh},7
	vpslld zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vpslld zmm1{k1},ZMMWORD PTR [rcx],7
	vpslld zmm1{k1},ZMMWORD PTR [rcx]{16to16},7
	vpslld zmm1{k1},ZMMWORD PTR [rcx]{1to16},7
	vpslld zmm1{k1},ZMMWORD PTR [rcx]{4to16},7
	vpslld zmm1{k1},ZMMWORD PTR [rcx]{uint8},7
	vpslld zmm1{k1},ZMMWORD PTR [rcx]{sint8},7
	vpslld zmm1{k1},ZMMWORD PTR [rcx]{uint16},7
	vpslld zmm1{k1},ZMMWORD PTR [rcx]{sint16},7
	vpslld zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16},7
	vpslld zmm1{k1},[rcx]{sint16},7
	vpsrad zmm1{k1},zmm3,7
	vpsrad zmm1{k1},zmm3{dcba},7
	vpsrad zmm1{k1},zmm3{cdab},7
	vpsrad zmm1{k1},zmm3{badc},7
	vpsrad zmm1{k1},zmm3{aaaa},7
	vpsrad zmm1{k1},zmm3{bbbb},7
	vpsrad zmm1{k1},zmm3{cccc},7
	vpsrad zmm1{k1},zmm3{dddd},7
	vpsrad zmm1{k1},zmm3{dacb},7
	vpsrad zmm1{k1},zmm3{eh},7
	vpsrad zmm1{k1},zmm3{dcba}{eh},7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx],7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx]{16to16},7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx]{1to16},7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx]{4to16},7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx]{uint8},7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx]{sint8},7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx]{uint16},7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx]{sint16},7
	vpsrad zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16},7
	vpsrad zmm1{k1},[rcx]{sint16},7
	vpsrld zmm1{k1},zmm3,7
	vpsrld zmm1{k1},zmm3{dcba},7
	vpsrld zmm1{k1},zmm3{cdab},7
	vpsrld zmm1{k1},zmm3{badc},7
	vpsrld zmm1{k1},zmm3{aaaa},7
	vpsrld zmm1{k1},zmm3{bbbb},7
	vpsrld zmm1{k1},zmm3{cccc},7
	vpsrld zmm1{k1},zmm3{dddd},7
	vpsrld zmm1{k1},zmm3{dacb},7
	vpsrld zmm1{k1},zmm3{eh},7
	vpsrld zmm1{k1},zmm3{dcba}{eh},7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx],7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx]{16to16},7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx]{1to16},7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx]{4to16},7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx]{uint8},7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx]{sint8},7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx]{uint16},7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx]{sint16},7
	vpsrld zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16},7
	vpsrld zmm1{k1},[rcx]{sint16},7

# Tests for op v1{k1}, Si32(v2/mt), imm8 with rounding
	vcvtfxpntdq2ps zmm1{k1},zmm3,7
	vcvtfxpntdq2ps zmm1{k1},zmm3{dcba},7
	vcvtfxpntdq2ps zmm1{k1},zmm3{cdab},7
	vcvtfxpntdq2ps zmm1{k1},zmm3{badc},7
	vcvtfxpntdq2ps zmm1{k1},zmm3{aaaa},7
	vcvtfxpntdq2ps zmm1{k1},zmm3{bbbb},7
	vcvtfxpntdq2ps zmm1{k1},zmm3{cccc},7
	vcvtfxpntdq2ps zmm1{k1},zmm3{dddd},7
	vcvtfxpntdq2ps zmm1{k1},zmm3{dacb},7
	vcvtfxpntdq2ps zmm1{k1},zmm3,{rn},7
	vcvtfxpntdq2ps zmm1{k1},zmm3,{rd},7
	vcvtfxpntdq2ps zmm1{k1},zmm3,{ru},7
	vcvtfxpntdq2ps zmm1{k1},zmm3,{rz},7
	vcvtfxpntdq2ps zmm1{k1},zmm3,{sae},7
	vcvtfxpntdq2ps zmm1{k1},zmm3,{rn-sae},7
	vcvtfxpntdq2ps zmm1{k1},zmm3,{rd-sae},7
	vcvtfxpntdq2ps zmm1{k1},zmm3,{ru-sae},7
	vcvtfxpntdq2ps zmm1{k1},zmm3,{rz-sae},7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx],7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx]{16to16},7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx]{1to16},7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx]{4to16},7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx]{uint8},7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx]{sint8},7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx]{uint16},7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx]{sint16},7
	vcvtfxpntdq2ps zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16},7
	vcvtfxpntdq2ps zmm1{k1},[rcx]{sint16},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,7
	vcvtfxpntudq2ps zmm1{k1},zmm3{dcba},7
	vcvtfxpntudq2ps zmm1{k1},zmm3{cdab},7
	vcvtfxpntudq2ps zmm1{k1},zmm3{badc},7
	vcvtfxpntudq2ps zmm1{k1},zmm3{aaaa},7
	vcvtfxpntudq2ps zmm1{k1},zmm3{bbbb},7
	vcvtfxpntudq2ps zmm1{k1},zmm3{cccc},7
	vcvtfxpntudq2ps zmm1{k1},zmm3{dddd},7
	vcvtfxpntudq2ps zmm1{k1},zmm3{dacb},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,{rn},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,{rd},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,{ru},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,{rz},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,{sae},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,{rn-sae},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,{rd-sae},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,{ru-sae},7
	vcvtfxpntudq2ps zmm1{k1},zmm3,{rz-sae},7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx],7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx]{16to16},7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx]{1to16},7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx]{4to16},7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx]{uint8},7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx]{sint8},7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx]{uint16},7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx]{sint16},7
	vcvtfxpntudq2ps zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16},7
	vcvtfxpntudq2ps zmm1{k1},[rcx]{sint16},7

# Tests for op v1{k1}, Uf32(mt)
	vloadunpackhps zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vloadunpackhps zmm1{k1},ZMMWORD PTR [rcx]
	vloadunpackhps zmm1{k1},ZMMWORD PTR [rcx]{16to16}
	vloadunpackhps zmm1{k1},ZMMWORD PTR [rcx]{float16}
	vloadunpackhps zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vloadunpackhps zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vloadunpackhps zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vloadunpackhps zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vloadunpackhps zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vloadunpackhps zmm1{k1},[rcx]{sint16}
	vloadunpacklps zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vloadunpacklps zmm1{k1},ZMMWORD PTR [rcx]
	vloadunpacklps zmm1{k1},ZMMWORD PTR [rcx]{16to16}
	vloadunpacklps zmm1{k1},ZMMWORD PTR [rcx]{float16}
	vloadunpacklps zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vloadunpacklps zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vloadunpacklps zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vloadunpacklps zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vloadunpacklps zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vloadunpacklps zmm1{k1},[rcx]{sint16}
	vmovaps zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vmovaps zmm1{k1},ZMMWORD PTR [rcx]
	vmovaps zmm1{k1},ZMMWORD PTR [rcx]{16to16}
	vmovaps zmm1{k1},ZMMWORD PTR [rcx]{float16}
	vmovaps zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vmovaps zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vmovaps zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vmovaps zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vmovaps zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vmovaps zmm1{k1},[rcx]{sint16}

# Tests for op v1{k1}, Uf32(mt) without broadcast
	vbroadcastf32x4 zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vbroadcastf32x4 zmm1{k1},ZMMWORD PTR [rcx]
	vbroadcastf32x4 zmm1{k1},ZMMWORD PTR [rcx]{float16}
	vbroadcastf32x4 zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vbroadcastf32x4 zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vbroadcastf32x4 zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vbroadcastf32x4 zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vbroadcastf32x4 zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vbroadcastf32x4 zmm1{k1},[rcx]{sint16}
	vbroadcastss zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vbroadcastss zmm1{k1},ZMMWORD PTR [rcx]
	vbroadcastss zmm1{k1},ZMMWORD PTR [rcx]{float16}
	vbroadcastss zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vbroadcastss zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vbroadcastss zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vbroadcastss zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vbroadcastss zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vbroadcastss zmm1{k1},[rcx]{sint16}

# Tests for op v1{k1}, Uf64(mt)
	vloadunpackhpd zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vloadunpackhpd zmm1{k1},ZMMWORD PTR [rcx]
	vloadunpackhpd zmm1{k1},ZMMWORD PTR [rcx]{8to8}
	vloadunpackhpd zmm1{k1},ZMMWORD PTR [rcx+0x80]{8to8}
	vloadunpackhpd zmm1{k1},[rcx]{8to8}
	vloadunpacklpd zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vloadunpacklpd zmm1{k1},ZMMWORD PTR [rcx]
	vloadunpacklpd zmm1{k1},ZMMWORD PTR [rcx]{8to8}
	vloadunpacklpd zmm1{k1},ZMMWORD PTR [rcx+0x80]{8to8}
	vloadunpacklpd zmm1{k1},[rcx]{8to8}
	vmovapd zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vmovapd zmm1{k1},ZMMWORD PTR [rcx]
	vmovapd zmm1{k1},ZMMWORD PTR [rcx]{8to8}
	vmovapd zmm1{k1},ZMMWORD PTR [rcx+0x80]{8to8}
	vmovapd zmm1{k1},[rcx]{8to8}

# Tests for op v1{k1}, Uf64(mt) without broadcast
	vbroadcastf64x4 zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vbroadcastf64x4 zmm1{k1},ZMMWORD PTR [rcx+0x80]
	vbroadcastf64x4 zmm1{k1},[rcx]
	vbroadcastsd zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vbroadcastsd zmm1{k1},ZMMWORD PTR [rcx+0x80]
	vbroadcastsd zmm1{k1},[rcx]

# Tests for op v1{k1}, Ui32(mt)
	vloadunpackhd zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vloadunpackhd zmm1{k1},ZMMWORD PTR [rcx]
	vloadunpackhd zmm1{k1},ZMMWORD PTR [rcx]{16to16}
	vloadunpackhd zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vloadunpackhd zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vloadunpackhd zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vloadunpackhd zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vloadunpackhd zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vloadunpackhd zmm1{k1},[rcx]{sint16}
	vloadunpackld zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vloadunpackld zmm1{k1},ZMMWORD PTR [rcx]
	vloadunpackld zmm1{k1},ZMMWORD PTR [rcx]{16to16}
	vloadunpackld zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vloadunpackld zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vloadunpackld zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vloadunpackld zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vloadunpackld zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vloadunpackld zmm1{k1},[rcx]{sint16}
	vmovdqa32 zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vmovdqa32 zmm1{k1},ZMMWORD PTR [rcx]
	vmovdqa32 zmm1{k1},ZMMWORD PTR [rcx]{16to16}
	vmovdqa32 zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vmovdqa32 zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vmovdqa32 zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vmovdqa32 zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vmovdqa32 zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vmovdqa32 zmm1{k1},[rcx]{sint16}

# Tests for op v1{k1}, Ui32(mt) without broadcast
	vbroadcasti32x4 zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vbroadcasti32x4 zmm1{k1},ZMMWORD PTR [rcx]
	vbroadcasti32x4 zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vbroadcasti32x4 zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vbroadcasti32x4 zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vbroadcasti32x4 zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vbroadcasti32x4 zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vbroadcasti32x4 zmm1{k1},[rcx]{sint16}
	vpbroadcastd zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vpbroadcastd zmm1{k1},ZMMWORD PTR [rcx]
	vpbroadcastd zmm1{k1},ZMMWORD PTR [rcx]{uint8}
	vpbroadcastd zmm1{k1},ZMMWORD PTR [rcx]{sint8}
	vpbroadcastd zmm1{k1},ZMMWORD PTR [rcx]{uint16}
	vpbroadcastd zmm1{k1},ZMMWORD PTR [rcx]{sint16}
	vpbroadcastd zmm1{k1},ZMMWORD PTR [rcx+0x80]{sint16}
	vpbroadcastd zmm1{k1},[rcx]{sint16}

# Tests for op v1{k1}, Ui64(mt)
	vloadunpackhq zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vloadunpackhq zmm1{k1},ZMMWORD PTR [rcx]
	vloadunpackhq zmm1{k1},ZMMWORD PTR [rcx]{8to8}
	vloadunpackhq zmm1{k1},ZMMWORD PTR [rcx+0x80]{8to8}
	vloadunpackhq zmm1{k1},[rcx]{8to8}
	vloadunpacklq zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vloadunpacklq zmm1{k1},ZMMWORD PTR [rcx]
	vloadunpacklq zmm1{k1},ZMMWORD PTR [rcx]{8to8}
	vloadunpacklq zmm1{k1},ZMMWORD PTR [rcx+0x80]{8to8}
	vloadunpacklq zmm1{k1},[rcx]{8to8}
	vmovdqa64 zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vmovdqa64 zmm1{k1},ZMMWORD PTR [rcx]
	vmovdqa64 zmm1{k1},ZMMWORD PTR [rcx]{8to8}
	vmovdqa64 zmm1{k1},ZMMWORD PTR [rcx+0x80]{8to8}
	vmovdqa64 zmm1{k1},[rcx]{8to8}

# Tests for op v1{k1}, Ui64(mt) without broadcast
	vbroadcasti64x4 zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vbroadcasti64x4 zmm1{k1},ZMMWORD PTR [rcx+0x80]
	vbroadcasti64x4 zmm1{k1},[rcx]
	vpbroadcastq zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vpbroadcastq zmm1{k1},ZMMWORD PTR [rcx+0x80]
	vpbroadcastq zmm1{k1},[rcx]

#Test for op v1{k1}, v2, v3mt, offset
	valignd zmm1{k1},zmm1,zmm2,8
	valignd zmm1{k1},zmm1,ZMMWORD PTR [rcx],8
	valignd zmm1{k1},zmm1,ZMMWORD PTR [rcx+0x80],8
	valignd zmm1{k1},zmm1,[rcx],8

#Test for op v1{k1}, v2/mt with SAE
	vexp223ps zmm1{k1},zmm2
	vexp223ps zmm1{k1},zmm2,{sae}
	vexp223ps zmm1{k1},ZMMWORD PTR [rcx]
	vexp223ps zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vexp223ps zmm1{k1},ZMMWORD PTR [rcx+0x80]
	vexp223ps zmm1{k1},[rcx]
	vlog2ps zmm1{k1},zmm2
	vlog2ps zmm1{k1},zmm2,{sae}
	vlog2ps zmm1{k1},ZMMWORD PTR [rcx]
	vlog2ps zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vlog2ps zmm1{k1},ZMMWORD PTR [rcx+0x80]
	vlog2ps zmm1{k1},[rcx]
	vrcp23ps zmm1{k1},zmm2
	vrcp23ps zmm1{k1},zmm2,{sae}
	vrcp23ps zmm1{k1},ZMMWORD PTR [rcx]
	vrcp23ps zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vrcp23ps zmm1{k1},ZMMWORD PTR [rcx+0x80]
	vrcp23ps zmm1{k1},[rcx]
	vrsqrt23ps zmm1{k1},zmm2
	vrsqrt23ps zmm1{k1},zmm2,{sae}
	vrsqrt23ps zmm1{k1},ZMMWORD PTR [rcx]
	vrsqrt23ps zmm1{k1},ZMMWORD PTR [rcx]{eh}
	vrsqrt23ps zmm1{k1},ZMMWORD PTR [rcx+0x80]
	vrsqrt23ps zmm1{k1},[rcx]

#Test for op v1{k1}, v2, v3/mt
	vpermd zmm1{k1},zmm1,zmm2
	vpermd zmm1{k1},zmm1,ZMMWORD PTR [rcx]
	vpermd zmm1{k1},zmm1,ZMMWORD PTR [rcx+0x80]
	vpermd zmm1{k1},zmm1,[rcx]

# Test for op v1{k1}, v2/mt, imm8
	vpermf32x4 zmm1{k1},zmm2,7
	vpermf32x4 zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vpermf32x4 zmm1{k1},ZMMWORD PTR [rcx+0x80],7
	vpermf32x4 zmm1{k1},[rcx],7
	vpshufd zmm1{k1},zmm2,7
	vpshufd zmm1{k1},ZMMWORD PTR [rcx]{eh},7
	vpshufd zmm1{k1},ZMMWORD PTR [rcx+0x80],7
	vpshufd zmm1{k1},[rcx],7

# Tests for op mt{k1}, Df32(v1)
	vpackstorehps ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vpackstorehps ZMMWORD PTR [rcx]{k1},zmm1
	vpackstorehps ZMMWORD PTR [rcx]{k1},zmm1{float16}
	vpackstorehps ZMMWORD PTR [rcx]{k1},zmm1{uint8}
	vpackstorehps ZMMWORD PTR [rcx]{k1},zmm1{sint8}
	vpackstorehps ZMMWORD PTR [rcx]{k1},zmm1{uint16}
	vpackstorehps ZMMWORD PTR [rcx]{k1},zmm1{sint16}
	vpackstorehps ZMMWORD PTR [rcx+0x80],zmm1{sint16}
	vpackstorehps [rcx]{k1},zmm1{sint16}
	vpackstorelps ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vpackstorelps ZMMWORD PTR [rcx]{k1},zmm1
	vpackstorelps ZMMWORD PTR [rcx]{k1},zmm1{float16}
	vpackstorelps ZMMWORD PTR [rcx]{k1},zmm1{uint8}
	vpackstorelps ZMMWORD PTR [rcx]{k1},zmm1{sint8}
	vpackstorelps ZMMWORD PTR [rcx]{k1},zmm1{uint16}
	vpackstorelps ZMMWORD PTR [rcx]{k1},zmm1{sint16}
	vpackstorelps ZMMWORD PTR [rcx+0x80],zmm1{sint16}
	vpackstorelps [rcx]{k1},zmm1{sint16}
	vmovaps ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vmovaps ZMMWORD PTR [rcx]{k1},zmm1
	vmovaps ZMMWORD PTR [rcx]{k1},zmm1{float16}
	vmovaps ZMMWORD PTR [rcx]{k1},zmm1{uint8}
	vmovaps ZMMWORD PTR [rcx]{k1},zmm1{sint8}
	vmovaps ZMMWORD PTR [rcx]{k1},zmm1{uint16}
	vmovaps ZMMWORD PTR [rcx]{k1},zmm1{sint16}
	vmovaps ZMMWORD PTR [rcx+0x80],zmm1{sint16}
	vmovaps [rcx]{k1},zmm1{sint16}

# Tests for op mt{k1}, Df32(v1); No EH
	vmovnraps ZMMWORD PTR [rcx]{k1},zmm1
	vmovnraps ZMMWORD PTR [rcx]{k1},zmm1{float16}
	vmovnraps ZMMWORD PTR [rcx]{k1},zmm1{uint8}
	vmovnraps ZMMWORD PTR [rcx]{k1},zmm1{sint8}
	vmovnraps ZMMWORD PTR [rcx]{k1},zmm1{uint16}
	vmovnraps ZMMWORD PTR [rcx]{k1},zmm1{sint16}
	vmovnraps ZMMWORD PTR [rcx+0x80],zmm1{sint16}
	vmovnraps [rcx]{k1},zmm1{sint16}
	vmovnrngoaps ZMMWORD PTR [rcx]{k1},zmm1
	vmovnrngoaps ZMMWORD PTR [rcx]{k1},zmm1{float16}
	vmovnrngoaps ZMMWORD PTR [rcx]{k1},zmm1{uint8}
	vmovnrngoaps ZMMWORD PTR [rcx]{k1},zmm1{sint8}
	vmovnrngoaps ZMMWORD PTR [rcx]{k1},zmm1{uint16}
	vmovnrngoaps ZMMWORD PTR [rcx]{k1},zmm1{sint16}
	vmovnrngoaps ZMMWORD PTR [rcx+0x80],zmm1{sint16}
	vmovnrngoaps [rcx]{k1},zmm1{sint16}

# Tests for op mt{k1}, Df64(v1)
	vpackstorehpd ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vpackstorehpd ZMMWORD PTR [rcx+0x80],zmm1
	vpackstorehpd [rcx]{k1},zmm1
	vpackstorelpd ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vpackstorelpd ZMMWORD PTR [rcx+0x80],zmm1
	vpackstorelpd [rcx]{k1},zmm1
	vmovapd ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vmovapd ZMMWORD PTR [rcx+0x80],zmm1
	vmovapd [rcx]{k1},zmm1

# Tests for op mt{k1}, Df64(v1), no EH
	vmovnrapd ZMMWORD PTR [rcx+0x80],zmm1
	vmovnrapd [rcx]{k1},zmm1
	vmovnrngoapd ZMMWORD PTR [rcx+0x80],zmm1
	vmovnrngoapd [rcx]{k1},zmm1

# Tests for op mt{k1}, Di32(v1)
	vpackstorehd ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vpackstorehd ZMMWORD PTR [rcx]{k1},zmm1
	vpackstorehd ZMMWORD PTR [rcx]{k1},zmm1{uint8}
	vpackstorehd ZMMWORD PTR [rcx]{k1},zmm1{sint8}
	vpackstorehd ZMMWORD PTR [rcx]{k1},zmm1{uint16}
	vpackstorehd ZMMWORD PTR [rcx]{k1},zmm1{sint16}
	vpackstorehd ZMMWORD PTR [rcx+0x80],zmm1{sint16}
	vpackstorehd [rcx]{k1},zmm1{sint16}
	vpackstoreld ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vpackstoreld ZMMWORD PTR [rcx]{k1},zmm1
	vpackstoreld ZMMWORD PTR [rcx]{k1},zmm1{uint8}
	vpackstoreld ZMMWORD PTR [rcx]{k1},zmm1{sint8}
	vpackstoreld ZMMWORD PTR [rcx]{k1},zmm1{uint16}
	vpackstoreld ZMMWORD PTR [rcx]{k1},zmm1{sint16}
	vpackstoreld ZMMWORD PTR [rcx+0x80],zmm1{sint16}
	vpackstoreld [rcx]{k1},zmm1{sint16}
	vmovdqa32 ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vmovdqa32 ZMMWORD PTR [rcx]{k1},zmm1
	vmovdqa32 ZMMWORD PTR [rcx]{k1},zmm1{uint8}
	vmovdqa32 ZMMWORD PTR [rcx]{k1},zmm1{sint8}
	vmovdqa32 ZMMWORD PTR [rcx]{k1},zmm1{uint16}
	vmovdqa32 ZMMWORD PTR [rcx]{k1},zmm1{sint16}
	vmovdqa32 ZMMWORD PTR [rcx+0x80],zmm1{sint16}
	vmovdqa32 [rcx]{k1},zmm1{sint16}

# Tests for op mt{k1}, Di64(v1)
	vpackstorehq ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vpackstorehq ZMMWORD PTR [rcx+0x80],zmm1
	vpackstorehq [rcx]{k1},zmm1
	vpackstorelq ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vpackstorelq ZMMWORD PTR [rcx+0x80],zmm1
	vpackstorelq [rcx]{k1},zmm1
	vmovdqa64 ZMMWORD PTR [rcx]{eh}{k1},zmm1
	vmovdqa64 ZMMWORD PTR [rcx+0x80],zmm1
	vmovdqa64 [rcx]{k1},zmm1

# Tests for op v1{k1}, v2
	vmovapd zmm1{k1},zmm2
	vmovapd zmm1{k1},zmm2{dcba}
	vmovapd zmm1{k1},zmm2{cdab}
	vmovapd zmm1{k1},zmm2{badc}
	vmovapd zmm1{k1},zmm2{aaaa}
	vmovapd zmm1{k1},zmm2{bbbb}
	vmovapd zmm1{k1},zmm2{cccc}
	vmovapd zmm1{k1},zmm2{dddd}
	vmovapd zmm1{k1},zmm2{dacb}
	vmovapd zmm1{k1},zmm2{eh}
	vmovapd zmm1{k1},zmm2{dcba}{eh}
	vmovaps zmm1{k1},zmm2
	vmovaps zmm1{k1},zmm2{dcba}
	vmovaps zmm1{k1},zmm2{cdab}
	vmovaps zmm1{k1},zmm2{badc}
	vmovaps zmm1{k1},zmm2{aaaa}
	vmovaps zmm1{k1},zmm2{bbbb}
	vmovaps zmm1{k1},zmm2{cccc}
	vmovaps zmm1{k1},zmm2{dddd}
	vmovaps zmm1{k1},zmm2{dacb}
	vmovaps zmm1{k1},zmm2{eh}
	vmovaps zmm1{k1},zmm2{dcba}{eh}
	vmovdqa32 zmm1{k1},zmm2
	vmovdqa32 zmm1{k1},zmm2{dcba}
	vmovdqa32 zmm1{k1},zmm2{cdab}
	vmovdqa32 zmm1{k1},zmm2{badc}
	vmovdqa32 zmm1{k1},zmm2{aaaa}
	vmovdqa32 zmm1{k1},zmm2{bbbb}
	vmovdqa32 zmm1{k1},zmm2{cccc}
	vmovdqa32 zmm1{k1},zmm2{dddd}
	vmovdqa32 zmm1{k1},zmm2{dacb}
	vmovdqa32 zmm1{k1},zmm2{eh}
	vmovdqa32 zmm1{k1},zmm2{dcba}{eh}
	vmovdqa64 zmm1{k1},zmm2
	vmovdqa64 zmm1{k1},zmm2{dcba}
	vmovdqa64 zmm1{k1},zmm2{cdab}
	vmovdqa64 zmm1{k1},zmm2{badc}
	vmovdqa64 zmm1{k1},zmm2{aaaa}
	vmovdqa64 zmm1{k1},zmm2{bbbb}
	vmovdqa64 zmm1{k1},zmm2{cccc}
	vmovdqa64 zmm1{k1},zmm2{dddd}
	vmovdqa64 zmm1{k1},zmm2{dacb}
	vmovdqa64 zmm1{k1},zmm2{eh}
	vmovdqa64 zmm1{k1},zmm2{dcba}{eh}

# Tests for op mvt{k1}, Di32(v1)
	vpscatterdd ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1},zmm1
	vpscatterdd ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1
	vpscatterdd ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1{uint8}
	vpscatterdd ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1{sint8}
	vpscatterdd ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1{uint16}
	vpscatterdd ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1{sint16}
	vpscatterdd ZMMWORD PTR [rdx+zmm10*2+0x80]{k1},zmm1{sint16}
	vpscatterdd [rbp+zmm10*2+0x99]{k1},zmm1{sint16}

# Tests for op mvt{k1}, Df32(v1)
	vscatterdps ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1},zmm1
	vscatterdps ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1
	vscatterdps ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1{float16}
	vscatterdps ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1{uint8}
	vscatterdps ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1{sint8}
	vscatterdps ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1{uint16}
	vscatterdps ZMMWORD PTR [rbp+zmm10*2+0x99]{k1},zmm1{sint16}
	vscatterdps ZMMWORD PTR [rdx+zmm10*2+0x80]{k1},zmm1{sint16}
	vscatterdps [rbp+zmm10*2+0x99]{k1},zmm1{sint16}

# Tests for op Uf32(mvt){k1}
	vgatherpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1}
	vgatherpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{k2}
	vgatherpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{float16}{k2}
	vgatherpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint8}{k2}
	vgatherpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint8}{k2}
	vgatherpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint16}{k2}
	vgatherpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint16}{k2}
	vgatherpf0dps ZMMWORD PTR [rdx+zmm10*2+0x80]{sint16}{k1}
	vgatherpf0dps [rbp+zmm10*2+0x99]{sint16}{k1}
	vgatherpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1}
	vgatherpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{k2}
	vgatherpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{float16}{k2}
	vgatherpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint8}{k2}
	vgatherpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint8}{k2}
	vgatherpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint16}{k2}
	vgatherpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint16}{k2}
	vgatherpf0hintdps ZMMWORD PTR [rdx+zmm10*2+0x80]{sint16}{k1}
	vgatherpf0hintdps [rbp+zmm10*2+0x99]{sint16}{k1}
	vgatherpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1}
	vgatherpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{k2}
	vgatherpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{float16}{k2}
	vgatherpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint8}{k2}
	vgatherpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint8}{k2}
	vgatherpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint16}{k2}
	vgatherpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint16}{k2}
	vgatherpf1dps ZMMWORD PTR [rdx+zmm10*2+0x80]{sint16}{k1}
	vgatherpf1dps [rbp+zmm10*2+0x99]{sint16}{k1}
	vscatterpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1}
	vscatterpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{k2}
	vscatterpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{float16}{k2}
	vscatterpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint8}{k2}
	vscatterpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint8}{k2}
	vscatterpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint16}{k2}
	vscatterpf0dps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint16}{k2}
	vscatterpf0dps ZMMWORD PTR [rdx+zmm10*2+0x80]{sint16}{k1}
	vscatterpf0dps [rbp+zmm10*2+0x99]{sint16}{k1}
	vscatterpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1}
	vscatterpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{k2}
	vscatterpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{float16}{k2}
	vscatterpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint8}{k2}
	vscatterpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint8}{k2}
	vscatterpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint16}{k2}
	vscatterpf0hintdps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint16}{k2}
	vscatterpf0hintdps ZMMWORD PTR [rdx+zmm10*2+0x80]{sint16}{k1}
	vscatterpf0hintdps [rbp+zmm10*2+0x99]{sint16}{k1}
	vscatterpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1}
	vscatterpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{k2}
	vscatterpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{float16}{k2}
	vscatterpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint8}{k2}
	vscatterpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint8}{k2}
	vscatterpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{uint16}{k2}
	vscatterpf1dps ZMMWORD PTR [rbp+zmm10*2+0x99]{sint16}{k2}
	vscatterpf1dps ZMMWORD PTR [rdx+zmm10*2+0x80]{sint16}{k1}
	vscatterpf1dps [rbp+zmm10*2+0x99]{sint16}{k1}

# Tests for op Uf64(mvt){k1}
	vgatherpf0hintdpd ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1}
	vgatherpf0hintdpd ZMMWORD PTR [rdx+zmm10*2+0x80]{k1}
	vgatherpf0hintdpd [rbp+zmm10*2+0x99]{k1}
	vscatterpf0hintdpd ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1}
	vscatterpf0hintdpd ZMMWORD PTR [rdx+zmm10*2+0x80]{k1}
	vscatterpf0hintdpd [rbp+zmm10*2+0x99]{k1}

#Test for op v1{k1}, Uf32(mvt)
	vgatherdps zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}
	vgatherdps zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]
	vgatherdps zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{float16}
	vgatherdps zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{uint8}
	vgatherdps zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{sint8}
	vgatherdps zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{uint16}
	vgatherdps zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{sint16}
	vgatherdps zmm1{k1},ZMMWORD PTR [rdx+zmm10*2+0x80]
	vgatherdps zmm1{k1},[rbp+zmm10*2+0x99]

#Test for op v1{k1}, Uf64(mvt)
	vgatherdpd zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}
	vgatherdpd zmm1{k1},ZMMWORD PTR [rdx+zmm10*2+0x80]
	vgatherdpd zmm1{k1},[rbp+zmm10*2+0x99]

#Test for op v1{k1}, Ui32(mvt)
	vpgatherdd zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}
	vpgatherdd zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]
	vpgatherdd zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{uint8}
	vpgatherdd zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{sint8}
	vpgatherdd zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{uint16}
	vpgatherdd zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{sint16}
	vpgatherdd zmm1{k1},ZMMWORD PTR [rdx+zmm10*2+0x80]
	vpgatherdd zmm1{k1},[rbp+zmm10*2+0x99]

#Test for op v1{k1}, Ui64(mvt)
	vpgatherdq zmm1{k1},ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}
	vpgatherdq zmm1{k1},ZMMWORD PTR [rdx+zmm10*2+0x80]
	vpgatherdq zmm1{k1},[rbp+zmm10*2+0x99]

#Test for op mvt{k1}, dq(v1)
	vpscatterdq ZMMWORD PTR [rbp+zmm10*2+0x99]{eh}{k1},zmm1
	vpscatterdq ZMMWORD PTR [rdx+zmm10*2+0x80]{k1},zmm1
	vpscatterdq [rbp+zmm10*2+0x99]{k1},zmm1

# Test for op r32, r32
	lzcnt ebx,eax
	lzcnt r10d,r9d
	popcnt ebx,eax
	popcnt r10d,r9d
	tzcnt ebx,eax
	tzcnt r10d,r9d
	tzcnti ebx,eax
	tzcnti r10d,r9d

# Test for op r64, r64
	lzcnt rbx,rax
	lzcnt r15,r9
	popcnt rbx,rax
	popcnt r15,r9
	tzcnt rbx,rax
	tzcnt r15,r9
	tzcnti rbx,rax
	tzcnti r15,r9

# Test for op m8
	clevict0 BYTE PTR [rcx]
	clevict0 BYTE PTR [rcx+0x80]
	clevict0 [rcx]
	clevict1 BYTE PTR [rcx]
	clevict1 BYTE PTR [rcx+0x80]
	clevict1 [rcx]
	vprefetch0 BYTE PTR [rcx]
	vprefetch0 BYTE PTR [rcx+0x80]
	vprefetch0 [rcx]
	vprefetch1 BYTE PTR [rcx]
	vprefetch1 BYTE PTR [rcx+0x80]
	vprefetch1 [rcx]
	vprefetch2 BYTE PTR [rcx]
	vprefetch2 BYTE PTR [rcx+0x80]
	vprefetch2 [rcx]
	vprefetche0 BYTE PTR [rcx]
	vprefetche0 BYTE PTR [rcx+0x80]
	vprefetche0 [rcx]
	vprefetche1 BYTE PTR [rcx]
	vprefetche1 BYTE PTR [rcx+0x80]
	vprefetche1 [rcx]
	vprefetche2 BYTE PTR [rcx]
	vprefetche2 BYTE PTR [rcx+0x80]
	vprefetche2 [rcx]
	vprefetchenta BYTE PTR [rcx]
	vprefetchenta BYTE PTR [rcx+0x80]
	vprefetchenta [rcx]
	vprefetchnta BYTE PTR [rcx]
	vprefetchnta BYTE PTR [rcx+0x80]
	vprefetchnta [rcx]

# Test for op r32
	delay eax
	delay r9d
	spflt eax
	spflt r9d

# Test for op r64
	delay rax
	delay r9
	spflt rax
	spflt r9

# Generate test cases for different operands forms
	vpandd zmm20{k1},zmm20,zmm30{cdab}
	vpandd zmm30{k1},zmm20,zmm30{cdab}
	vpandd zmm30{k1},zmm30,zmm30{cdab}
	vpandd zmm20{k1},zmm30,zmm30{cdab}
	vpandd zmm20{k1},zmm10,zmm30{cdab}
	vpslld zmm20{k1},ZMMWORD PTR [rcx],7
	vpslld zmm20{k1},zmm30,7
	vpadcd zmm10{k1},k2,ds:0x12345678
	vpadcd zmm20{k1},k2,ds:0x12345678
	vpadcd zmm10{k1},k2,[rbp]
	vpadcd zmm20{k1},k2,[rbp]
	vpadcd zmm10{k1},k2,[rbp+0x99]
	vpadcd zmm20{k1},k2,[rbp+0x99]
	vpadcd zmm10{k1},k2,[r15+0x99]
	vpadcd zmm20{k1},k2,[r15+0x99]
	vpadcd zmm10{k1},k2,[rip+0x99]
	vpadcd zmm20{k1},k2,[rip+0x99]
	vpadcd zmm10{k1},k2,[rsp+0x99]
	vpadcd zmm20{k1},k2,[rsp+0x99]
	vpadcd zmm10{k1},k2,[r12+0x99]
	vpadcd zmm20{k1},k2,[r12+0x99]
	vpadcd zmm10{k1},k2,[riz*1-0x99]
	vpadcd zmm20{k1},k2,[riz*1-0x99]
	vpadcd zmm10{k1},k2,[riz*2-0x99]
	vpadcd zmm20{k1},k2,[riz*2-0x99]
	vpadcd zmm10{k1},k2,[rbx+riz*1-0x99]
	vpadcd zmm20{k1},k2,[rbx+riz*1-0x99]
	vpadcd zmm10{k1},k2,[rbx+riz*2-0x99]
	vpadcd zmm20{k1},k2,[rbx+riz*2-0x99]
	vpadcd zmm10{k1},k2,[r12+r15*4-0x99]
	vpadcd zmm20{k1},k2,[r12+r15*4-0x99]
	vpadcd zmm10{k1},k2,[r8+r15*8-0x99]
	vpadcd zmm20{k1},k2,[r8+r15*8-0x99]
	vpadcd zmm10{k1},k2,[rbp+r12*4-0x99]
	vpadcd zmm20{k1},k2,[rbp+r12*4-0x99]
	vpadcd zmm10{k1},k2,[rsp+r13*1-0x99]
	vpadcd zmm20{k1},k2,[rsp+r13*1-0x99]
	vgatherdps zmm10{k1},[zmm1*1]
	vgatherdps zmm20{k1},[zmm1*1]
	vgatherdps zmm10{k1},[zmm10*1]
	vgatherdps zmm20{k1},[zmm10*1]
	vgatherdps zmm10{k1},[zmm1*2]
	vgatherdps zmm20{k1},[zmm1*2]
	vgatherdps zmm10{k1},[zmm10*2]
	vgatherdps zmm20{k1},[zmm10*2]
	vgatherdps zmm10{k1},[zmm1*1-0x99]
	vgatherdps zmm20{k1},[zmm1*1-0x99]
	vgatherdps zmm10{k1},[zmm10*1-0x9]
	vgatherdps zmm20{k1},[zmm10*1-0x9]
	vgatherdps zmm10{k1},[zmm1*2+0x99]
	vgatherdps zmm20{k1},[zmm1*2+0x99]
	vgatherdps zmm10{k1},[zmm10*2+0x9]
	vgatherdps zmm20{k1},[zmm10*2+0x9]
	vgatherdps zmm10{k1},[rax+zmm1]
	vgatherdps zmm20{k1},[rax+zmm1]
	vgatherdps zmm10{k1},[rax+zmm10]
	vgatherdps zmm20{k1},[rax+zmm10]
	vgatherdps zmm10{k1},[rax+zmm1*2-0x99]
	vgatherdps zmm20{k1},[rax+zmm1*2-0x99]
	vgatherdps zmm10{k1},[rax+zmm10*2-0x9]
	vgatherdps zmm20{k1},[rax+zmm10*2-0x9]
	vgatherdps zmm10{k1},[r12+zmm1*4-0x99]
	vgatherdps zmm20{k1},[r12+zmm1*4-0x99]
	vgatherdps zmm10{k1},[r12+zmm10*4+0x9]
	vgatherdps zmm20{k1},[r12+zmm10*4+0x9]
	vgatherdps zmm10{k1},[r13+zmm30*4+0x99]
	vgatherdps zmm20{k1},[r13+zmm30*4+0x99]
	vpadcd zmm10{k1},k2,ds:0x1234
	vpadcd zmm20{k1},k2,ds:0x1234
	vpadcd zmm10{k1},k2,[ebp]
	vpadcd zmm20{k1},k2,[ebp]
	vpadcd zmm10{k1},k2,[ebp+0x99]
	vpadcd zmm20{k1},k2,[ebp+0x99]
	vpadcd zmm10{k1},k2,[eiz*1+0x99]
	vpadcd zmm20{k1},k2,[eiz*1+0x99]
	vpadcd zmm10{k1},k2,[eiz*2+0x99]
	vpadcd zmm20{k1},k2,[eiz*2+0x99]
	vpadcd zmm10{k1},k2,[eax+eiz*1+0x99]
	vpadcd zmm20{k1},k2,[eax+eiz*1+0x99]
	vpadcd zmm10{k1},k2,[eax+eiz*2+0x99]
	vpadcd zmm20{k1},k2,[eax+eiz*2+0x99]
	vpadcd zmm10{k1},k2,[eax+ebx*4+0x99]
	vpadcd zmm20{k1},k2,[eax+ebx*4+0x99]
	vpadcd zmm10{k1},k2,[esp+ecx*8+0x99]
	vpadcd zmm20{k1},k2,[esp+ecx*8+0x99]
	vpadcd zmm10{k1},k2,[ebp+edx*1+0x99]
	vpadcd zmm20{k1},k2,[ebp+edx*1+0x99]
	vgatherdps zmm10{k1},[zmm1*1]
	vgatherdps zmm20{k1},[zmm1*1]
	vgatherdps zmm10{k1},[zmm10*1]
	vgatherdps zmm20{k1},[zmm10*1]
	vgatherdps zmm10{k1},[zmm1*2]
	vgatherdps zmm20{k1},[zmm1*2]
	vgatherdps zmm10{k1},[zmm10*2]
	vgatherdps zmm20{k1},[zmm10*2]
	vgatherdps zmm10{k1},[zmm1*1-0x99]
	vgatherdps zmm20{k1},[zmm1*1-0x99]
	vgatherdps zmm10{k1},[zmm10*1-0x9]
	vgatherdps zmm20{k1},[zmm10*1-0x9]
	vgatherdps zmm10{k1},[zmm1*2-0x99]
	vgatherdps zmm20{k1},[zmm1*2-0x99]
	vgatherdps zmm10{k1},[zmm10*2+0x9]
	vgatherdps zmm20{k1},[zmm10*2+0x9]
	vgatherdps zmm10{k1},[eax+zmm1]
	vgatherdps zmm20{k1},[eax+zmm1]
	vgatherdps zmm10{k1},[eax+zmm10]
	vgatherdps zmm20{k1},[eax+zmm10]
	vgatherdps zmm10{k1},[eax+zmm1-0x99]
	vgatherdps zmm20{k1},[eax+zmm1-0x99]
	vgatherdps zmm10{k1},[eax+zmm10-0x9]
	vgatherdps zmm20{k1},[eax+zmm10-0x9]
	vgatherdps zmm10{k1},[eax+zmm1*2-0x99]
	vgatherdps zmm20{k1},[eax+zmm1*2-0x99]
	vgatherdps zmm10{k1},[eax+zmm7*2+0x9]
	vgatherdps zmm20{k1},[eax+zmm7*2+0x9]
	vgatherdps zmm10{k1},[ebp+zmm1*4+0x99]
	vgatherdps zmm20{k1},[ebp+zmm1*4+0x99]
	vgatherdps zmm10{k1},[ebp+zmm7*4-0x9]
	vgatherdps zmm20{k1},[ebp+zmm7*4-0x9]

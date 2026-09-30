#ifdef NEED_PREFIX_TABLE

  /* PREFIX_MVEX_0F18_R_0_M_0_P_0 */
  {
    { "vprefetchnta",	{ MVec } },
  },

  /* PREFIX_MVEX_0F18_R_1_M_0_P_0 */
  {
    { "vprefetch0",	{ MVec } },
  },

  /* PREFIX_MVEX_0F18_R_2_M_0_P_0 */
  {
    { "vprefetch1",	{ MVec } },
  },

  /* PREFIX_MVEX_0F18_R_3_M_0_P_0 */
  {
    { "vprefetch2",	{ MVec } },
  },

  /* PREFIX_MVEX_0F18_R_4_M_0_P_0 */
  {
    { "vprefetchenta",	{ MVec } },
  },

  /* PREFIX_MVEX_0F18_R_5_M_0_P_0 */
  {
    { "vprefetche0",	{ MVec } },
  },

  /* PREFIX_MVEX_0F18_R_6_M_0_P_0 */
  {
    { "vprefetche1",	{ MVec } },
  },

  /* PREFIX_MVEX_0F18_R_7_M_0_P_0 */
  {
    { "vprefetche2",	{ MVec } },
  },

  /* PREFIX_MVEX_0F28 */
  {
    { VEX_W_TABLE (MVEX_W_0F28_P_0) },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F28_P_2) },
    { Bad_Opcode },
  },

  /* PREFIX_MVEX_0F29 */
  {
    { VEX_W_TABLE (MVEX_W_0F29_P_0) },
    { VEX_W_TABLE (MVEX_W_0F29_P_1) },
    { VEX_W_TABLE (MVEX_W_0F29_P_2) },
    { VEX_W_TABLE (MVEX_W_0F29_P_3) }
  },

  /* PREFIX_MVEX_0F58 */
  {
    { VEX_W_TABLE (MVEX_W_0F58_P_0) },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F58_P_2) },
  },

  /* PREFIX_MVEX_0F59 */
  {
    { VEX_W_TABLE (MVEX_W_0F59_P_0) },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F59_P_2) },
  },

  /* PREFIX_MVEX_0F5A */
  {
    { VEX_W_TABLE (MVEX_W_0F5A_P_0) },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F5A_P_2) },
  },

  /* PREFIX_MVEX_0F5C */
  {
    { VEX_W_TABLE (MVEX_W_0F5C_P_0) },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F5C_P_2) },
  },

  /* PREFIX_MVEX_0F66 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F66_P_2) },
  },

  /* PREFIX_MVEX_0F6F */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vmovdqa%LN", { XMMVexUpWdq, EXxMVexUpNoBcstWdq } },
  },

  /* PREFIX_MVEX_0F70 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F70_P_2) },
  },

  /* PREFIX_MVEX_0F72_REG_2 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F72_R_2_P_2) },
  },

  /* PREFIX_MVEX_0F72_REG_4 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F72_R_4_P_2) },
  },

  /* PREFIX_MVEX_0F72_REG_6 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F72_R_6_P_2) },
  },

  /* PREFIX_MVEX_0F76 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F76_P_2) },
  },

  /* PREFIX_MVEX_0F7A */
  {
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F7A_P_1) },
  },

  /* PREFIX_MVEX_0F7F */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vmovdqa%LN", { MMVexDownNoBcstWpX, XMMVexDownWpX } },
  },

  /* PREFIX_MVEX_0FAE_R_7_M_0 */
  {
    { Bad_Opcode },
    { "clevict1", { MVec } },
    { Bad_Opcode },
    { "clevict0", { MVec } },
  },

  /* PREFIX_MVEX_0FC2 */
  {
    { VEX_W_TABLE (MVEX_W_0FC2_P_0) },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0FC2_P_2) },
  },

  /* PREFIX_MVEX_0FDB */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vpand%LW", { MXM, MVexVex, EXxMVexWdq } },
  },

  /* PREFIX_MVEX_0FDF */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vpandn%LW", { MXM, MVexVex, EXxMVexWdq } },
  },

  /* PREFIX_MVEX_0FE6 */
  {
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0FE6_P_1) },
  },

  /* PREFIX_MVEX_0FEB */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vpor%LW", { MXM, MVexVex, EXxMVexWdq } },
  },

  /* PREFIX_MVEX_0FEF */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vpxor%LW", { MXM, MVexVex, EXxMVexWdq } },
  },

  /* PREFIX_MVEX_0FFA */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0FFA_P_2) },
  },

  /* PREFIX_MVEX_0FFE */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0FFE_P_2) },
  },

  /* PREFIX_MVEX_0F3818 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3818_P_2) },
  },

  /* PREFIX_MVEX_0F3819 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3819_P_2) },
  },

  /* PREFIX_MVEX_0F381A */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F381A_P_2) },
  },

  /* PREFIX_MVEX_0F381B */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F381B_P_2) },
  },

  /* PREFIX_MVEX_0F3827 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3827_P_2) },
  },

  /* PREFIX_MVEX_0F3836 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3836_P_2) },
  },

  /* PREFIX_MVEX_0F3839 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3839_P_2) },
  },

  /* PREFIX_MVEX_0F383B */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F383B_P_2) },
  },

  /* PREFIX_MVEX_0F383D */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F383D_P_2) },
  },

  /* PREFIX_MVEX_0F383F */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F383F_P_2) },
  },

  /* PREFIX_MVEX_0F3840 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3840_P_2) },
  },

  /* PREFIX_MVEX_0F3842 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vgetexpp%XW", { MXM, EXxMVexWpXR, EXxMVexS } },
  },

  /* PREFIX_MVEX_0F3845 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3845_P_2) },
  },

  /* PREFIX_MVEX_0F3846 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3846_P_2) },
  },

  /* PREFIX_MVEX_0F3847 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3847_P_2) },
  },

  /* PREFIX_MVEX_0F3850 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vaddnp%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F3851 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3851_P_2) },
  },

  /* PREFIX_MVEX_0F3852 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vgminp%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexS } },
  },

  /* PREFIX_MVEX_0F3853 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vgmaxp%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexS } },
  },

  /* PREFIX_MVEX_0F3855 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfixupnanp%XW", { MXM, MVexVex, EXxMVexWdqR, EXxMVexS } },
  },

  /* PREFIX_MVEX_0F3858 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3858_P_2) },
  },

  /* PREFIX_MVEX_0F3859 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3859_P_2) },
  },

  /* PREFIX_MVEX_0F385A */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F385A_P_2) },
  },

  /* PREFIX_MVEX_0F385B */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F385B_P_2) },
  },

  /* PREFIX_MVEX_0F385C */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F385C_P_2) },
  },

  /* PREFIX_MVEX_0F385D */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F385D_P_2) },
  },

  /* PREFIX_MVEX_0F385E */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F385E_P_2) },
  },

  /* PREFIX_MVEX_0F385F */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F385F_P_2) },
  },

  /* PREFIX_MVEX_0F3864 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vpblendm%LW", { MXM, MVexVex, EXxMVexWdq } },
  },

  /* PREFIX_MVEX_0F3865 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vblendmp%XW", { MXM, MVexVex, EXxMVexWpX } },
  },

  /* PREFIX_MVEX_0F386C */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F386C_P_2) },
  },

  /* PREFIX_MVEX_0F386D */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vsubrp%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F386E */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F386E_P_2) },
  },

  /* PREFIX_MVEX_0F386F */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F386F_P_2) },
  },

  /* PREFIX_MVEX_0F3874 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3874_P_2) },
  },

  /* PREFIX_MVEX_0F3884 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3884_P_2) },
  },

  /* PREFIX_MVEX_0F3886 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3886_P_2) },
  },

  /* PREFIX_MVEX_0F3887 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3887_P_2) },
  },

  /* PREFIX_MVEX_0F3890 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vpgatherd%LW", { XMMVexUpWdq, MMVexUpVSIBWdq } },
  },

  /* PREFIX_MVEX_0F3892 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vgatherdp%XW", { XMMVexUpWpX, MMVexUpVSIBWpX } },
  },

  /* PREFIX_MVEX_0F3898 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfmadd132p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F389A */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfmsub132p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F389C */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfnmadd132p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F389E */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfnmsub132p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F38A0 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vpscatterd%LW", { MMVexDownVSIBWdq, XMMVexDownWdq } },
  },

  /* PREFIX_MVEX_0F38A2 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vscatterdp%XW", { MMVexDownVSIBWpX, XMMVexDownWpX } },
  },

  /* PREFIX_MVEX_0F38A4 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38A4_P_2) },
  },

  /* PREFIX_MVEX_0F38A8 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfmadd213p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F38AA */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfmsub213p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F38AC */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfnmadd213p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F38AE */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfnmsub213p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F38B4 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38B4_P_2) },
  },

  /* PREFIX_MVEX_0F38B5 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38B5_P_2) },
  },

  /* PREFIX_MVEX_0F38B8 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfmadd231p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F38BA */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfmsub231p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F38BC */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfnmadd231p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F38BE */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vfnmsub231p%XW", { MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },

  /* PREFIX_MVEX_0F38C6_REG_0 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vgatherpf0hintdp%XW", { MMVexPFVSIBWpX } },
  },

  /* PREFIX_MVEX_0F38C6_REG_1 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38C6_R_1_P_2) },
  },

  /* PREFIX_MVEX_0F38C6_REG_2 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38C6_R_2_P_2) },
  },

  /* PREFIX_MVEX_0F38C6_REG_4 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vscatterpf0hintdp%XW", { MMVexPFVSIBWpX } },
  },

  /* PREFIX_MVEX_0F38C6_REG_5 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38C6_R_5_P_2) },
  },

  /* PREFIX_MVEX_0F38C6_REG_6 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38C6_R_6_P_2) },
  },

  /* PREFIX_MVEX_0F38C8 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38C8_P_2) },
  },

  /* PREFIX_MVEX_0F38C9 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38C9_P_2) },
  },

  /* PREFIX_MVEX_0F38CA */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38CA_P_2) },
  },

  /* PREFIX_MVEX_0F38CB */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38CB_P_2) },
  },

  /* PREFIX_MVEX_0F38CC */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38CC_P_2) },
  },

  /* PREFIX_MVEX_0F38CD */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F38CD_P_2) },
  },

  /* PREFIX_MVEX_0F38D0 */
  {
    { "vloadunpackl%LW", { XMMVexUpWdq, MMVexUpWdq } },
    { Bad_Opcode },
    { "vpackstorel%LW", { MMVexDownWdq, XMMVexDownWdq } },
  },

  /* PREFIX_MVEX_0F38D1 */
  {
    { "vloadunpacklp%XW", { XMMVexUpWpX, MMVexUpWpX } },
    { Bad_Opcode },
    { "vpackstorelp%XW", { MMVexDownWpX, XMMVexDownWpX } },
  },

  /* PREFIX_MVEX_0F38D4 */
  {
    { "vloadunpackh%LW", { XMMVexUpWdq, MMVexUpWdq } },
    { Bad_Opcode },
    { "vpackstoreh%LW", { MMVexDownWdq, XMMVexDownWdq } },
  },

  /* PREFIX_MVEX_0F38D5 */
  {
    { "vloadunpackhp%XW", { XMMVexUpWpX, MMVexUpWpX } },
    { Bad_Opcode },
    { "vpackstorehp%XW", { MMVexDownWpX, XMMVexDownWpX } },
  },

  /* PREFIX_MVEX_0F3A03 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3A03_P_2) },
  },

  /* PREFIX_MVEX_0F3A07 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3A07_P_2) },
  },

  /* PREFIX_MVEX_0F3A1E */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3A1E_P_2) },
  },

  /* PREFIX_MVEX_0F3A1F */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3A1F_P_2) },
  },

  /* PREFIX_MVEX_0F3A26 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vgetmantp%XW", { MXM, EXxMVexWpXR, Ib, EXxMVexS } },
  },

  /* PREFIX_MVEX_0F3A52 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { "vrndfxpntp%XW", { MXM, EXxMVexWpXR, Ib, EXxMVexS } },
  },

  /* PREFIX_MVEX_0F3ACA */
  {
    { VEX_W_TABLE (MVEX_W_0F3ACA_P_0) },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3ACA_P_2) },
    { VEX_W_TABLE (MVEX_W_0F3ACA_P_3) },
  },

  /* PREFIX_MVEX_0F3ACB */
  {
    { VEX_W_TABLE (MVEX_W_0F3ACB_P_0) },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3ACB_P_2) },
  },

  /* PREFIX_MVEX_0F3AE6 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_W_TABLE (MVEX_W_0F3AE6_P_3) },
  },


  /* KNC VEX instructions.  */

  /* PREFIX_KNC_74 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_74_P_0) }
  },

  /* PREFIX_KNC_75 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_75_P_0) }
  },

  /* PREFIX_KNC_0F18_R_0_M_0 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F18_R_0_M_0_P_0) },
  },

  /* PREFIX_KNC_0F18_R_1_M_0 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F18_R_1_M_0_P_0) },
  },

  /* PREFIX_KNC_0F18_R_2_M_0 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F18_R_2_M_0_P_0) },
  },

  /* PREFIX_KNC_0F18_R_3_M_0 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F18_R_3_M_0_P_0) },
  },

  /* PREFIX_KNC_0F18_R_4_M_0 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F18_R_4_M_0_P_0) },
  },

  /* PREFIX_KNC_0F18_R_5_M_0 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F18_R_5_M_0_P_0) },
  },

  /* PREFIX_KNC_0F18_R_6_M_0 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F18_R_6_M_0_P_0) },
  },

  /* PREFIX_KNC_0F18_R_7_M_0 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F18_R_7_M_0_P_0) },
  },

  /* PREFIX_KNC_0F41 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F41_P_0) },
  },

  /* PREFIX_KNC_0F42 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F42_P_0) },
  },

  /* PREFIX_KNC_0F43 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F43_P_0) },
  },

  /* PREFIX_KNC_0F44 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F44_P_0) },
  },

  /* PREFIX_KNC_0F45 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F45_P_0) },
  },

  /* PREFIX_KNC_0F46 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F46_P_0) },
  },

  /* PREFIX_KNC_0F47 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F47_P_0) },
  },

  /* PREFIX_KNC_0F48 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F48_P_0) },
  },

  /* PREFIX_KNC_0F49 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F49_P_0) },
  },

  /* PREFIX_KNC_0F84 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F84_P_0) }
  },

  /* PREFIX_KNC_0F85 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F85_P_0) }
  },

  /* PREFIX_KNC_0F90 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F90_P_0) },
  },

  /* PREFIX_KNC_0F92 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F92_P_0) },
  },

  /* PREFIX_KNC_0F93 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F93_P_0) },
  },

  /* PREFIX_KNC_0F95 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F95_P_0) },
  },

  /* PREFIX_KNC_0F97 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F97_P_0) },
  },

  /* PREFIX_KNC_0F98 */
  {
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F98_P_0) },
  },

  /* PREFIX_KNC_0FAE_R_6_M_1 */
  {
    { Bad_Opcode },
    { "delayS", { KRdq } },
    { Bad_Opcode },
    { "spfltS", { KRdq } },
  },

  /* PREFIX_KNC_0FAE_R_7_M_0 */
  {
    { Bad_Opcode },
    { "clevict1", { Mb } },
    { Bad_Opcode },
    { "clevict0", { Mb } },
  },

  /* PREFIX_KNC_0FB8 */
  {
    { Bad_Opcode },
    { VEX_LEN_TABLE (VEX_LEN_KNC_0FB8_P_1) },
  },

  /* PREFIX_KNC_0FBC */
  {
    { Bad_Opcode },
    { VEX_LEN_TABLE (VEX_LEN_KNC_0FBC_P_1) },
    { Bad_Opcode },
    { VEX_LEN_TABLE (VEX_LEN_KNC_0FBC_P_3) },
  },

  /* PREFIX_KNC_0FBD */
  {
    { Bad_Opcode },
    { VEX_LEN_TABLE (VEX_LEN_KNC_0FBD_P_1) },
  },

  /* PREFIX_KNC_0F38F0 */
  {
    { Bad_Opcode },
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F38F0_P_1) },
    { Bad_Opcode },
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F38F0_P_3) },
  },

  /* PREFIX_KNC_0F38F1 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F38F1_P_3) },
  },

  /* PREFIX_KNC_0F3A3E */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { VEX_LEN_TABLE (VEX_LEN_KNC_0F3A3E_P_2) },
  },
#endif /* NEED_PREFIX_TABLE */

#ifdef NEED_MVEX_EH_TABLE
  {
    /* MVEX_EH_0F29_P_1_W1 */
    { "vmovnrapd",	{ MMVexDownNoBcstWpX, XMMVexDownWpX } },
    { "vmovnrngoapd",	{ MMVexDownNoBcstWpX, XMMVexDownWpX } },
  },
  {
    /* MVEX_EH_0F29_P_3_W0 */
    { "vmovnraps",	{ MMVexDownNoBcstWpX, XMMVexDownWpX } },
    { "vmovnrngoaps",	{ MMVexDownNoBcstWpX, XMMVexDownWpX } },
  }
#endif /* NEED_MVEX_EH_TABLE */

#ifdef NEED_VEX_W_TABLE

  {
    /* MVEX_W_0F28_P_0 */
    { "vmovaps",	{ XMMVexUpWpX, EXxMVexUpNoBcstWpX } },
  },
  {
    /* MVEX_W_0F28_P_2 */
    { Bad_Opcode },
    { "vmovapd",	{ XMMVexUpWpX, EXxMVexUpNoBcstWpX } },
  },
  {
    /* MVEX_W_0F29_P_0 */
    { "vmovaps",	{ MMVexDownNoBcstWpX, XMMVexDownWpX } },
  },
  {
    /* MVEX_W_0F29_P_1 */
    { Bad_Opcode },
    { MVEX_EH_TABLE (MVEX_EH_0F29_P_1_W1) },
  },
  {
    /* MVEX_W_0F29_P_2 */
    { Bad_Opcode },
    { "vmovapd",	{ MMVexDownNoBcstWpX, XMMVexDownWpX } },
  },
  {
    /* MVEX_W_0F29_P_3 */
    { MVEX_EH_TABLE (MVEX_EH_0F29_P_3_W0) }
  },
  {
    /* MVEX_W_0F58_P_0 */
    { "vaddps",		{ MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F58_P_2 */
    { Bad_Opcode },
    { "vaddpd",		{ MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F59_P_0 */
    { "vmulps",		{ MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F59_P_2 */
    { Bad_Opcode },
    { "vmulpd",		{ MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F5A_P_0 */
    { "vcvtps2pd",	{ MXM, EXxMVexBcstOnlyHalfW } },
  },
  {
    /* MVEX_W_0F5A_P_2 */
    { Bad_Opcode },
    { "vcvtpd2ps",	{ MXM, EXxMVexWpXR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F5C_P_0 */
    { "vsubps",		{ MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F5C_P_2 */
    { Bad_Opcode },
    { "vsubpd",		{ MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F66_P_2 */
    { "vpcmpgtd",	{ XMVexMask, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F70_P_2 */
    { "vpshufd",	{ MXM, EXxMVexW, Ib } },
  },
  {
    /* MVEX_W_0F72_R_2_P_2 */
    { "vpsrld",		{ VexMask, EXxMVexWdq, Ib } },
  },
  {
    /* MVEX_W_0F72_R_4_P_2 */
    { "vpsrad",		{ VexMask, EXxMVexWdq, Ib } },
  },
  {
    /* MVEX_W_0F72_R_6_P_2 */
    { "vpslld",		{ VexMask, EXxMVexWdq, Ib } },
  },
  {
    /* MVEX_W_0F76_P_2 */
    { "vpcmpeqd",	{ XMVexMask, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F7A_P_1 */
    { "vcvtudq2pd",	{ MXM, EXxMVexBcstOnlyHalfW } },
  },
  {
    /* MVEX_W_0FC2_P_0 */
    { "vcmpps",		{ XMVexMask, MVexVex, EXxMVexWpXR, MVEX_VCMP, EXxMVexS } },
  },
  {
    /* MVEX_W_0FC2_P_2 */
    { Bad_Opcode },
    { "vcmppd",		{ XMVexMask, MVexVex, EXxMVexWpXR, MVEX_VCMP, EXxMVexS } },
  },
  {
    /* MVEX_W_0FE6_P_1 */
    { "vcvtdq2pd",	{ MXM, EXxMVexBcstOnlyHalfW } },
  },
  {
    /* MVEX_W_0FFA_P_2 */
    { "vpsubd",		{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0FFE_P_2 */
    { "vpaddd",		{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3818_P_2 */
    { "vbroadcastss",	{ XMMVexUpWpX, MMVexUpWpX } },
  },
  {
    /* MVEX_W_0F3819_P_2 */
    { Bad_Opcode },
    { "vbroadcastsd",	{ XMMVexUpWpX, MMVexUpWpX } },
  },
  {
    /* MVEX_W_0F381A_P_2 */
    { "vbroadcastf32x4", { XMMVexUpWpX, MMVexUpBcstX4WpX } },
  },
  {
    /* MVEX_W_0F381B_P_2 */
    { Bad_Opcode },
    { "vbroadcastf64x4", { XMMVexUpWpX, MMVexUpBcstX4WpX } },
  },
  {
    /* MVEX_W_0F3827_P_2 */
    { "vptestmd",	{ XMVexMask, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3836_P_2 */
    { "vpermd",		{ MXM, MVexVex, EXxMVexW } },
  },
  {
    /* MVEX_W_0F3839_P_2 */
    { "vpminsd",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F383B_P_2 */
    { "vpminud",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F383D_P_2 */
    { "vpmaxsd",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F383F_P_2 */
    { "vpmaxud",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3840_P_2 */
    { "vpmulld",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3845_P_2 */
    { "vpsrlvd",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3846_P_2 */
    { "vpsravd",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3847_P_2 */
    { "vpsllvd",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3851_P_2 */
    { "vgmaxabsps",	{ MXM, MVexVex, EXxMVexWpXR, EXxMVexS } },
  },
  {
    /* MVEX_W_0F3858_P_2 */
    { "vpbroadcastd",	{ XMMVexUpWdq, MMVexUpWdq } },
  },
  {
    /* MVEX_W_0F3859_P_2 */
    { Bad_Opcode },
    { "vpbroadcastq",	{ XMMVexUpWdq, MMVexUpWdq } },
  },
  {
    /* MVEX_W_0F385A_P_2 */
    { "vbroadcasti32x4", { XMMVexUpWdq, MMVexUpBcstX4Wdq } },
  },
  {
    /* MVEX_W_0F385B_P_2 */
    { Bad_Opcode },
    { "vbroadcasti64x4", { XMMVexUpWdq, MMVexUpBcstX4Wdq } },
  },
  {
    /* MVEX_W_0F385C_P_2 */
    { "vpadcd",		{ MXM, MaskVexZMM, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F385D_P_2 */
    { "vpaddsetcd",	{ MXM, MaskVexZMM, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F385E_P_2 */
    { "vpsbbd",		{ MXM, MaskVexZMM, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F385F_P_2 */
    { "vpsubsetbd",	{ MXM, MaskVexZMM, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F386C_P_2 */
    { "vpsubrd",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F386E_P_2 */
    { "vpsbbrd",	{ MXM, MaskVexZMM, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F386F_P_2 */
    { "vpsubrsetbd",	{ MXM, MaskVexZMM, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3874_P_2 */
    { "vpcmpltd",	{ XMVexMask, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3884_P_2 */
    { "vscaleps",	{ MXM, MVexVex, EXxMVexWdqR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F3886_P_2 */
    { "vpmulhud",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3887_P_2 */
    { "vpmulhd",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F38A4_P_2 */
    { "vfmadd233ps",	{ MXM, MVexVex, EXxMVexBcstOnly2WR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F38B4_P_2 */
    { "vpmadd233d",	{ MXM, MVexVex, EXxMVexBcstOnly2W } },
  },
  {
    /* MVEX_W_0F38B5_P_2 */
    { "vpmadd231d",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F38C6_R_1_P_2 */
    { "vgatherpf0dps",	{ MMVexPFVSIBWpX } },
  },
  {
    /* MVEX_W_0F38C6_R_2_P_2 */
    { "vgatherpf1dps",	{ MMVexPFVSIBWpX } },
  },
  {
    /* MVEX_W_0F38C6_R_5_P_2 */
    { "vscatterpf0dps",	{ MMVexPFVSIBWpX } },
  },
  {
    /* MVEX_W_0F38C6_R_6_P_2 */
    { "vscatterpf1dps",	{ MMVexPFVSIBWpX } },
  },
  {
    /* MVEX_W_0F38C8_P_2 */
    { "vexp223ps",	{ MXM, EXxMVexWR, EXxMVexS } },
  },
  {
    /* MVEX_W_0F38C9_P_2 */
    { "vlog2ps",	{ MXM, EXxMVexWR, EXxMVexS } },
  },
  {
    /* MVEX_W_0F38CA_P_2 */
    { "vrcp23ps",	{ MXM, EXxMVexWR, EXxMVexS } },
  },
  {
    /* MVEX_W_0F38CB_P_2 */
    { "vrsqrt23ps",	{ MXM, EXxMVexWR, EXxMVexS } },
  },
  {
    /* MVEX_W_0F38CC_P_2 */
    { "vaddsetsps",	{ MXM, MVexVex, EXxMVexWpXR, EXxMVexR } },
  },
  {
    /* MVEX_W_0F38CD_P_2 */
    { "vpaddsetsd",	{ MXM, MVexVex, EXxMVexWdq } },
  },
  {
    /* MVEX_W_0F3A03_P_2 */
    { "valignd",	{ MXM, MVexVex, EXxMVexW, Ib } },
  },
  {
    /* MVEX_W_0F3A07_P_2 */
    { "vpermf32x4",	{ MXM, EXxMVexW, Ib } },
  },
  {
    /* MVEX_W_0F3A1E_P_2 */
    { "vpcmpud",	{ XMVexMask, MVexVex, EXxMVexWdq, Ib } },
  },
  {
    /* MVEX_W_0F3A1F_P_2 */
    { "vpcmpd",		{ XMVexMask, MVexVex, EXxMVexWdq, MVEX_VPCMP } },
  },
  {
    /* MVEX_W_0F3ACA_P_0 */
    { "vcvtfxpntudq2ps", { MXM, EXxMVexWdqR, EXxMVexR, Ib } },
  },
  {
    /* MVEX_W_0F3ACA_P_2 */
    { "vcvtfxpntps2udq", { MXM, EXxMVexWpXR, Ib, EXxMVexS } },
  },
  {
    /* MVEX_W_0F3ACA_P_3 */
    { Bad_Opcode },
    { "vcvtfxpntpd2udq", { MXM, EXxMVexWpXR, Ib, EXxMVexS } },
  },
  {
    /* MVEX_W_0F3ACB_P_0 */
    { "vcvtfxpntdq2ps",	{ MXM, EXxMVexWdqR, EXxMVexR, Ib } },
  },
  {
    /* MVEX_W_0F3ACB_P_2 */
    { "vcvtfxpntps2dq",	{ MXM, EXxMVexWpXR, Ib, EXxMVexS } },
  },
  {
    /* MVEX_W_0F3AE6_P_3 */
    { Bad_Opcode },
    { "vcvtfxpntpd2dq",	{ MXM, EXxMVexWpXR, Ib, EXxMVexS } },
  },


  /* KNC VEX instructions.  */
  {
    /* VEX_W_KNC_74_P_0 */
    { "jkzd",		{ MaskVex128, Jb, XX, cond_jump_flag } },
  },
  {
    /* VEX_W_KNC_75_P_0 */
    { "jknzd",		{ MaskVex128, Jb, XX, cond_jump_flag } },
  },
  {
    /* VEX_W_KNC_0F41_P_0 */
    { "kand",		{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F42_P_0 */
    { "kandn",		{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F43_P_0 */
    { "kandnr",		{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F44_P_0 */
    { "knot",		{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F45_P_0 */
    { "kor",		{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F46_P_0 */
    { "kxnor",		{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F47_P_0 */
    { "kxor",		{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F48_P_0 */
    { "kmerge2l1h",	{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F49_P_0 */
    { "kmerge2l1l",	{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F84_P_0 */
    { "jkzd",		{ MaskVex128, Jv, XX, cond_jump_flag } },
  },
  {
    /* VEX_W_KNC_0F85_P_0 */
    { "jknzd",		{ MaskVex128, Jv, XX, cond_jump_flag } },
  },
  {
    /* VEX_W_KNC_0F90_P_0 */
    { "kmov",		{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F92_P_0 */
    { "kmov",		{ MaskG, KRd } },
  },
  {
    /* VEX_W_KNC_0F93_P_0 */
    { "kmov",		{ Gd, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F95_P_0 */
    { "kconcath",	{ Gm, MaskVex128, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F97_P_0 */
    { "kconcatl",	{ Gm, MaskVex128, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F98_P_0 */
    { "kortest",	{ MaskG, KMaskR } },
  },
  {
    /* VEX_W_KNC_0F3A3E_P_2 */
    { "kextract",	{ MaskG, KRm, Ib } },
  },
#endif /* NEED_VEX_W_TABLE */

#ifdef NEED_OPCODE_TABLE

static const struct dis386 mvex_table[][256] = {
  /* VEX_0F */
  {
    /* 00 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 08 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 10 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 18 */
    { REG_TABLE (REG_MVEX_0F18) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 20 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 28 */
    { PREFIX_TABLE (PREFIX_MVEX_0F28) },
    { PREFIX_TABLE (PREFIX_MVEX_0F29) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 30 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 38 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 40 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 48 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 50 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 58 */
    { PREFIX_TABLE (PREFIX_MVEX_0F58) },
    { PREFIX_TABLE (PREFIX_MVEX_0F59) },
    { PREFIX_TABLE (PREFIX_MVEX_0F5A) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F5C) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 60 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F66) },
    { Bad_Opcode },
    /* 68 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F6F) },
    /* 70 */
    { PREFIX_TABLE (PREFIX_MVEX_0F70) },
    { Bad_Opcode },
    { REG_TABLE (REG_MVEX_0F72) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F76) },
    { Bad_Opcode },
    /* 78 */
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F7A) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F7F) },
    /* 80 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 88 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 90 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 98 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* a0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* a8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { REG_TABLE (REG_MVEX_0FAE) },
    { Bad_Opcode },
    /* b0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* b8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* c0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0FC2) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* c8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* d0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* d8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0FDB) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0FDF) },
    /* e0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0FE6) },
    { Bad_Opcode },
    /* e8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0FEB) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0FEF) },
    /* f0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* f8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0FFA) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0FFE) },
    { Bad_Opcode },
  },
  /* VEX_0F38 */
  {
    /* 00 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 08 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 10 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 18 */
    { PREFIX_TABLE (PREFIX_MVEX_0F3818) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3819) },
    { PREFIX_TABLE (PREFIX_MVEX_0F381A) },
    { PREFIX_TABLE (PREFIX_MVEX_0F381B) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 20 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3827) },
    /* 28 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 30 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3836) },
    { Bad_Opcode },
    /* 38 */
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3839) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F383B) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F383D) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F383F) },
    /* 40 */
    { PREFIX_TABLE (PREFIX_MVEX_0F3840) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3842) },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3845) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3846) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3847) },
    /* 48 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 50 */
    { PREFIX_TABLE (PREFIX_MVEX_0F3850) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3851) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3852) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3853) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3855) },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 58 */
    { PREFIX_TABLE (PREFIX_MVEX_0F3858) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3859) },
    { PREFIX_TABLE (PREFIX_MVEX_0F385A) },
    { PREFIX_TABLE (PREFIX_MVEX_0F385B) },
    { PREFIX_TABLE (PREFIX_MVEX_0F385C) },
    { PREFIX_TABLE (PREFIX_MVEX_0F385D) },
    { PREFIX_TABLE (PREFIX_MVEX_0F385E) },
    { PREFIX_TABLE (PREFIX_MVEX_0F385F) },
    /* 60 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3864) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3865) },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 68 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F386C) },
    { PREFIX_TABLE (PREFIX_MVEX_0F386D) },
    { PREFIX_TABLE (PREFIX_MVEX_0F386E) },
    { PREFIX_TABLE (PREFIX_MVEX_0F386F) },
    /* 70 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3874) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 78 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 80 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3884) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3886) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3887) },
    /* 88 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 90 */
    { PREFIX_TABLE (PREFIX_MVEX_0F3890) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3892) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 98 */
    { PREFIX_TABLE (PREFIX_MVEX_0F3898) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F389A) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F389C) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F389E) },
    { Bad_Opcode },
    /* a0 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38A0) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38A2) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38A4) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* a8 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38A8) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38AA) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38AC) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38AE) },
    { Bad_Opcode },
    /* b0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38B4) },
    { PREFIX_TABLE (PREFIX_MVEX_0F38B5) },
    { Bad_Opcode },
    { Bad_Opcode },
    /* b8 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38B8) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38BA) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38BC) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38BE) },
    { Bad_Opcode },
    /* c0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { REG_TABLE (REG_MVEX_0F38C6) },
    { Bad_Opcode },
    /* c8 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38C8) },
    { PREFIX_TABLE (PREFIX_MVEX_0F38C9) },
    { PREFIX_TABLE (PREFIX_MVEX_0F38CA) },
    { PREFIX_TABLE (PREFIX_MVEX_0F38CB) },
    { PREFIX_TABLE (PREFIX_MVEX_0F38CC) },
    { PREFIX_TABLE (PREFIX_MVEX_0F38CD) },
    { Bad_Opcode },
    { Bad_Opcode },
    /* d0 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38D0) },
    { PREFIX_TABLE (PREFIX_MVEX_0F38D1) },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F38D4) },
    { PREFIX_TABLE (PREFIX_MVEX_0F38D5) },
    { Bad_Opcode },
    { Bad_Opcode },
    /* d8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* e0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* e8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* f0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* f8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
  },
  /* VEX_0F3A */
  {
    /* 00 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3A03) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3A07) },
    /* 08 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 10 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 18 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3A1E) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3A1F) },
    /* 20 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3A26) },
    { Bad_Opcode },
    /* 28 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 30 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 38 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 40 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 48 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 50 */
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3A52) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 58 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 60 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 68 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 70 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 78 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 80 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 88 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 90 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* 98 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* a0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* a8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* b0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* b8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* c0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* c8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3ACA) },
    { PREFIX_TABLE (PREFIX_MVEX_0F3ACB) },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* d0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* d8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* e0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F3AE6) },
    { Bad_Opcode },
    /* e8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* f0 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    /* f8 */
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
  },
};

#endif /* NEED_OPCODE_TABLE */

#ifdef NEED_REG_TABLE
  /* REG_MVEX_0F18 */
  {
    { MOD_TABLE (MOD_MVEX_0F18_REG_0) },
    { MOD_TABLE (MOD_MVEX_0F18_REG_1) },
    { MOD_TABLE (MOD_MVEX_0F18_REG_2) },
    { MOD_TABLE (MOD_MVEX_0F18_REG_3) },
    { MOD_TABLE (MOD_MVEX_0F18_REG_4) },
    { MOD_TABLE (MOD_MVEX_0F18_REG_5) },
    { MOD_TABLE (MOD_MVEX_0F18_REG_6) },
    { MOD_TABLE (MOD_MVEX_0F18_REG_7) },
  },
  /* REG_MVEX_0F72 */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F72_REG_2) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F72_REG_4) },
    { Bad_Opcode },
    { PREFIX_TABLE (PREFIX_MVEX_0F72_REG_6) },
  },
  /* REG_MVEX_0FAE */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { Bad_Opcode },
    { MOD_TABLE (MOD_MVEX_0FAE_REG_7) },
  },
  /* REG_MVEX_0F38C6 */
  {
    { MOD_TABLE (MOD_MVEX_0F38C6_REG_0) },
    { MOD_TABLE (MOD_MVEX_0F38C6_REG_1) },
    { MOD_TABLE (MOD_MVEX_0F38C6_REG_2) },
    { Bad_Opcode },
    { MOD_TABLE (MOD_MVEX_0F38C6_REG_4) },
    { MOD_TABLE (MOD_MVEX_0F38C6_REG_5) },
    { MOD_TABLE (MOD_MVEX_0F38C6_REG_6) },
  },
  /* REG_KNC_0F18 */
  {
    { MOD_TABLE (MOD_KNC_0F18_REG_0) },
    { MOD_TABLE (MOD_KNC_0F18_REG_1) },
    { MOD_TABLE (MOD_KNC_0F18_REG_2) },
    { MOD_TABLE (MOD_KNC_0F18_REG_3) },
    { MOD_TABLE (MOD_KNC_0F18_REG_4) },
    { MOD_TABLE (MOD_KNC_0F18_REG_5) },
    { MOD_TABLE (MOD_KNC_0F18_REG_6) },
    { MOD_TABLE (MOD_KNC_0F18_REG_7) },
  },
  /* REG_KNC_0FAE */
  {
    { Bad_Opcode },
    { Bad_Opcode },
    { MOD_TABLE (MOD_VEX_0FAE_REG_2) },
    { MOD_TABLE (MOD_VEX_0FAE_REG_3) },
    { Bad_Opcode },
    { Bad_Opcode },
    { MOD_TABLE (MOD_KNC_0FAE_REG_6) },
    { MOD_TABLE (MOD_KNC_0FAE_REG_7) },
  },
#endif /* NEED_REG_TABLE */

#ifdef NEED_MOD_TABLE
  {
    /* MOD_MVEX_0F18_REG_0 */
    { PREFIX_TABLE (PREFIX_MVEX_0F18_R_0_M_0) },
  },
  {
    /* MOD_MVEX_0F18_REG_1 */
    { PREFIX_TABLE (PREFIX_MVEX_0F18_R_1_M_0) },
  },
  {
    /* MOD_MVEX_0F18_REG_2 */
    { PREFIX_TABLE (PREFIX_MVEX_0F18_R_2_M_0) },
  },
  {
    /* MOD_MVEX_0F18_REG_3 */
    { PREFIX_TABLE (PREFIX_MVEX_0F18_R_3_M_0) },
  },
  {
    /* MOD_MVEX_0F18_REG_4 */
    { PREFIX_TABLE (PREFIX_MVEX_0F18_R_4_M_0) },
  },
  {
    /* MOD_MVEX_0F18_REG_5 */
    { PREFIX_TABLE (PREFIX_MVEX_0F18_R_5_M_0) },
  },
  {
    /* MOD_MVEX_0F18_REG_6 */
    { PREFIX_TABLE (PREFIX_MVEX_0F18_R_6_M_0) },
  },
  {
    /* MOD_MVEX_0F18_REG_7 */
    { PREFIX_TABLE (PREFIX_MVEX_0F18_R_7_M_0) },
  },
  {
    /* MOD_MVEX_0FAE_REG_7 */
    { PREFIX_TABLE (PREFIX_MVEX_0FAE_R_7_M_0) },
  },
  {
    /* MOD_MVEX_0F38C6_REG_0 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38C6_REG_0) },
  },
  {
    /* MOD_MVEX_0F38C6_REG_1 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38C6_REG_1) },
  },
  {
    /* MOD_MVEX_0F38C6_REG_2 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38C6_REG_2) },
  },
  {
    /* MOD_MVEX_0F38C6_REG_4 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38C6_REG_4) },
  },
  {
    /* MOD_MVEX_0F38C6_REG_5 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38C6_REG_5) },
  },
  {
    /* MOD_MVEX_0F38C6_REG_6 */
    { PREFIX_TABLE (PREFIX_MVEX_0F38C6_REG_6) },
  },
  {
    /* MOD_KNC_0F18_REG_0 */
    { PREFIX_TABLE (PREFIX_KNC_0F18_R_0_M_0) },
  },
  {
    /* MOD_KNC_0F18_REG_1 */
    { PREFIX_TABLE (PREFIX_KNC_0F18_R_1_M_0) },
  },
  {
    /* MOD_KNC_0F18_REG_2 */
    { PREFIX_TABLE (PREFIX_KNC_0F18_R_2_M_0) },
  },
  {
    /* MOD_KNC_0F18_REG_3 */
    { PREFIX_TABLE (PREFIX_KNC_0F18_R_3_M_0) },
  },
  {
    /* MOD_KNC_0F18_REG_4 */
    { PREFIX_TABLE (PREFIX_KNC_0F18_R_4_M_0) },
  },
  {
    /* MOD_KNC_0F18_REG_5 */
    { PREFIX_TABLE (PREFIX_KNC_0F18_R_5_M_0) },
  },
  {
    /* MOD_KNC_0F18_REG_6 */
    { PREFIX_TABLE (PREFIX_KNC_0F18_R_6_M_0) },
  },
  {
    /* MOD_KNC_0F18_REG_7 */
    { PREFIX_TABLE (PREFIX_KNC_0F18_R_7_M_0) },
  },
  {
    /* MOD_KNC_0FAE_REG_6 */
    { Bad_Opcode },
    { VEX_LEN_TABLE (VEX_LEN_KNC_0FAE_R_6_M_1) },
  },
  {
    /* MOD_KNC_0FAE_REG_7 */
    { VEX_LEN_TABLE (VEX_LEN_KNC_0FAE_R_7_M_0) },
  },
#endif /* NEED_MOD_TABLE */

#ifdef NEED_VEX_LEN_TABLE
  /* VEX_LEN_KNC_74_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_74_P_0) },
  },

  /* VEX_LEN_KNC_75_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_75_P_0) },
  },

  /* VEX_LEN_KNC_0F18_R_0_M_0_P_0 */
  {
    { "vprefetchnta",	{ Mb } },
  },

  /* VEX_LEN_KNC_0F18_R_1_M_0_P_0 */
  {
    { "vprefetch0",	{ Mb } },
  },

  /* VEX_LEN_KNC_0F18_R_2_M_0_P_0 */
  {
    { "vprefetch1",	{ Mb } },
  },

  /* VEX_LEN_KNC_0F18_R_3_M_0_P_0 */
  {
    { "vprefetch2",	{ Mb } },
  },

  /* VEX_LEN_KNC_0F18_R_4_M_0_P_0 */
  {
    { "vprefetchenta",	{ Mb } },
  },

  /* VEX_LEN_KNC_0F18_R_5_M_0_P_0 */
  {
    { "vprefetche0",	{ Mb } },
  },

  /* VEX_LEN_KNC_0F18_R_6_M_0_P_0 */
  {
    { "vprefetche1",	{ Mb } },
  },

  /* VEX_LEN_KNC_0F18_R_7_M_0_P_0 */
  {
    { "vprefetche2",	{ Mb } },
  },

  /* VEX_LEN_KNC_0F41_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F41_P_0) },
  },

  /* VEX_LEN_KNC_0F42_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F42_P_0) },
  },

  /* VEX_LEN_KNC_0F43_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F43_P_0) },
  },

  /* VEX_LEN_KNC_0F44_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F44_P_0) },
  },

  /* VEX_LEN_KNC_0F45_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F45_P_0) },
  },

  /* VEX_LEN_KNC_0F46_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F46_P_0) },
  },

  /* VEX_LEN_KNC_0F47_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F47_P_0) },
  },

  /* VEX_LEN_KNC_0F48_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F48_P_0) },
  },

  /* VEX_LEN_KNC_0F49_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F49_P_0) },
  },

  /* VEX_LEN_KNC_0F84_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F84_P_0) },
  },

  /* VEX_LEN_KNC_0F85_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F85_P_0) },
  },

  /* VEX_LEN_KNC_0F90_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F90_P_0) },
  },

  /* VEX_LEN_KNC_0F92_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F92_P_0) },
  },

  /* VEX_LEN_KNC_0F93_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F93_P_0) },
  },

  /* VEX_LEN_KNC_0F95_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F95_P_0) },
  },

  /* VEX_LEN_KNC_0F97_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F97_P_0) },
  },

  /* VEX_LEN_KNC_0F98_P_0 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F98_P_0) },
  },

  /* VEX_LEN_KNC_0FAE_R_6_M_1 */
  {
    { PREFIX_TABLE (PREFIX_KNC_0FAE_R_6_M_1) },
  },

  /* VEX_LEN_KNC_0FAE_R_7_M_0 */
  {
    { PREFIX_TABLE (PREFIX_KNC_0FAE_R_7_M_0) },
  },

  /* VEX_LEN_KNC_0FB8_P_1 */
  {
    { "popcntS",	{ Gdq, KRdq } },
  },

  /* VEX_LEN_KNC_0FBC_P_1 */
  {
    { "tzcntS",		{ Gdq, KRdq } },
  },

  /* VEX_LEN_KNC_0FBC_P_3 */
  {
    { "tzcntiS",	{ Gdq, KRdq } },
  },

  /* VEX_LEN_KNC_0FBD_P_1 */
  {
    { "lzcntS",		{ Gdq, KRdq } },
  },

  /* VEX_LEN_KNC_0F38F0_P_1 */
  {
    { "bitinterleave21S", { Gdq, KRdq } },
  },

  /* VEX_LEN_KNC_0F38F0_P_3 */
  {
    { "bitinterleave11S", { Gdq, KRdq } },
  },

  /* VEX_LEN_KNC_0F38F1_P_3 */
  {
    { "quadmaskS",	{ Gdq, KRdq } },
  },

  /* VEX_LEN_KNC_0F3A3E_P_2 */
  {
    { VEX_W_TABLE (VEX_W_KNC_0F3A3E_P_2) },
  },
#endif /* NEED_VEX_LEN_TABLE */

#ifdef NEED_KNC_VEX_TABLE
  { 0, 0x74, { PREFIX_TABLE (PREFIX_KNC_74) } },
  { 0, 0x75, { PREFIX_TABLE (PREFIX_KNC_75) } },
  { 1, 0x18, { REG_TABLE (REG_KNC_0F18) } },
  { 1, 0x41, { PREFIX_TABLE (PREFIX_KNC_0F41) } },
  { 1, 0x42, { PREFIX_TABLE (PREFIX_KNC_0F42) } },
  { 1, 0x43, { PREFIX_TABLE (PREFIX_KNC_0F43) } },
  { 1, 0x44, { PREFIX_TABLE (PREFIX_KNC_0F44) } },
  { 1, 0x45, { PREFIX_TABLE (PREFIX_KNC_0F45) } },
  { 1, 0x46, { PREFIX_TABLE (PREFIX_KNC_0F46) } },
  { 1, 0x47, { PREFIX_TABLE (PREFIX_KNC_0F47) } },
  { 1, 0x48, { PREFIX_TABLE (PREFIX_KNC_0F48) } },
  { 1, 0x49, { PREFIX_TABLE (PREFIX_KNC_0F49) } },
  { 1, 0x84, { PREFIX_TABLE (PREFIX_KNC_0F84) } },
  { 1, 0x85, { PREFIX_TABLE (PREFIX_KNC_0F85) } },
  { 1, 0x90, { PREFIX_TABLE (PREFIX_KNC_0F90) } },
  { 1, 0x92, { PREFIX_TABLE (PREFIX_KNC_0F92) } },
  { 1, 0x93, { PREFIX_TABLE (PREFIX_KNC_0F93) } },
  { 1, 0x95, { PREFIX_TABLE (PREFIX_KNC_0F95) } },
  { 1, 0x97, { PREFIX_TABLE (PREFIX_KNC_0F97) } },
  { 1, 0x98, { PREFIX_TABLE (PREFIX_KNC_0F98) } },
  { 1, 0xae, { REG_TABLE (REG_KNC_0FAE) } },
  { 1, 0xb8, { PREFIX_TABLE (PREFIX_KNC_0FB8) } },
  { 1, 0xbc, { PREFIX_TABLE (PREFIX_KNC_0FBC) } },
  { 1, 0xbd, { PREFIX_TABLE (PREFIX_KNC_0FBD) } },
  { 2, 0xf0, { PREFIX_TABLE (PREFIX_KNC_0F38F0) } },
  { 2, 0xf1, { PREFIX_TABLE (PREFIX_KNC_0F38F1) } },
  { 3, 0x3e, { PREFIX_TABLE (PREFIX_KNC_0F3A3E) } },
#endif /* NEED_KNC_VEX_TABLE */

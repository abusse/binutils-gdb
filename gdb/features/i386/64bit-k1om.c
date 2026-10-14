/* THIS FILE IS GENERATED.  -*- buffer-read-only: t -*- vi:set ro:
  Original: 64bit-k1om.xml */

#include "gdbsupport/tdesc.h"

static int
create_feature_i386_64bit_k1om (struct target_desc *result, long regnum)
{
  struct tdesc_feature *feature;

  feature = tdesc_create_feature (result, "org.gnu.gdb.i386.k1om");
  tdesc_type *element_type;
  element_type = tdesc_named_type (feature, "ieee_single");
  tdesc_create_vector (feature, "v16f", element_type, 16);

  element_type = tdesc_named_type (feature, "ieee_double");
  tdesc_create_vector (feature, "v8d", element_type, 8);

  element_type = tdesc_named_type (feature, "int8");
  tdesc_create_vector (feature, "v64i8", element_type, 64);

  element_type = tdesc_named_type (feature, "int16");
  tdesc_create_vector (feature, "v32i16", element_type, 32);

  element_type = tdesc_named_type (feature, "int32");
  tdesc_create_vector (feature, "v16i32", element_type, 16);

  element_type = tdesc_named_type (feature, "int64");
  tdesc_create_vector (feature, "v8i64", element_type, 8);

  element_type = tdesc_named_type (feature, "uint128");
  tdesc_create_vector (feature, "v4ui128", element_type, 4);

  tdesc_type_with_fields *type_with_fields;
  type_with_fields = tdesc_create_union (feature, "vec512");
  tdesc_type *field_type;
  field_type = tdesc_named_type (feature, "v16f");
  tdesc_add_field (type_with_fields, "v16_float", field_type);
  field_type = tdesc_named_type (feature, "v8d");
  tdesc_add_field (type_with_fields, "v8_double", field_type);
  field_type = tdesc_named_type (feature, "v64i8");
  tdesc_add_field (type_with_fields, "v64_int8", field_type);
  field_type = tdesc_named_type (feature, "v32i16");
  tdesc_add_field (type_with_fields, "v32_int16", field_type);
  field_type = tdesc_named_type (feature, "v16i32");
  tdesc_add_field (type_with_fields, "v16_int32", field_type);
  field_type = tdesc_named_type (feature, "v8i64");
  tdesc_add_field (type_with_fields, "v8_int64", field_type);
  field_type = tdesc_named_type (feature, "v4ui128");
  tdesc_add_field (type_with_fields, "v4_uint128", field_type);

  type_with_fields = tdesc_create_flags (feature, "k1om_vxcsr", 4);
  tdesc_add_flag (type_with_fields, 0, "IE");
  tdesc_add_flag (type_with_fields, 1, "DE");
  tdesc_add_flag (type_with_fields, 2, "ZE");
  tdesc_add_flag (type_with_fields, 3, "OE");
  tdesc_add_flag (type_with_fields, 4, "UE");
  tdesc_add_flag (type_with_fields, 5, "PE");
  tdesc_add_flag (type_with_fields, 6, "DAZ");
  tdesc_add_bitfield (type_with_fields, "RC", 13, 14);
  tdesc_add_flag (type_with_fields, 15, "FZ");
  tdesc_add_flag (type_with_fields, 21, "DUE");

  regnum = 40;
  tdesc_create_reg (feature, "k0", regnum++, 1, NULL, 16, "uint16");
  tdesc_create_reg (feature, "k1", regnum++, 1, NULL, 16, "uint16");
  tdesc_create_reg (feature, "k2", regnum++, 1, NULL, 16, "uint16");
  tdesc_create_reg (feature, "k3", regnum++, 1, NULL, 16, "uint16");
  tdesc_create_reg (feature, "k4", regnum++, 1, NULL, 16, "uint16");
  tdesc_create_reg (feature, "k5", regnum++, 1, NULL, 16, "uint16");
  tdesc_create_reg (feature, "k6", regnum++, 1, NULL, 16, "uint16");
  tdesc_create_reg (feature, "k7", regnum++, 1, NULL, 16, "uint16");
  tdesc_create_reg (feature, "zmm0", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm1", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm2", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm3", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm4", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm5", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm6", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm7", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm8", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm9", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm10", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm11", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm12", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm13", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm14", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm15", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm16", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm17", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm18", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm19", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm20", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm21", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm22", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm23", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm24", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm25", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm26", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm27", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm28", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm29", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm30", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "zmm31", regnum++, 1, NULL, 512, "vec512");
  tdesc_create_reg (feature, "vxcsr", regnum++, 1, "vector", 32, "k1om_vxcsr");
  return regnum;
}

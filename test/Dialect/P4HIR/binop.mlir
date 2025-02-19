// RUN: p4mlir-opt %s | FileCheck %s

!u8i  = !p4hir.bit<8>
!s8i  = !p4hir.int<8>

// No need to check stuff. If it parses, it's fine.
// CHECK: module
module {
  %lhs_u8i = p4hir.const #p4hir.int<42> : !u8i
  %rhs_u8i = p4hir.const #p4hir.int<42> : !u8i

  %mul_u8i = p4hir.binop(mul, %lhs_u8i, %rhs_u8i) : !u8i
  %div_u8i = p4hir.binop(div, %lhs_u8i, %rhs_u8i) : !u8i
  %mod_u8i = p4hir.binop(mod, %lhs_u8i, %rhs_u8i) : !u8i
  %add_u8i = p4hir.binop(add, %lhs_u8i, %rhs_u8i) : !u8i
  %sub_u8i = p4hir.binop(sub, %lhs_u8i, %rhs_u8i) : !u8i
  %sadd_u8i = p4hir.binop(sadd, %lhs_u8i, %rhs_u8i) : !u8i
  %ssub_u8i = p4hir.binop(ssub, %lhs_u8i, %rhs_u8i) : !u8i
  %and_u8i = p4hir.binop(and, %lhs_u8i, %rhs_u8i) : !u8i
  %or_u8i = p4hir.binop(or, %lhs_u8i, %rhs_u8i) : !u8i
  %xor_u8i = p4hir.binop(xor, %lhs_u8i, %rhs_u8i) : !u8i

  %lhs_s8i = p4hir.const #p4hir.int<42> : !s8i
  %rhs_s8i = p4hir.const #p4hir.int<42> : !s8i

  %mul_s8i = p4hir.binop(mul, %lhs_s8i, %rhs_s8i) : !s8i
  %div_s8i = p4hir.binop(div, %lhs_s8i, %rhs_s8i) : !s8i
  %mod_s8i = p4hir.binop(mod, %lhs_s8i, %rhs_s8i) : !s8i
  %add_s8i = p4hir.binop(add, %lhs_s8i, %rhs_s8i) : !s8i
  %sub_s8i = p4hir.binop(sub, %lhs_s8i, %rhs_s8i) : !s8i
  %sadd_s8i = p4hir.binop(sadd, %lhs_s8i, %rhs_s8i) : !s8i
  %ssub_s8i = p4hir.binop(ssub, %lhs_s8i, %rhs_s8i) : !s8i
  %and_s8i = p4hir.binop(and, %lhs_s8i, %rhs_s8i) : !s8i
  %or_s8i = p4hir.binop(or, %lhs_s8i, %rhs_s8i) : !s8i
  %xor_s8i = p4hir.binop(xor, %lhs_s8i, %rhs_s8i) : !s8i
}

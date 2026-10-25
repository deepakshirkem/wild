# -z ibt marks the output as IBT-compatible (GNU_PROPERTY_X86_FEATURE_1_IBT) even though the input
# has no CET properties. -z ibtplt is accepted: Wild's x86-64 PLT entries always start with
# `endbr64`. lld doesn't support these options, so bfd is the reference.
//#AbstractConfig:default
//#Arch:x86_64
//#Mode:static
//#RunEnabled:false
//#CompArgs:-fcf-protection=none
//#ReferenceLinkers:bfd

//#Config:ibt:default
//#LinkArgs:-z ibt
//#ExpectSectionBytes:.note.gnu.property=0x020000c00400000001000000 16..28

//#Config:ibtplt:default
//#LinkArgs:-z ibtplt

.globl _start
_start:
  ret

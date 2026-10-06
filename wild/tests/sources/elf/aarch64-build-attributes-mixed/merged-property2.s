.section ".note.gnu.property", "a"
.align 4
.long 4
.long end2 - begin2
.long 5
.asciz "GNU"

begin2:
.align 4
.long 0xc0000000
.long 4
.long 3 // BTI | PAC; GCS is absent to verify AND merging
.long 0
end2:

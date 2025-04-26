.section .data

.word 0x80371240                          /* PI BSB Domain 1 register */
.word 0x0000000F                          /* Clockrate setting */
.word entrypoint                          /* Entrypoint address */
.word 0x00001444                          /* Revision */
.word 0x00000000                          /* Checksum 1 */
.word 0x00000000                          /* Checksum 2 */
.word 0x00000000                          /* Unknown 1 */
.word 0x00000000                          /* Unknown 2 */
.ascii "(C) DATEL D&D 99                " /* Internal name */

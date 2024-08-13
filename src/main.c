#include <stdbool.h>
#include <stddef.h>

#include "common.h"

extern void write_to_fiq_banks();
extern void write_to_svc_banks();
extern void write_to_abt_banks();
extern void write_to_irq_banks();
extern void load_all();

void main(void) {
    write_to_fiq_banks();
    write_to_svc_banks();
    write_to_abt_banks();
    write_to_irq_banks();
    load_all();
    while(true);
}

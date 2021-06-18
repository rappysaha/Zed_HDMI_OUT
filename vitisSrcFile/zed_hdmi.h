#ifndef __ZED_HDMI_H__
#define __ZED_HDMI_H__

#include <stdio.h>
#include "zed_iic.h"

int check_hdmi_hpd_status(zed_iic_t *piic, u8 Address);
void configure_adv7511(zed_iic_t *piic, u8 Address);
void HDMI_config(zed_iic_t *piic);
#endif

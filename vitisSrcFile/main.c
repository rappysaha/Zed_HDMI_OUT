
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xv_tpg.h"

#include "zed_hdmi.h"

#define IIC_BASEADDR XPAR_IIC_0_BASEADDR
#define TPG_ID 		 XPAR_V_TPG_0_DEVICE_ID

zed_iic_t iic;
XV_tpg tpg;

int main()
{
    int Status;
    u8 mon_conn =0;
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application\n");

    xil_printf( "HDMI IIC Initialization ...\n\r" );
    Status = zed_iic_axi_init( &iic, "ZED HDMI I2C Controller",IIC_BASEADDR);

	if (Status != 1) {
		xil_printf( "ERROR : Failed to initialize IIC driver\n\r" );
		return -1;
	}
	xil_printf("IIC initialization Successful\n");

	while(!mon_conn)
	{
		mon_conn = check_hdmi_hpd_status(&iic, 0x39);
		if (mon_conn)
		{
			xil_printf("HDMI Connected\n");
		}
		else
		{
			xil_printf("HDMI NOT - Connected\n");
		}
		sleep(2);
	}

	HDMI_config(&iic);
	xil_printf("HDMI Setup Complete!\r\n");

	// TPG initialization
	Status = XV_tpg_Initialize(&tpg, TPG_ID);
	if(Status!= XST_SUCCESS)
	{
		xil_printf("TPG configuration failed\r\n");
		return(XST_FAILURE);
	}
	// Set Resolution to 1280x720
	XV_tpg_Set_height(&tpg, 720);
	XV_tpg_Set_width(&tpg, 1280);


	// Set Color Space to YUV422
	XV_tpg_Set_colorFormat(&tpg, 0x2);

	XV_tpg_Set_bckgndId(&tpg, XTPG_BKGND_COLOR_BARS);
	// Set	 Overlay to moving box
	// Set the size of the box
	XV_tpg_Set_boxSize(&tpg, 50);
	// Set the speed of the box
	XV_tpg_Set_motionSpeed(&tpg, 5);
	// Enable the moving box
	XV_tpg_Set_ovrlayId(&tpg, 1);
	//Start the TPG
	XV_tpg_EnableAutoRestart(&tpg);
	XV_tpg_Start(&tpg);
	xil_printf("TPG started!\r\n");

	while(1);
	cleanup_platform();

    return 0;
}



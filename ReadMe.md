The Project was created for Vivado 2020.2.
But since no version specific IP were use, we can regenerate the project by simply changing the verion number 
in the TCL. Although I did not test it. Recommended 2020.2.
The License for Vtpg is required.

We have connected a simple test pattern generator to the Zed board. turns out for zed board we don't need any HDMI IP for 
video output. The test pattern output will be displayed in the Monitor.

The project was created by the help of the following links. 

[Xilinx Video Series 19](https://forums.xilinx.com/t5/Video-and-Audio/Video-Series-19-Using-the-On-Board-HDMI-on-ZC702-Vivado-design/td-p/914989)

[Xilinx Video Series 20](https://forums.xilinx.com/t5/Video-and-Audio/Video-Series-20-Starting-with-SDK-and-configuring-the-ADV7511/m-p/917308#M23024%2Fjump-to%2Ffirst-unread-message)

[Xilinx Video Series 21](https://forums.xilinx.com/t5/Video-and-Audio/Video-Series-21-TPG-Application-on-ZC702/td-p/922324)

The above mentioned series targeted ZC702 board while this project is all about Zed board. Lots of similarities but simple difference is there and that is also discussed in the [Xilinx forum](https://forums.xilinx.com/t5/Video-and-Audio/Zedboard-HDMI-Display-Failed-to-Access-ADV7511-via-I2C/td-p/1054540) by the author of the above series. Depending on this discussion this project was build. There is slight modification in HDMI configuration.

The more details will come soon.




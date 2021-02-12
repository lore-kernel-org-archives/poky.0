Subject: BeagleBone Black Kernel Not build #poky
To: poky@lists.yoctoproject.org
From: milav.soni@teqdiligent.com
X-Originating-Location: Mumbai, Maharashtra, IN (122.170.13.184)
X-Originating-Platform: Windows Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 12 Feb 2021 05:44:15 -0800
Message-ID: <NImp.1613137455662471276.Su3E@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="de4jQfuV1BhUOfyQA2Cr"

--de4jQfuV1BhUOfyQA2Cr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Team,

I am trying to boot beaglebone black using yocto.

I have downloaded poky version :- rocko from yocto site.

I am trying to build core-sato-images for beagle bone black, and i am succ=
essful build sato image.

but when i just boot the Beaglebone black, I see following boot messages.

It seems my beaglebone black are resetting periodically.

*Log :-*

U-Boot 2017.09 (Jan 06 2021 - 13:18:10 +0000)

CPU=C2=A0 : AM335X-GP rev 2.1
I2C:=C2=A0 =C2=A0ready
DRAM:=C2=A0 512 MiB
No match for driver 'omap_hsmmc'
No match for driver 'omap_hsmmc'
Some drivers were not found
MMC:=C2=A0 =C2=A0OMAP SD/MMC: 0, OMAP SD/MMC: 1
** First descriptor is NOT a primary desc on 1:1 **
<ethaddr> not set. Validating first E-fuse MAC
Net:=C2=A0 =C2=A0cpsw, usb_ether
Press SPACE to abort autoboot in 2 seconds
switch to partitions #0, OK
mmc0 is current device
SD/MMC found on device 0
reading boot.scr
** Unable to read file boot.scr **
reading uEnv.txt
** Unable to read file uEnv.txt **
switch to partitions #0, OK
mmc0 is current device
Scanning mmc 0:1...
switch to partitions #0, OK
mmc0 is current device
SD/MMC found on device 0
3654200 bytes read in 289 ms (12.1 MiB/s)
35788 bytes read in 45 ms (776.4 KiB/s)
## Flattened Device Tree blob at 88000000
Booting using the fdt blob at 0x88000000
Loading Device Tree to 8fff4000, end 8ffffbcb ... OK

Starting kernel ...

data abort
pc : [<82000034>]=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lr : [<9ff50021>]
reloc pc : [<628b1034>]=C2=A0 =C2=A0 lr : [<80801021>]
sp : 9df2e3d0=C2=A0 ip : 9ff50149=C2=A0 =C2=A0 =C2=A0fp : 00000004
r10: 9ff9f4d8=C2=A0 r9 : 9df2eed8=C2=A0 =C2=A0 =C2=A0r8 : 9ff50149
r7 : 00000000=C2=A0 r6 : 82000000=C2=A0 =C2=A0 =C2=A0r5 : 9ffa0cc8=C2=A0 r=
4 : 00000000
r3 : 00008bcc=C2=A0 r2 : 00000000=C2=A0 =C2=A0 =C2=A0r1 : 00000e05=C2=A0 r=
0 : 00000000
Flags: NzCv=C2=A0 IRQs off=C2=A0 FIQs on=C2=A0 Mode SVC_32
Resetting CPU ...

resetting ...

U-Boot SPL 2017.09 (Jan 06 2021 - 13:18:10)
Trying to boot from MMC1
** First descriptor is NOT a primary desc on 1:1 **
reading u-boot.img
reading u-boot.img

U-Boot 2017.09 (Jan 06 2021 - 13:18:10 +0000)

CPU=C2=A0 : AM335X-GP rev 2.1
I2C:=C2=A0 =C2=A0ready
DRAM:=C2=A0 512 MiB
......
.....
......

I dont know why this happen?

please help me out in this problem.

Thank You

--de4jQfuV1BhUOfyQA2Cr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Team,<br /><br />I am trying to boot beaglebone black using yocto.<br=
 /><br />I have downloaded poky version :- rocko from yocto site.<br /><br =
/>I am trying to build core-sato-images for beagle bone black, and i am suc=
cessful build sato image.<br /><br />but when i just boot the Beaglebone bl=
ack, I see following boot messages.&nbsp;<br /><br />It seems my beaglebone=
 black are resetting periodically.<br /><br /><strong>Log :-</strong><br />=
<br />
<div>U-Boot 2017.09 (Jan 06 2021 - 13:18:10 +0000)</div>
<div>&nbsp;</div>
<div>CPU&nbsp; : AM335X-GP rev 2.1</div>
<div>I2C:&nbsp; &nbsp;ready</div>
<div>DRAM:&nbsp; 512 MiB</div>
<div>No match for driver 'omap_hsmmc'</div>
<div>No match for driver 'omap_hsmmc'</div>
<div>Some drivers were not found</div>
<div>MMC:&nbsp; &nbsp;OMAP SD/MMC: 0, OMAP SD/MMC: 1</div>
<div>** First descriptor is NOT a primary desc on 1:1 **</div>
<div>&lt;ethaddr&gt; not set. Validating first E-fuse MAC</div>
<div>Net:&nbsp; &nbsp;cpsw, usb_ether</div>
<div>Press SPACE to abort autoboot in 2 seconds</div>
<div>switch to partitions #0, OK</div>
<div>mmc0 is current device</div>
<div>SD/MMC found on device 0</div>
<div>reading boot.scr</div>
<div>** Unable to read file boot.scr **</div>
<div>reading uEnv.txt</div>
<div>** Unable to read file uEnv.txt **</div>
<div>switch to partitions #0, OK</div>
<div>mmc0 is current device</div>
<div>Scanning mmc 0:1...</div>
<div>switch to partitions #0, OK</div>
<div>mmc0 is current device</div>
<div>SD/MMC found on device 0</div>
<div>3654200 bytes read in 289 ms (12.1 MiB/s)</div>
<div>35788 bytes read in 45 ms (776.4 KiB/s)</div>
<div>## Flattened Device Tree blob at 88000000</div>
<div>&nbsp; &nbsp;Booting using the fdt blob at 0x88000000</div>
<div>&nbsp; &nbsp;Loading Device Tree to 8fff4000, end 8ffffbcb ... OK</di=
v>
<div>&nbsp;</div>
<div>Starting kernel ...</div>
<div>&nbsp;</div>
<div>data abort</div>
<div>pc : [&lt;82000034&gt;]&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; lr : [&lt;9=
ff50021&gt;]</div>
<div>reloc pc : [&lt;628b1034&gt;]&nbsp; &nbsp; lr : [&lt;80801021&gt;]</d=
iv>
<div>sp : 9df2e3d0&nbsp; ip : 9ff50149&nbsp; &nbsp; &nbsp;fp : 00000004</d=
iv>
<div>r10: 9ff9f4d8&nbsp; r9 : 9df2eed8&nbsp; &nbsp; &nbsp;r8 : 9ff50149</d=
iv>
<div>r7 : 00000000&nbsp; r6 : 82000000&nbsp; &nbsp; &nbsp;r5 : 9ffa0cc8&nb=
sp; r4 : 00000000</div>
<div>r3 : 00008bcc&nbsp; r2 : 00000000&nbsp; &nbsp; &nbsp;r1 : 00000e05&nb=
sp; r0 : 00000000</div>
<div>Flags: NzCv&nbsp; IRQs off&nbsp; FIQs on&nbsp; Mode SVC_32</div>
<div>Resetting CPU ...</div>
<div>&nbsp;</div>
<div>resetting ...<br /><br />
<div>U-Boot SPL 2017.09 (Jan 06 2021 - 13:18:10)</div>
<div>Trying to boot from MMC1</div>
<div>** First descriptor is NOT a primary desc on 1:1 **</div>
<div>reading u-boot.img</div>
<div>reading u-boot.img</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>U-Boot 2017.09 (Jan 06 2021 - 13:18:10 +0000)</div>
<div>&nbsp;</div>
<div>CPU&nbsp; : AM335X-GP rev 2.1</div>
<div>I2C:&nbsp; &nbsp;ready</div>
<div>DRAM:&nbsp; 512 MiB<br />......<br />.....<br />......<br /><br />I d=
ont know why this happen?<br /><br />please help me out in this problem.<br=
 /><br />Thank You</div>
</div>

--de4jQfuV1BhUOfyQA2Cr--

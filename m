Subject: Inputs to understand sdcard_image bbclass
To: poky@lists.yoctoproject.org
From: "Ashishx88" <ashish.emailaddress@gmail.com>
X-Originating-Location: Mumbai, Maharashtra, IN (45.248.21.165)
X-Originating-Platform: Linux Firefox 77
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Jul 2020 01:34:30 -0700
Message-ID: <gUlv.1593678870090722257.vMZ2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8GaHnIV6WzWXMzVCoaT4"

--8GaHnIV6WzWXMzVCoaT4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All ,

Can team member please help me to understand *sdcard_image class* to gener=
ate sdimg image .

1) The default core-image-minimal is properly created and i am able to tes=
t it.
# ls -alh *sdimg
-rw-r--r-- 2 ashish ashish=C2=A0=C2=A0 896M Jun 19 10:05 core-image-minima=
l-raspberrypi4-64-20200619043406.rootfs.rpi-sdimg
lrwxrwxrwx 2 ashish ashish=C2=A0=C2=A0 70 Jun 19 10:05 core-image-minimal-=
raspberrypi4-64.rpi-sdimg -> core-image-minimal-raspberrypi4-64-20200619043=
406.rootfs.rpi-sdimg

2) But for my custom image , the bitabake fails at do_image_rpi_sdimg func=
tion.
Debugging i could find that the 956MB custom-image-minimal-raspberrypi4-64=
-20200619043406.rootfs.rpi-sdimg is created
but *custom-image-minimal-raspberrypi4-64..rootfs.rpi-sdimg* is not create=
d and this is due to the error .

Hence i am trying to understand ( as other types like TAR , ext3 etc are p=
roperly created expect for rpi-sdimg )
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/classes/sd=
card_image-rpi.bbclass?h=3Dmaster

For which how to we determine proper values of :
1) IMAGE_ROOTFS_ALIGNMENT
2) BOOT_SPACE
3) SDIMG_SIZE

Thanks ,
Ashish

--8GaHnIV6WzWXMzVCoaT4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All , <br /><br />Can team member please help me to understand <strong>s=
dcard_image class</strong> to generate sdimg image .&nbsp;<br /><br />1) Th=
e default core-image-minimal is properly created and i am able to test it.<=
br />&nbsp;&nbsp; # ls -alh *sdimg<br />-rw-r--r-- 2 ashish ashish&nbsp;&nb=
sp; 896M Jun 19 10:05 core-image-minimal-raspberrypi4-64-20200619043406.roo=
tfs.rpi-sdimg<br />lrwxrwxrwx 2 ashish ashish&nbsp;&nbsp; 70 Jun 19 10:05 c=
ore-image-minimal-raspberrypi4-64.rpi-sdimg -&gt; core-image-minimal-raspbe=
rrypi4-64-20200619043406.rootfs.rpi-sdimg<br /><br /><br />2) But for my cu=
stom image , the bitabake fails at&nbsp;<span style=3D"color: #222222; font=
-family: Arial, Helvetica, sans-serif; font-size: small; font-style: normal=
; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; text-align: start; text-indent: 0px; text-trans=
form: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; background-color: #ffffff; display: inline !important; float: none=
;"> do_image_rpi_sdimg function.&nbsp;<br />&nbsp;&nbsp; Debugging i could =
find that the 956MB </span><span style=3D"text-decoration: underline;">cust=
om-image-minimal-raspberrypi4-64-20200619043406.rootfs.rpi-sdimg</span> is =
created <br />&nbsp;&nbsp; but&nbsp; <strong>custom-image-minimal-raspberry=
pi4-64..rootfs.rpi-sdimg</strong> is not created and this is due to the err=
or . <br />&nbsp;&nbsp; <br />Hence i am trying to understand ( as other ty=
pes like TAR , ext3 etc are properly created expect for rpi-sdimg )<br /><a=
 href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/cl=
asses/sdcard_image-rpi.bbclass?h=3Dmaster">http://git.yoctoproject.org/cgit=
/cgit.cgi/meta-raspberrypi/tree/classes/sdcard_image-rpi.bbclass?h=3Dmaster=
</a><br /><br />For which how to we determine proper values of :<br />1) IM=
AGE_ROOTFS_ALIGNMENT <br />2) BOOT_SPACE<br />3) SDIMG_SIZE<br /><br /><br =
/>Thanks ,<br />Ashish<br /><br /><br /><br />

--8GaHnIV6WzWXMzVCoaT4--

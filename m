Subject: ERROR: Kernel configuration is invalid
To: poky@lists.yoctoproject.org
From: "Ashish" <ashishm@mvista.com>
X-Originating-Location: Thane, Maharashtra, IN (139.5.45.150)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Aug 2020 23:59:10 -0700
Message-ID: <E02h.1596524350140620056.DK0t@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dp7ZWGapYu6nbwBwul23"

--dp7ZWGapYu6nbwBwul23
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All ,

I am trying to build an out-of-tree hello-world module=C2=A0 using the RPI=
4 setup & compile an hello-world kernel module

A) Steps followed :
1) Create an basic hello-world-module.c & Makefile in any known location (=
 say custom layer )
2) $ bitbake -c devshell virtual/kernel
$ make M=3D<Location of module created in step 1 above>=C2=A0 modules

Compilation of kernel-modules with this setup shows below error:
/home/ashish/yocto-default/build-xenimage/tmp/work-shared/raspberrypi4-64/=
kernel-source/Makefile:609: include/config/auto.conf: No such file or direc=
tory

ERROR: Kernel configuration is invalid.
include/generated/autoconf.h or include/config/auto.conf are missing.
Run 'make oldconfig && make prepare' on kernel src to fix it.

But , the config is preset at below location & i can do $ bitbake -c menuc=
onfig virtual/kernel
home/ashish/yocto-default/build-xenimage/tmp/work/raspberrypi4_64-poky-lin=
ux/linux-raspberrypi/1_5.4.51+gitAUTOINC+aafb8f095e_machine-r0/linux-raspbe=
rrypi4_64-standard-build/.config

B) Please find that just to ensure if the procedure to compile an external=
 modules is correct ,
i tried setting MACHINE ?=3D "qemuarm64" , and reported same steps .
I was able to compile the kernel module properly & ran on qemu to confirm =
the module is proper.

C)=C2=A0 I was under expectation that the config file would be proper as w=
e are able to generate minimal image

Any pointers or suggestion as to why the i am getting this error even thou=
gh the .config is preset

--
Thanks ,
Ashish .

--dp7ZWGapYu6nbwBwul23
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All ,&nbsp;<br /><br />I am trying to build an out-of-tree hello-world m=
odule&nbsp; using the RPI4 setup &amp; compile an hello-world kernel module=
<br /><br />
<div style=3D"line-height: 1.42857;">A) Steps followed :<br />&nbsp; &nbsp=
; &nbsp; &nbsp; 1) Create an basic hello-world-module.c &amp; Makefile in a=
ny known location ( say custom layer )&nbsp; &nbsp; &nbsp;&nbsp;<br />&nbsp=
; &nbsp; &nbsp; &nbsp; 2) $ bitbake -c devshell virtual/kernel<br />&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $ make M=3D&lt;Location of module create=
d in step 1 above&gt;&nbsp; modules</div>
<div>&nbsp;</div>
Compilation of kernel-modules with this setup shows below error:<br />
<div><span style=3D"font-weight: bold;">/home/ashish/yocto-default/build-x=
enimage/tmp/work-shared/raspberrypi4-64/kernel-source/Makefile:609: include=
/config/auto.conf: No such file or directory</span></div>
<div>&nbsp;</div>
<div><span style=3D"font-weight: bold;">&nbsp; ERROR: Kernel configuration=
 is invalid.</span></div>
<div><span style=3D"font-weight: bold;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
include/generated/autoconf.h or include/config/auto.conf are missing.</span=
></div>
<div><span style=3D"font-weight: bold;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
Run 'make oldconfig &amp;&amp; make prepare' on kernel src to fix it.<br />=
</span><br />But , the config is preset at below location &amp; i can do $ =
bitbake -c menuconfig virtual/kernel<br />
<div>home/ashish/yocto-default/build-xenimage/tmp/work/raspberrypi4_64-pok=
y-linux/linux-raspberrypi/1_5.4.51+gitAUTOINC+aafb8f095e_machine-r0/linux-r=
aspberrypi4_64-standard-build/.config</div>
<div><br /><br /></div>
B) Please find that just to ensure if the procedure to compile an external=
 modules is correct ,&nbsp;<br />&nbsp; &nbsp; &nbsp;i tried setting&nbsp;<=
span style=3D"font-weight: bold;">MACHINE ?=3D "qemuarm64" ,&nbsp;</span>&n=
bsp;and reported same steps .&nbsp;<br />&nbsp; &nbsp; &nbsp;I was able to =
compile the kernel module properly &amp; ran on qemu to confirm the module =
is proper.&nbsp;<br /><br /><br />C)&nbsp; I was under expectation that the=
 config file would be proper as we are able to generate minimal image<br />=
&nbsp; &nbsp; &nbsp;<br />Any pointers or suggestion as to why the i am get=
ting this error even though the .config is preset&nbsp;<br /><br /><br /></=
div>
-- <br />Thanks ,<br />Ashish .

--dp7ZWGapYu6nbwBwul23--

Subject: Re: Weird Compilation issue with a c++ recipe
To: poky@lists.yoctoproject.org
From: "Arun Ravindran" <arunlee@gmail.com>
X-Originating-Location: Enfield, Leinster, IE (192.198.151.56)
X-Originating-Platform: Windows Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 22:48:41 -0700
References: <12874.1616620083179682241@lists.yoctoproject.org>
In-Reply-To: <12874.1616620083179682241@lists.yoctoproject.org>
Message-ID: <4418.1616651321229040975@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="d04O9EmZx1l8Gr95FTg2"

--d04O9EmZx1l8Gr95FTg2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a new issue now. The package i am trying to build has this dependenc=
y on a pre compiled .so file which is part of the source tree.
The dependency is mentioned in the CMakeList.txt as

if(MSVC)
set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/lib/wi=
ndows/x64)
elseif(${CMAKE_SYSTEM_PROCCESSOR} MATCHES "aarch64|AARCH64")
set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/lib/li=
nux/aarch64)
else()
set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/lib/li=
nux/x86_64)
endif()

But the build is failing with a QA issue.

ERROR: rs-oem-kit-server-1.8.2.0-r0 do_package_qa: QA Issue: package rs-oe=
m-kit-server contains bad RPATH /home/aravind2/work/mevolve-yocto/mvdevice/=
build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-s=
erver/librscalibrationapi/lib/linux/aarch64 in file /home/aravind2/work/mev=
olve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8=
.2.0-r0/packages-split/rs-oem-kit-server/usr/bin/rs-calibration-simple
package rs-oem-kit-server contains bad RPATH /home/aravind2/work/mevolve-y=
octo/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r=
0/rs-oem-kit-server/librscalibrationapi/lib/linux/aarch64 in file /home/ara=
vind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-=
kit-server/1.8.2.0-r0/packages-split/rs-oem-kit-server/usr/bin/rs-calibrati=
on-converter
package rs-oem-kit-server contains bad RPATH /home/aravind2/work/mevolve-y=
octo/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r=
0/rs-oem-kit-server/librscalibrationapi/lib/linux/aarch64 in file /home/ara=
vind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-=
kit-server/1.8.2.0-r0/packages-split/rs-oem-kit-server/usr/bin/rs-calibrati=
on-info [rpaths]
ERROR: rs-oem-kit-server-1.8.2.0-r0 do_package_qa: QA Issue: /usr/bin/rs-c=
alibration-simple contained in package rs-oem-kit-server requires libDSDyna=
micCalibrationAPI.so()(64bit), but no providers found in RDEPENDS_rs-oem-ki=
t-server? [file-rdeps]
ERROR: rs-oem-kit-server-1.8.2.0-r0 do_package_qa: QA run found fatal erro=
rs. Please consider fixing them.
ERROR: Logfile of failure stored in: /home/aravind2/work/mevolve-yocto/mvd=
evice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/temp/l=
og.do_package_qa.13723
ERROR: Task (/home/aravind2/work/mevolve-yocto/poky/../meta-mevolveapps/re=
cipes-production/rs-oem-kit-server/rs-oem-kit-server_1.8.2.0.bb:do_package_=
qa) failed with exit code '1'

Could you please suggest a fix for this?

Thanks..

--d04O9EmZx1l8Gr95FTg2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a new issue now. The package i am trying to build has this dependenc=
y on a pre compiled .so file which is part of the source tree.<br />The dep=
endency is mentioned in the CMakeList.txt as <br /><br />if(MSVC)<br />&nbs=
p;&nbsp;&nbsp; set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibra=
tionapi/lib/windows/x64)<br />elseif(${CMAKE_SYSTEM_PROCCESSOR} MATCHES "aa=
rch64|AARCH64")<br />&nbsp;&nbsp;&nbsp; set (DCAPI_LIBS_DIR ${CMAKE_CURRENT=
_SOURCE_DIR}/librscalibrationapi/lib/linux/aarch64)<br />else()<br />&nbsp;=
&nbsp;&nbsp; set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrati=
onapi/lib/linux/x86_64)<br />endif()<br /><br />But the build is failing wi=
th a QA issue.<br /><br />ERROR: rs-oem-kit-server-1.8.2.0-r0 do_package_qa=
: QA Issue: package rs-oem-kit-server contains bad RPATH /home/aravind2/wor=
k/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-serve=
r/1.8.2.0-r0/rs-oem-kit-server/librscalibrationapi/lib/linux/aarch64 in fil=
e /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-li=
nux/rs-oem-kit-server/1.8.2.0-r0/packages-split/rs-oem-kit-server/usr/bin/r=
s-calibration-simple<br />package rs-oem-kit-server contains bad RPATH /hom=
e/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs=
-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/librscalibrationapi/lib/linux/=
aarch64 in file /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/a=
arch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/packages-split/rs-oem-kit-se=
rver/usr/bin/rs-calibration-converter<br />package rs-oem-kit-server contai=
ns bad RPATH /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarc=
h64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/librscalibrat=
ionapi/lib/linux/aarch64 in file /home/aravind2/work/mevolve-yocto/mvdevice=
/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/packages-sp=
lit/rs-oem-kit-server/usr/bin/rs-calibration-info [rpaths]<br />ERROR: rs-o=
em-kit-server-1.8.2.0-r0 do_package_qa: QA Issue: /usr/bin/rs-calibration-s=
imple contained in package rs-oem-kit-server requires libDSDynamicCalibrati=
onAPI.so()(64bit), but no providers found in RDEPENDS_rs-oem-kit-server? [f=
ile-rdeps]<br />ERROR: rs-oem-kit-server-1.8.2.0-r0 do_package_qa: QA run f=
ound fatal errors. Please consider fixing them.<br />ERROR: Logfile of fail=
ure stored in: /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aa=
rch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/temp/log.do_package_qa.13723<=
br />ERROR: Task (/home/aravind2/work/mevolve-yocto/poky/../meta-mevolveapp=
s/recipes-production/rs-oem-kit-server/rs-oem-kit-server_1.8.2.0.bb:do_pack=
age_qa) failed with exit code '1'<br /><br />Could you please suggest a fix=
 for this?<br /><br />Thanks..

--d04O9EmZx1l8Gr95FTg2--

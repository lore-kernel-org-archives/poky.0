Subject: Weird Compilation issue with a c++ recipe
To: poky@lists.yoctoproject.org
From: arunlee@gmail.com
X-Originating-Location: Enfield, Leinster, IE (192.198.151.53)
X-Originating-Platform: Windows Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 10:03:00 -0700
Message-ID: <pwb1.1616605380917082275.iIyZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AVAd3NH5XHUP6faduXT8"

--AVAd3NH5XHUP6faduXT8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am facing an issue with compiling a recipe which has c++ sources.

The CMakeList.txt is has the following
--------------------------------------------------------------------------=
-------------------------------------------------

# Set minimum required CMake version
cmake_minimum_required(VERSION 3.5.1)

# Name the project Intel RealSense D400 camera server
project (rs-camera-master)

# Integrity
if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
MESSAGE( FATAL_ERROR "In-source builds not allowed. Please specify a build=
 directory!")
endif()

SET (EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
SET (LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

# Enable C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

if(COMPILER_SUPPORTS_CXX11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=3Dc++11")
elseif(COMPILER_SUPPORTS_CXX0X)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=3Dc++0x")
endif()

if(MSVC)
if(BUILD_WITH_STATIC_CRT)
set(CMAKE_CXX_FLAGS_RELEASE "/MT")
else()
set(CMAKE_CXX_FLAGS_RELEASE "/MD")
endif()

add_definitions(-D_WIN32)
elseif(ANDROID)
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pipe -fPIC -pie -llog -pedantic =
-std=3Dgnu++11 -O2 -W -Wl,--no-undefined -fopenmp -ldl")
else()
EXEC_PROGRAM(uname ARGS -p OUTPUT_VARIABLE CMAKE_SYSTEM_PROCCESSOR)
message(STATUS "CMAKE_SYSTEM_PROCCESSOR=3D${CMAKE_SYSTEM_PROCCESSOR}")
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pipe -pedantic -std=3Dgnu++11 -W=
 -Wl,--no-undefined -fopenmp")
endif()

# calibration api include and library paths
set (DCAPI_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/Inc=
lude)

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

INCLUDE_DIRECTORIES(include)

# Add the sources to the target
add_subdirectory(src)

--------------------------------------------------------------------------=
-------------------------------------------------

the bb file is
--------------------------------------------------------------------------=
--------------------------------------------------------------

LICENSE =3D "Unknown"
LIC_FILES_CHKSUM =3D "file://License.txt;md5=3D65a9f55463db06e17a43396aa0c=
4ed4b"

SRC_URI =3D "http://myserver.com/temp/rs-oem-kit-server-${PV}.tar.gz"
SRC_URI[md5sum] =3D "58bee3aff61140b53bc94884b872eab4"
SRC_URI[sha1sum] =3D "6d4febf4bb32072078c4f67d0e7672a97e6fb5be"
SRC_URI[sha256sum] =3D "0aa975e73248e20e07aaf124e46fb92292f083f85a043c4b6a=
1f7dcb538b88a6"
SRC_URI[sha384sum] =3D "180d259fb3c8bdc79265e9643577e6883d6c85c31bb2df8751=
af26937c02279e8c85d3fb72ebf053f58894904371377b"
SRC_URI[sha512sum] =3D "7c808c053103d39a97de6f25519e4733a417d9e61d1dc6ce7c=
fdb11d16bcedde8341f9f1904eae76188c939f3e7daf35cb0ce7c5f0046474718bd6aa7119a=
b98"

S =3D "${WORKDIR}/${BPN}"
CXXFLAGS_append =3D " -lstdc++"
# NOTE: the following library dependencies are unknown, ignoring: usb
#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (this is based on recipes that have =
previously been built and packaged)
inherit cmake pkgconfig

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
EXTRA_OECMAKE =3D ""

--------------------------------------------------------------------------=
--------------------------------------------------------------

I am getting a compilation error for bitbake rs-oem-kit-server
--------------------------------------------------------------------------=
--------------------------------------------------------------

| [8/34] /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64=
-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot-native/usr/bin/aarc=
h64-poky-linux/aarch64-poky-linux-g++=C2=A0=C2=A0 -I/home/aravind2/work/mev=
olve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8=
.2.0-r0/rs-oem-kit-server/include -I/home/aravind2/work/mevolve-yocto/mvdev=
ice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-k=
it-server/src/writer/../common -std=3Dgnu++11 -fPIE -fPIC -O2 -D_FORTIFY_SO=
URCE=3D2 -Wformat -Wformat-security -fstack-protector-strong -lpthread -fpe=
rmissive=C2=A0=C2=A0 -std=3Dgnu++11 -MD -MT src/writer/CMakeFiles/rs-calibr=
ation-writer.dir/__/device/d400_dev.cpp.o -MF src/writer/CMakeFiles/rs-cali=
bration-writer.dir/__/device/d400_dev.cpp.o.d -o src/writer/CMakeFiles/rs-c=
alibration-writer.dir/__/device/d400_dev.cpp.o -c /home/aravind2/work/mevol=
ve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2=
.0-r0/rs-oem-kit-server/src/device/d400_dev.cpp
| FAILED: src/writer/CMakeFiles/rs-calibration-writer.dir/__/device/d400_d=
ev.cpp.o
| /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-l=
inux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot-native/usr/bin/aarch64-pok=
y-linux/aarch64-poky-linux-g++=C2=A0=C2=A0 -I/home/aravind2/work/mevolve-yo=
cto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0=
/rs-oem-kit-server/include -I/home/aravind2/work/mevolve-yocto/mvdevice/bui=
ld/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-serv=
er/src/writer/../common -std=3Dgnu++11 -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=3D=
2 -Wformat -Wformat-security -fstack-protector-strong -lpthread -fpermissiv=
e=C2=A0=C2=A0 -std=3Dgnu++11 -MD -MT src/writer/CMakeFiles/rs-calibration-w=
riter.dir/__/device/d400_dev.cpp.o -MF src/writer/CMakeFiles/rs-calibration=
-writer.dir/__/device/d400_dev.cpp.o.d -o src/writer/CMakeFiles/rs-calibrat=
ion-writer.dir/__/device/d400_dev.cpp.o -c /home/aravind2/work/mevolve-yoct=
o/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/r=
s-oem-kit-server/src/device/d400_dev.cpp
| /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-l=
inux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/src/device/d400_dev.cpp=
:15:10: fatal error: iostream: No such file or directory
|=C2=A0=C2=A0=C2=A0 15 | #include <iostream>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~
| compilation terminated.

--------------------------------------------------------------------------=
-------------------------------------------------------------

Could you please see what i am doing wrong here?

Host: Ubuntu 18.04
Yocto: poky dunfell, with raspberrypi meta layers

regards
Arun

--AVAd3NH5XHUP6faduXT8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am facing an issue with compiling a recipe which has c++ s=
ources.<br /><br />The CMakeList.txt is has the following<br />------------=
---------------------------------------------------------------------------=
------------------------------------<br /><br /># Set minimum required CMak=
e version<br />cmake_minimum_required(VERSION 3.5.1)<br /><br /># Name the =
project Intel RealSense D400 camera server<br />project (rs-camera-master)<=
br /><br /># Integrity<br />if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY=
_DIR})<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MESSAGE( FATAL_ERROR=
 "In-source builds not allowed. Please specify a build directory!")<br />en=
dif()<br /><br />SET (EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})<br />SET =
(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})<br /><br /># Enable C++11<br />se=
t(CMAKE_CXX_STANDARD 11)<br />set(CMAKE_CXX_STANDARD_REQUIRED TRUE)<br /><b=
r />if(COMPILER_SUPPORTS_CXX11)<br />&nbsp;&nbsp;&nbsp; set(CMAKE_CXX_FLAGS=
 "${CMAKE_CXX_FLAGS} -std=3Dc++11")<br />elseif(COMPILER_SUPPORTS_CXX0X)<br=
 />&nbsp;&nbsp;&nbsp; set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=3Dc++0x"=
)<br />endif()<br /><br /><br />if(MSVC)<br />&nbsp;&nbsp;&nbsp; if(BUILD_W=
ITH_STATIC_CRT)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set(CMAKE_CXX_FLAGS_REL=
EASE "/MT")<br />&nbsp;&nbsp;&nbsp; else()<br />&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; set(CMAKE_CXX_FLAGS_RELEASE "/MD")<br />&nbsp;&nbsp;&nbsp; endif()<br /=
><br />&nbsp;&nbsp;&nbsp; add_definitions(-D_WIN32)<br />elseif(ANDROID)<br=
 />&nbsp;&nbsp;&nbsp; SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pipe -fPIC =
-pie -llog -pedantic -std=3Dgnu++11 -O2 -W -Wl,--no-undefined -fopenmp -ldl=
")&nbsp;&nbsp; &nbsp;<br />else()<br />&nbsp;&nbsp;&nbsp; EXEC_PROGRAM(unam=
e ARGS -p OUTPUT_VARIABLE CMAKE_SYSTEM_PROCCESSOR)<br />&nbsp;&nbsp;&nbsp; =
message(STATUS "CMAKE_SYSTEM_PROCCESSOR=3D${CMAKE_SYSTEM_PROCCESSOR}")<br /=
>&nbsp;&nbsp;&nbsp; SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pipe -pedanti=
c -std=3Dgnu++11 -W -Wl,--no-undefined -fopenmp")<br />endif()<br /><br />#=
 calibration api include and library paths<br />set (DCAPI_INCLUDE_DIR ${CM=
AKE_CURRENT_SOURCE_DIR}/librscalibrationapi/Include)<br /><br />if(MSVC)<br=
 />&nbsp;&nbsp;&nbsp; set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librs=
calibrationapi/lib/windows/x64)<br />elseif(${CMAKE_SYSTEM_PROCCESSOR} MATC=
HES "aarch64|AARCH64")<br />&nbsp;&nbsp;&nbsp; set (DCAPI_LIBS_DIR ${CMAKE_=
CURRENT_SOURCE_DIR}/librscalibrationapi/lib/linux/aarch64)<br />else()<br /=
>&nbsp;&nbsp;&nbsp; set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librsca=
librationapi/lib/linux/x86_64)<br />endif()<br /><br />INCLUDE_DIRECTORIES(=
include)<br /><br /># Add the sources to the target<br />add_subdirectory(s=
rc)<br /><br /><br /><br />------------------------------------------------=
---------------------------------------------------------------------------=
<br /><br />the bb file is<br />-------------------------------------------=
---------------------------------------------------------------------------=
------------------<br /><br />LICENSE =3D "Unknown"<br />LIC_FILES_CHKSUM =
=3D "file://License.txt;md5=3D65a9f55463db06e17a43396aa0c4ed4b"<br /><br /=
>SRC_URI =3D "http://myserver.com/temp/rs-oem-kit-server-${PV}.tar.gz"<br /=
>SRC_URI[md5sum] =3D "58bee3aff61140b53bc94884b872eab4"<br />SRC_URI[sha1su=
m] =3D "6d4febf4bb32072078c4f67d0e7672a97e6fb5be"<br />SRC_URI[sha256sum] =
=3D "0aa975e73248e20e07aaf124e46fb92292f083f85a043c4b6a1f7dcb538b88a6"<br =
/>SRC_URI[sha384sum] =3D "180d259fb3c8bdc79265e9643577e6883d6c85c31bb2df875=
1af26937c02279e8c85d3fb72ebf053f58894904371377b"<br />SRC_URI[sha512sum] =
=3D "7c808c053103d39a97de6f25519e4733a417d9e61d1dc6ce7cfdb11d16bcedde8341f=
9f1904eae76188c939f3e7daf35cb0ce7c5f0046474718bd6aa7119ab98"<br /><br />S =
=3D "${WORKDIR}/${BPN}"<br />CXXFLAGS_append =3D " -lstdc++"<br /># NOTE: =
the following library dependencies are unknown, ignoring: usb<br />#&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (this is based on recipes that have previousl=
y been built and packaged)<br />inherit cmake pkgconfig<br /><br /># Specif=
y any options you want to pass to cmake using EXTRA_OECMAKE:<br />EXTRA_OEC=
MAKE =3D ""<br /><br />----------------------------------------------------=
---------------------------------------------------------------------------=
---------<br /><br />I am getting a compilation error for bitbake rs-oem-ki=
t-server<br />-------------------------------------------------------------=
---------------------------------------------------------------------------=
<br /><br />| [8/34] /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/w=
ork/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot-native/u=
sr/bin/aarch64-poky-linux/aarch64-poky-linux-g++&nbsp;&nbsp; -I/home/aravin=
d2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit=
-server/1.8.2.0-r0/rs-oem-kit-server/include -I/home/aravind2/work/mevolve-=
yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-=
r0/rs-oem-kit-server/src/writer/../common -std=3Dgnu++11 -fPIE -fPIC -O2 -D=
_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -fstack-protector-strong -lp=
thread -fpermissive&nbsp;&nbsp; -std=3Dgnu++11 -MD -MT src/writer/CMakeFile=
s/rs-calibration-writer.dir/__/device/d400_dev.cpp.o -MF src/writer/CMakeFi=
les/rs-calibration-writer.dir/__/device/d400_dev.cpp.o.d -o src/writer/CMak=
eFiles/rs-calibration-writer.dir/__/device/d400_dev.cpp.o -c /home/aravind2=
/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-s=
erver/1.8.2.0-r0/rs-oem-kit-server/src/device/d400_dev.cpp<br />| FAILED: s=
rc/writer/CMakeFiles/rs-calibration-writer.dir/__/device/d400_dev.cpp.o<br =
/>| /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-=
linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot-native/usr/bin/aarch64-po=
ky-linux/aarch64-poky-linux-g++&nbsp;&nbsp; -I/home/aravind2/work/mevolve-y=
octo/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r=
0/rs-oem-kit-server/include -I/home/aravind2/work/mevolve-yocto/mvdevice/bu=
ild/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-ser=
ver/src/writer/../common -std=3Dgnu++11 -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=
=3D2 -Wformat -Wformat-security -fstack-protector-strong -lpthread -fpermi=
ssive&nbsp;&nbsp; -std=3Dgnu++11 -MD -MT src/writer/CMakeFiles/rs-calibrati=
on-writer.dir/__/device/d400_dev.cpp.o -MF src/writer/CMakeFiles/rs-calibra=
tion-writer.dir/__/device/d400_dev.cpp.o.d -o src/writer/CMakeFiles/rs-cali=
bration-writer.dir/__/device/d400_dev.cpp.o -c /home/aravind2/work/mevolve-=
yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-=
r0/rs-oem-kit-server/src/device/d400_dev.cpp<br />| /home/aravind2/work/mev=
olve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8=
.2.0-r0/rs-oem-kit-server/src/device/d400_dev.cpp:15:10: fatal error: iostr=
eam: No such file or directory<br />|&nbsp;&nbsp;&nbsp; 15 | #include &lt;i=
ostream&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^~~~~~~~~~<br />| compilation terminate=
d.<br /><br />-------------------------------------------------------------=
--------------------------------------------------------------------------<=
br /><br />Could you please see what i am doing wrong here?<br /><br />Host=
: Ubuntu 18.04<br />Yocto: poky dunfell, with raspberrypi meta layers<br />=
<br />regards<br />Arun

--AVAd3NH5XHUP6faduXT8--

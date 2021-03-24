Subject: Re: Weird Compilation issue with a c++ recipe
To: poky@lists.yoctoproject.org
From: "Arun Ravindran" <arunlee@gmail.com>
X-Originating-Location: Enfield, Leinster, IE (192.198.151.52)
X-Originating-Platform: Windows Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 14:08:03 -0700
References: <27500.1616618608323270025@lists.yoctoproject.org>
In-Reply-To: <27500.1616618608323270025@lists.yoctoproject.org>
Message-ID: <12874.1616620083179682241@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mEqzda0fi5wFzElqxQrR"

--mEqzda0fi5wFzElqxQrR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I think i found the issue for the include problem.

In one of the CMakeList.txt, i have the following

set( CMAKE_CXX_FLAGS " -std=3Dgnu++11 -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=3D=
2 -Wformat -Wformat-security -fstack-protector-strong -lpthread -fpermissiv=
e" )

i changed it to

set( CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -std=3Dgnu++11 -fPIE -fPIC -O2 -=
D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -fstack-protector-strong -l=
pthread -fpermissive" )

and the compilation issue seems to have gone away.

But i do have the following

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

where CMAKE_SYSTEM_PROCCESSOR never matches to aarch64.

--mEqzda0fi5wFzElqxQrR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I think i found the issue for the include problem.<br /><br />In one of the=
 CMakeList.txt, i have the following<br /><br />set( CMAKE_CXX_FLAGS " -std=
=
=3Dgnu++11 -fPIE -fPIC -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-securit=
y -fstack-protector-strong -lpthread -fpermissive" )<br /><br />i changed i=
t to <br /><br />set( CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -std=3Dgnu++11 -=
fPIE -fPIC -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -fstack-pro=
tector-strong -lpthread -fpermissive" )<br /><br />and the compilation issu=
e seems to have gone away.<br /><br />But i do have the following <br /><br=
 />if(MSVC)<br />&nbsp;&nbsp;&nbsp; if(BUILD_WITH_STATIC_CRT)<br />&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; set(CMAKE_CXX_FLAGS_RELEASE "/MT")<br />&nbsp;&nbsp;=
&nbsp; else()<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; set(CMAKE_CXX_FLAGS_RELEA=
SE "/MD")<br />&nbsp;&nbsp;&nbsp; endif()<br /><br />&nbsp;&nbsp;&nbsp; add=
_definitions(-D_WIN32)<br />elseif(ANDROID)<br />&nbsp;&nbsp;&nbsp; SET (CM=
AKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pipe -fPIC -pie -llog -pedantic -std=3Dg=
nu++11 -O2 -W -Wl,--no-undefined -fopenmp -ldl")&nbsp;&nbsp; &nbsp;<br />el=
se()<br />&nbsp;&nbsp;&nbsp; EXEC_PROGRAM(uname ARGS -p OUTPUT_VARIABLE CMA=
KE_SYSTEM_PROCCESSOR)<br />&nbsp;&nbsp;&nbsp; message(STATUS "CMAKE_SYSTEM_=
PROCCESSOR=3D${CMAKE_SYSTEM_PROCCESSOR}")<br />&nbsp;&nbsp;&nbsp; SET (CMAK=
E_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pipe -pedantic -std=3Dgnu++11 -W -Wl,--no-=
undefined -fopenmp")<br />endif()<br /><br /># calibration api include and =
library paths<br />set (DCAPI_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librs=
calibrationapi/Include)<br /><br />if(MSVC)<br />&nbsp;&nbsp;&nbsp; set (DC=
API_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/lib/windows/x6=
4)<br />elseif(${CMAKE_SYSTEM_PROCCESSOR} MATCHES "aarch64|AARCH64")<br />&=
nbsp;&nbsp;&nbsp; set (DCAPI_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscali=
brationapi/lib/linux/aarch64)<br />else()<br />&nbsp;&nbsp;&nbsp; set (DCAP=
I_LIBS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/librscalibrationapi/lib/linux/x86_64=
)<br />endif()<br /><br />where CMAKE_SYSTEM_PROCCESSOR never matches to aa=
rch64.

--mEqzda0fi5wFzElqxQrR--

Subject: Error in yocto compilation for SAMA5D3
To: poky@lists.yoctoproject.org
From: mikhail_smagin@yahoo.com
X-Originating-Location: Moscow, RU (83.220.239.96)
X-Originating-Platform: Windows Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 Mar 2021 06:10:41 -0800
Message-ID: <kuoe.1614694241936572354.vysH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="S8Mika42k9z8MjYxERVc"

--S8Mika42k9z8MjYxERVc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Colleagues!
Please help me to deal with the following issue. I am trying to build yoct=
o for ATSAMA5D3 Xplained using this manual: https://www.linux4sam.org/bin/v=
iew/Linux4SAM/Sama5d3XplainedMainPage. I use LInux Mint installed on Virtua=
lBox with Linaro as a cross compilation tool. I have all the success with b=
ulding minimal image, but when I try to build the headless image, it goes u=
p to 98%, then I receive a lo-o-ong list of messages with the following err=
or passages:

RROR: nodejs-12.20.1-r0 do_compile: oe_runmake failed
ERROR: nodejs-12.20.1-r0 do_compile: Execution of '/home/mikhail/my_dir/po=
ky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/nodejs/12.2=
0.1-r0/temp/run.do_compile.2869' failed with exit code 1:
...
libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: failed=
 to set dynamic section sizes: memory exhausted
collect2: error: ld returned 1 exit status
cctest.target.mk:206: recipe for target 'Release/cctest' failed
make[1]: *** [Release/cctest] Error 1
...
/home/mikhail/my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-l=
inux-gnueabi/nodejs/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux=
-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.=
3.0/ld: Please report this bug.

collect2: error: ld returned 1 exit status
embedtest.target.mk:181: recipe for target 'Release/embedtest' failed
make[1]: *** [Release/embedtest] Error 1
rm a4a03f7944f5e0605fcc126ede9487eb5635547d.intermediate
Makefile:104: recipe for target 'node' failed
make: *** [node] Error 2
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/mikhail/my_dir/poky/build-micro=
chip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/nodejs/12.20.1-r0/temp/lo=
g.do_compile.2869
...
home/mikhail/my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-li=
nux-gnueabi/nodejs/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-=
gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3=
.0/ld: failed to set dynamic section sizes: memory exhausted
| collect2: error: ld returned 1 exit status
| cctest.target.mk:206: recipe for target 'Release/cctest' failed
| make[1]: *** [Release/cctest] Error 1
| make[1]: *** Waiting for unfinished jobs....
| /home/mikhail/my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky=
-linux-gnueabi/nodejs/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-lin=
ux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/=
9.3.0/ld: BFD (GNU Binutils) 2.34.0.20200220 internal error, aborting at ..=
/../bfd/merge.c:929 in _bfd_merged_section_offset
|
| /home/mikhail/my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky=
-linux-gnueabi/nodejs/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-lin=
ux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/=
9.3.0/ld: Please report this bug.
|
| collect2: error: ld returned 1 exit status
| embedtest.target.mk:181: recipe for target 'Release/embedtest' failed
| make[1]: *** [Release/embedtest] Error 1
| rm a4a03f7944f5e0605fcc126ede9487eb5635547d.intermediate
| Makefile:104: recipe for target 'node' failed
| make: *** [node] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/mikhail/my_dir/poky/build-microchip/tmp/work/=
cortexa5t2hf-vfp-poky-linux-gnueabi/nodejs/12.20.1-r0/temp/run.do_compile.2=
869' failed with exit code 1:
...
| /home/mikhail/my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky=
-linux-gnueabi/nodejs/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-lin=
ux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/=
9.3.0/ld: failed to set dynamic section sizes: memory exhausted
| collect2: error: ld returned 1 exit status
| cctest.target.mk:206: recipe for target 'Release/cctest' failed
| make[1]: *** [Release/cctest] Error 1
| make[1]: *** Waiting for unfinished jobs....
| /home/mikhail/my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky=
-linux-gnueabi/nodejs/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-lin=
ux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/=
9.3.0/ld: BFD (GNU Binutils) 2.34.0.20200220 internal error, aborting at ..=
/../bfd/merge.c:929 in _bfd_merged_section_offset
|
| /home/mikhail/my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky=
-linux-gnueabi/nodejs/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-lin=
ux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/=
9.3.0/ld: Please report this bug.
|
| collect2: error: ld returned 1 exit status
| embedtest.target.mk:181: recipe for target 'Release/embedtest' failed
| make[1]: *** [Release/embedtest] Error 1
| rm a4a03f7944f5e0605fcc126ede9487eb5635547d.intermediate
| Makefile:104: recipe for target 'node' failed
| make: *** [node] Error 2
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/home/mikhail/my_dir/poky/../meta-openembedded/meta-oe/recipe=
s-devtools/nodejs/nodejs_12.20.1.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5407 tasks of which 5385 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
/home/mikhail/my_dir/poky/../meta-openembedded/meta-oe/recipes-devtools/no=
dejs/nodejs_12.20.1.bb:do_compile
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code=
.

For me it looks rather strange, that memory is exhausted because my virtua=
l Linux has about 5 Gigs of RAM and about 60 gigs on hard disk.

Is there any way to deal with this issue?

Thank you in advance.

MS

--S8Mika42k9z8MjYxERVc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Colleagues!<br />Please help me to deal with the following issue. I am=
 trying to build yocto for ATSAMA5D3 Xplained using this manual: <a href=3D=
"https://www.linux4sam.org/bin/view/Linux4SAM/Sama5d3XplainedMainPage" targ=
et=3D"_blank" rel=3D"noopener">https://www.linux4sam.org/bin/view/Linux4SAM=
/Sama5d3XplainedMainPage</a>. I use LInux Mint installed on VirtualBox with=
 Linaro as a cross compilation tool. I have all the success with bulding mi=
nimal image, but when I try to build the headless image, it goes up to 98%,=
 then I receive a lo-o-ong list of messages with the following error passag=
es:<br /><br />RROR: nodejs-12.20.1-r0 do_compile: oe_runmake failed<br />E=
RROR: nodejs-12.20.1-r0 do_compile: Execution of '/home/mikhail/my_dir/poky=
/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/nodejs/12.20.=
1-r0/temp/run.do_compile.2869' failed with exit code 1:<br />...<br />libex=
ec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: failed to se=
t dynamic section sizes: memory exhausted<br />collect2: error: ld returned=
 1 exit status<br />cctest.target.mk:206: recipe for target 'Release/cctest=
' failed<br />make[1]: *** [Release/cctest] Error 1<br />...<br />/home/mik=
hail/my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnuea=
bi/nodejs/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/.=
./../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: Pl=
ease report this bug.<br /><br />collect2: error: ld returned 1 exit status=
<br />embedtest.target.mk:181: recipe for target 'Release/embedtest' failed=
<br />make[1]: *** [Release/embedtest] Error 1<br />rm a4a03f7944f5e0605fcc=
126ede9487eb5635547d.intermediate<br />Makefile:104: recipe for target 'nod=
e' failed<br />make: *** [node] Error 2<br />WARNING: exit code 1 from a sh=
ell command.<br /><br />ERROR: Logfile of failure stored in: /home/mikhail/=
my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/no=
dejs/12.20.1-r0/temp/log.do_compile.2869<br />...<br />home/mikhail/my_dir/=
poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/nodejs/12=
.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec=
/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: failed to set =
dynamic section sizes: memory exhausted<br />| collect2: error: ld returned=
 1 exit status<br />| cctest.target.mk:206: recipe for target 'Release/ccte=
st' failed<br />| make[1]: *** [Release/cctest] Error 1<br />| make[1]: ***=
 Waiting for unfinished jobs....<br />| /home/mikhail/my_dir/poky/build-mic=
rochip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/nodejs/12.20.1-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linu=
x-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: BFD (GNU Binutils) 2.34.0.20=
200220 internal error, aborting at ../../bfd/merge.c:929 in _bfd_merged_sec=
tion_offset<br />| <br />| /home/mikhail/my_dir/poky/build-microchip/tmp/wo=
rk/cortexa5t2hf-vfp-poky-linux-gnueabi/nodejs/12.20.1-r0/recipe-sysroot-nat=
ive/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc=
/arm-poky-linux-gnueabi/9.3.0/ld: Please report this bug.<br />| <br />| co=
llect2: error: ld returned 1 exit status<br />| embedtest.target.mk:181: re=
cipe for target 'Release/embedtest' failed<br />| make[1]: *** [Release/emb=
edtest] Error 1<br />| rm a4a03f7944f5e0605fcc126ede9487eb5635547d.intermed=
iate<br />| Makefile:104: recipe for target 'node' failed<br />| make: *** =
[node] Error 2<br />| ERROR: oe_runmake failed<br />| WARNING: exit code 1 =
from a shell command.<br />| ERROR: Execution of '/home/mikhail/my_dir/poky=
/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/nodejs/12.20.=
1-r0/temp/run.do_compile.2869' failed with exit code 1:<br />...<br />| /ho=
me/mikhail/my_dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-linux=
-gnueabi/nodejs/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/=
ld: failed to set dynamic section sizes: memory exhausted<br />| collect2: =
error: ld returned 1 exit status<br />| cctest.target.mk:206: recipe for ta=
rget 'Release/cctest' failed<br />| make[1]: *** [Release/cctest] Error 1<b=
r />| make[1]: *** Waiting for unfinished jobs....<br />| /home/mikhail/my_=
dir/poky/build-microchip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/nodej=
s/12.20.1-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../lib=
exec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: BFD (GNU B=
inutils) 2.34.0.20200220 internal error, aborting at ../../bfd/merge.c:929 =
in _bfd_merged_section_offset<br />| <br />| /home/mikhail/my_dir/poky/buil=
d-microchip/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/nodejs/12.20.1-r0/=
recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky=
-linux-gnueabi/gcc/arm-poky-linux-gnueabi/9.3.0/ld: Please report this bug.=
<br />| <br />| collect2: error: ld returned 1 exit status<br />| embedtest=
.target.mk:181: recipe for target 'Release/embedtest' failed<br />| make[1]=
: *** [Release/embedtest] Error 1<br />| rm a4a03f7944f5e0605fcc126ede9487e=
b5635547d.intermediate<br />| Makefile:104: recipe for target 'node' failed=
<br />| make: *** [node] Error 2<br />| WARNING: exit code 1 from a shell c=
ommand.<br />| <br />ERROR: Task (/home/mikhail/my_dir/poky/../meta-openemb=
edded/meta-oe/recipes-devtools/nodejs/nodejs_12.20.1.bb:do_compile) failed =
with exit code '1'<br />NOTE: Tasks Summary: Attempted 5407 tasks of which =
5385 didn't need to be rerun and 1 failed.<br /><br />Summary: 1 task faile=
d:<br />&nbsp; /home/mikhail/my_dir/poky/../meta-openembedded/meta-oe/recip=
es-devtools/nodejs/nodejs_12.20.1.bb:do_compile<br />Summary: There was 1 W=
ARNING message shown.<br />Summary: There were 2 ERROR messages shown, retu=
rning a non-zero exit code.<br /><br />For me it looks rather strange, that=
 memory is exhausted because my virtual Linux has about 5 Gigs of RAM and a=
bout 60 gigs on hard disk.<br /><br />Is there any way to deal with this is=
sue?<br /><br />Thank you in advance.<br /><br />MS

--S8Mika42k9z8MjYxERVc--

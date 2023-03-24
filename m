Subject: Unable to build latest dunfell branch python3 module
To: poky@lists.yoctoproject.org
From: sarathmadala03@gmail.com
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.5)
X-Originating-Platform: Windows Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Mar 2023 23:48:52 -0700
Message-ID: <LZpV.1679640532008145166.lhJQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="txBCKaiKK5VYnOT842r3"

--txBCKaiKK5VYnOT842r3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Initialising tasks: 100% |#################################################=
#################################################| Time: 0:00:02
Sstate summary: Wanted 459 Found 0 Missed 459 Current 408 (0% match, 47% co=
mplete)
NOTE: Executing Tasks
*ERROR: python3-native-3.8.14-r0 do_install: Execution of '/mt/sdb2/kernal_=
sandboxes/build_emmc_debug/tmp/work/x86_64-linux/python3-native/3.8.14-r0/t=
emp/run.do_install.11207' failed with exit code 1*
*ERROR: Logfile of failure stored in: /mt/sdb2/kernal_sandboxes/build_emmc_=
debug/tmp/work/x86_64-linux/python3-native/3.8.14-r0/temp/log.do_install.11=
207*
*Log data follows:*
*| DEBUG: Executing python function autotools_aclocals*
*| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit=
-64', 'x86_64-linux', 'common']*
*| DEBUG: Python function autotools_aclocals finished*
*| DEBUG: Executing shell function do_install*
*| Failed to build these modules:*
*| _ssl*
*| WARNING: exit code 1 from a shell command.*
*| ERROR: Execution of '/mt/sdb2/kernal_sandboxes/build_emmc_debug/tmp/work=
/x86_64-linux/python3-native/3.8.14-r0/temp/run.do_install.11207' failed wi=
th exit code 1*
*ERROR: Task (virtual:native:/mt/sdb2/kernal_sandboxes/sources/poky/meta/re=
cipes-devtools/python/python3_3.8.14.bb:do_install) failed with exit code '=
1'*
NOTE: Tasks Summary: Attempted 1316 tasks of which 1314 didn't need to be r=
erun and 1 failed.
NOTE: Writing build history
NOTE: Writing build history took: 10 seconds

Summary: 1 task failed:
virtual:native:/mt/sdb2/kernal_sandboxes/sources/poky/meta/recipes-devtools=
/python/python3_3.8.14.bb:do_install
Summary: There were 5 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Above is the error I'm getting while trying to build the latest dunfell bra=
nch python3 module
I'm building for the below machine and distro
MACHINE ??=3D 'phx-core-pca'
DISTRO ?=3D 'fslc-framebuffer'

--txBCKaiKK5VYnOT842r3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Initialising tasks: 100% |############################################=
######################################################| Time: 0:00:02</div>
<div>Sstate summary: Wanted 459 Found 0 Missed 459 Current 408 (0% match, 4=
7% complete)</div>
<div>NOTE: Executing Tasks</div>
<div><strong>ERROR: python3-native-3.8.14-r0 do_install: Execution of '/mt/=
sdb2/kernal_sandboxes/build_emmc_debug/tmp/work/x86_64-linux/python3-native=
/3.8.14-r0/temp/run.do_install.11207' failed with exit code 1</strong></div=
>
<div><strong><em>ERROR: Logfile of failure stored in: /mt/sdb2/kernal_sandb=
oxes/build_emmc_debug/tmp/work/x86_64-linux/python3-native/3.8.14-r0/temp/l=
og.do_install.11207</em></strong></div>
<div><strong><em>Log data follows:</em></strong></div>
<div><strong><em>| DEBUG: Executing python function autotools_aclocals</em>=
</strong></div>
<div><strong><em>| DEBUG: SITE files ['endian-little', 'common-linux', 'com=
mon-glibc', 'bit-64', 'x86_64-linux', 'common']</em></strong></div>
<div><strong><em>| DEBUG: Python function autotools_aclocals finished</em><=
/strong></div>
<div><strong><em>| DEBUG: Executing shell function do_install</em></strong>=
</div>
<div><strong><em>| Failed to build these modules:</em></strong></div>
<div><strong><em>| _ssl</em></strong></div>
<div><strong><em>| WARNING: exit code 1 from a shell command.</em></strong>=
</div>
<div><strong><em>| ERROR: Execution of '/mt/sdb2/kernal_sandboxes/build_emm=
c_debug/tmp/work/x86_64-linux/python3-native/3.8.14-r0/temp/run.do_install.=
11207' failed with exit code 1</em></strong></div>
<div><strong><em>ERROR: Task (virtual:native:/mt/sdb2/kernal_sandboxes/sour=
ces/poky/meta/recipes-devtools/python/python3_3.8.14.bb:do_install) failed =
with exit code '1'</em></strong></div>
<div>NOTE: Tasks Summary: Attempted 1316 tasks of which 1314 didn't need to=
 be rerun and 1 failed.</div>
<div>NOTE: Writing build history</div>
<div>NOTE: Writing build history took: 10 seconds</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; virtual:native:/mt/sdb2/kernal_sandboxes/sources/poky/meta/reci=
pes-devtools/python/python3_3.8.14.bb:do_install</div>
<div>Summary: There were 5 WARNING messages shown.</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br /><br />Above is the error I'm getting while trying to build the lat=
est dunfell branch python3 module<br />I'm building for the below machine a=
nd distro<br />
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: Conso=
las, 'Courier New', monospace; line-height: 19px; white-space: pre;">
<div>MACHINE ??=3D <span style=3D"color: #ce9178;">'phx-core-pca'</span></d=
iv>
<div>DISTRO ?=3D <span style=3D"color: #ce9178;">'fslc-framebuffer'<br /><b=
r /></span></div>
</div>
</div>

--txBCKaiKK5VYnOT842r3--

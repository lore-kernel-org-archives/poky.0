Subject: Kernel Patch apply issue #poky #raspberrypi
To: poky@lists.yoctoproject.org
From: "Arun Ravindran" <arunlee@gmail.com>
X-Originating-Location: Enfield, Leinster, IE (192.198.151.51)
X-Originating-Platform: Windows Firefox 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Mar 2021 01:30:22 -0700
Message-ID: <n1kb.1617093022933367201.LRqM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SdlI4uLSapHDMyyRoqIh"

--SdlI4uLSapHDMyyRoqIh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build yocto image for raspberrypi, with realsense enabled. =
I have taken the realsense uvcvideo patches.

While trying to build i get the following message:

ERROR: linux-raspberrypi-1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0 do_p=
atch: Could not apply patches for raspberrypi4-64.
ERROR: linux-raspberrypi-1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0 do_p=
atch: Patch failures can be resolved in the linux source directory /home/ar=
avind2/work/project-yocto/mvdevice/build/tmp/work-shared/raspberrypi4-64/ke=
rnel-source)
ERROR: linux-raspberrypi-1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0 do_p=
atch: Execution of '/home/aravind2/work/project-yocto/mvdevice/build/tmp/wo=
rk/raspberrypi4_64-poky-linux/linux-raspberrypi/1_5.4.72+gitAUTOINC+5d52d9e=
ea9_154de7bbd5-r0/temp/run.do_patch.29421' failed with exit code 1:
(1/6) 0001-Revert-selftests-bpf-Skip-perf-hw-events-test-if-the.patch
(2/6) 0002-Revert-selftests-bpf-Fix-perf_buffer-test-on-systems.patch
(3/6) realsense_hid_5.4.patch
(4/6) realsense_metadata_5.4.patch
(5/6) realsense_powerlinefrequency_control_fix_5.4.patch
(6/6) realsense_camera_formats_5.4.patch
[INFO]: check of .kernel-meta//patches///realsense_camera_formats_5.4.patc=
h with "git am" did not pass, trying reduced context.
[INFO]: Context reduced git-am of .kernel-meta//patches///realsense_camera=
_formats_5.4.patch with "git am" did not work, trying "apply".
error: patch failed: drivers/media/v4l2-core/v4l2-ioctl.c:1330
error: drivers/media/v4l2-core/v4l2-ioctl.c: patch does not apply
error: patch failed: include/uapi/linux/videodev2.h:727
error: include/uapi/linux/videodev2.h: patch does not apply
[ERROR]: Application of .kernel-meta//patches///realsense_camera_formats_5=
.4.patch failed.
Patch needs to be refreshed. Sample resolution script:
.git/rebase-apply/resolve_rejects
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/aravind2/work/project-yocto/mvd=
evice/build/tmp/work/raspberrypi4_64-poky-linux/linux-raspberrypi/1_5.4.72+=
gitAUTOINC+5d52d9eea9_154de7bbd5-r0/temp/log.do_patch.29421
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['/home/aravind2/work/project-yocto/poky/m=
eta/recipes-kernel/kern-tools/kern-tools-native_git.bb:do_populate_sysroot'=
, '/home/aravind2/work/project-yocto/poky/meta/recipes-devtools/quilt/quilt=
-native_0.66.bb:do_populate_sysroot', 'virtual:native:/home/aravind2/work/p=
roject-yocto/poky/meta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sy=
sroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['kern-tools-native', 'quil=
t-native', 'patch-native', 'gnu-config-native', 'automake-native', 'attr-na=
tive', 'libtool-native', 'autoconf-native', 'texinfo-dummy-native', 'gettex=
t-minimal-native', 'm4-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_patch
| (1/6) 0001-Revert-selftests-bpf-Skip-perf-hw-events-test-if-the.patch
| (2/6) 0002-Revert-selftests-bpf-Fix-perf_buffer-test-on-systems.patch
| (3/6) realsense_hid_5.4.patch
| (4/6) realsense_metadata_5.4.patch
| (5/6) realsense_powerlinefrequency_control_fix_5.4.patch
| (6/6) realsense_camera_formats_5.4.patch
| [INFO]: check of .kernel-meta//patches///realsense_camera_formats_5.4.pa=
tch with "git am" did not pass, trying reduced context.
| [INFO]: Context reduced git-am of .kernel-meta//patches///realsense_came=
ra_formats_5.4.patch with "git am" did not work, trying "apply".
| error: patch failed: drivers/media/v4l2-core/v4l2-ioctl.c:1330
| error: drivers/media/v4l2-core/v4l2-ioctl.c: patch does not apply
| error: patch failed: include/uapi/linux/videodev2.h:727
| error: include/uapi/linux/videodev2.h: patch does not apply
| [ERROR]: Application of .kernel-meta//patches///realsense_camera_formats=
_5.4.patch failed.
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Patch needs to be =
refreshed. Sample resolution script:
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 .git/rebase-apply/resolve_rejects
| ERROR: Could not apply patches for raspberrypi4-64.
| ERROR: Patch failures can be resolved in the linux source directory /hom=
e/aravind2/work/project-yocto/mvdevice/build/tmp/work-shared/raspberrypi4-6=
4/kernel-source)
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/aravind2/work/project-yocto/mvdevice/build/tm=
p/work/raspberrypi4_64-poky-linux/linux-raspberrypi/1_5.4.72+gitAUTOINC+5d5=
2d9eea9_154de7bbd5-r0/temp/run.do_patch.29421' failed with exit code 1:
| (1/6) 0001-Revert-selftests-bpf-Skip-perf-hw-events-test-if-the.patch
| (2/6) 0002-Revert-selftests-bpf-Fix-perf_buffer-test-on-systems.patch
| (3/6) realsense_hid_5.4.patch
| (4/6) realsense_metadata_5.4.patch
| (5/6) realsense_powerlinefrequency_control_fix_5.4.patch
| (6/6) realsense_camera_formats_5.4.patch
| [INFO]: check of .kernel-meta//patches///realsense_camera_formats_5.4.pa=
tch with "git am" did not pass, trying reduced context.
| [INFO]: Context reduced git-am of .kernel-meta//patches///realsense_came=
ra_formats_5.4.patch with "git am" did not work, trying "apply".
| error: patch failed: drivers/media/v4l2-core/v4l2-ioctl.c:1330
| error: drivers/media/v4l2-core/v4l2-ioctl.c: patch does not apply
| error: patch failed: include/uapi/linux/videodev2.h:727
| error: include/uapi/linux/videodev2.h: patch does not apply
| [ERROR]: Application of .kernel-meta//patches///realsense_camera_formats=
_5.4.patch failed.
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Patch needs to be =
refreshed. Sample resolution script:
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 .git/rebase-apply/resolve_rejects
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/home/aravind2/work/project-yocto/poky/../meta-raspberrypi/re=
cipes-kernel/linux/linux-raspberrypi_5.4.bb:do_patch) failed with exit code=
 '1'
NOTE: Tasks Summary: Attempted 717 tasks of which 706 didn't need to be re=
run and 1 failed.
NOTE: No commit since BUILDHISTORY_COMMIT !=3D '1'

Summary: 1 task failed:
/home/aravind2/work/project-yocto/poky/../meta-raspberrypi/recipes-kernel/=
linux/linux-raspberrypi_5.4.bb:do_patch

But i am able to apply the failing patch without any issue on https://gith=
ub.com/raspberrypi/linux/tree/rpi-5.4.y and also at /home/aravind2/work/pro=
ject-yocto/mvdevice/build/tmp/work-shared/raspberrypi4-64/kernel-source.

I recreated the patch multiple times from the kernel-source directory of m=
y build tree, but it always fails.

I try git am --abort and then apply again the patch it succeeds without an=
y issue.

But while building from bitbake, it is always failing.

What could be the issue? Could you please help me?

regards
Arun

--SdlI4uLSapHDMyyRoqIh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am trying to build yocto image for raspberrypi, with reals=
ense enabled. I have taken the realsense uvcvideo patches.<br /><br />While=
 trying to build i get the following message:<br /><br />ERROR: linux-raspb=
errypi-1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0 do_patch: Could not app=
ly patches for raspberrypi4-64.<br />ERROR: linux-raspberrypi-1_5.4.72+gitA=
UTOINC+5d52d9eea9_154de7bbd5-r0 do_patch: Patch failures can be resolved in=
 the linux source directory /home/aravind2/work/project-yocto/mvdevice/buil=
d/tmp/work-shared/raspberrypi4-64/kernel-source)<br />ERROR: linux-raspberr=
ypi-1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0 do_patch: Execution of '/h=
ome/aravind2/work/project-yocto/mvdevice/build/tmp/work/raspberrypi4_64-pok=
y-linux/linux-raspberrypi/1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0/temp=
/run.do_patch.29421' failed with exit code 1:<br />(1/6) 0001-Revert-selfte=
sts-bpf-Skip-perf-hw-events-test-if-the.patch<br />(2/6) 0002-Revert-selfte=
sts-bpf-Fix-perf_buffer-test-on-systems.patch<br />(3/6) realsense_hid_5.4.=
patch<br />(4/6) realsense_metadata_5.4.patch<br />(5/6) realsense_powerlin=
efrequency_control_fix_5.4.patch<br />(6/6) realsense_camera_formats_5.4.pa=
tch<br />[INFO]: check of .kernel-meta//patches///realsense_camera_formats_=
5.4.patch with "git am" did not pass, trying reduced context.<br />[INFO]: =
Context reduced git-am of .kernel-meta//patches///realsense_camera_formats_=
5.4.patch with "git am" did not work, trying "apply".<br />error: patch fai=
led: drivers/media/v4l2-core/v4l2-ioctl.c:1330<br />error: drivers/media/v4=
l2-core/v4l2-ioctl.c: patch does not apply<br />error: patch failed: includ=
e/uapi/linux/videodev2.h:727<br />error: include/uapi/linux/videodev2.h: pa=
tch does not apply<br />[ERROR]: Application of .kernel-meta//patches///rea=
lsense_camera_formats_5.4.patch failed.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Patch needs to be refreshed. Sample resolution script:<b=
r />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; .git/rebase-apply/resolve_rejects<br />WARNING: exit code 1 from a shell =
command.<br /><br />ERROR: Logfile of failure stored in: /home/aravind2/wor=
k/project-yocto/mvdevice/build/tmp/work/raspberrypi4_64-poky-linux/linux-ra=
spberrypi/1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0/temp/log.do_patch.29=
421<br />Log data follows:<br />| DEBUG: Executing python function extend_r=
ecipe_sysroot<br />| NOTE: Direct dependencies are ['/home/aravind2/work/pr=
oject-yocto/poky/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb:do=
_populate_sysroot', '/home/aravind2/work/project-yocto/poky/meta/recipes-de=
vtools/quilt/quilt-native_0.66.bb:do_populate_sysroot', 'virtual:native:/ho=
me/aravind2/work/project-yocto/poky/meta/recipes-devtools/patch/patch_2.7.6=
.bb:do_populate_sysroot']<br />| NOTE: Installed into sysroot: []<br />| NO=
TE: Skipping as already exists in sysroot: ['kern-tools-native', 'quilt-nat=
ive', 'patch-native', 'gnu-config-native', 'automake-native', 'attr-native'=
, 'libtool-native', 'autoconf-native', 'texinfo-dummy-native', 'gettext-min=
imal-native', 'm4-native']<br />| DEBUG: Python function extend_recipe_sysr=
oot finished<br />| DEBUG: Executing shell function do_patch<br />| (1/6) 0=
001-Revert-selftests-bpf-Skip-perf-hw-events-test-if-the.patch<br />| (2/6)=
 0002-Revert-selftests-bpf-Fix-perf_buffer-test-on-systems.patch<br />| (3/=
6) realsense_hid_5.4.patch<br />| (4/6) realsense_metadata_5.4.patch<br />|=
 (5/6) realsense_powerlinefrequency_control_fix_5.4.patch<br />| (6/6) real=
sense_camera_formats_5.4.patch<br />| [INFO]: check of .kernel-meta//patche=
s///realsense_camera_formats_5.4.patch with "git am" did not pass, trying r=
educed context.<br />| [INFO]: Context reduced git-am of .kernel-meta//patc=
hes///realsense_camera_formats_5.4.patch with "git am" did not work, trying=
 "apply".<br />| error: patch failed: drivers/media/v4l2-core/v4l2-ioctl.c:=
1330<br />| error: drivers/media/v4l2-core/v4l2-ioctl.c: patch does not app=
ly<br />| error: patch failed: include/uapi/linux/videodev2.h:727<br />| er=
ror: include/uapi/linux/videodev2.h: patch does not apply<br />| [ERROR]: A=
pplication of .kernel-meta//patches///realsense_camera_formats_5.4.patch fa=
iled.<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patch ne=
eds to be refreshed. Sample resolution script:<br />|&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .git/rebase-apply/=
resolve_rejects<br />| ERROR: Could not apply patches for raspberrypi4-64.<=
br />| ERROR: Patch failures can be resolved in the linux source directory =
/home/aravind2/work/project-yocto/mvdevice/build/tmp/work-shared/raspberryp=
i4-64/kernel-source)<br />| WARNING: exit code 1 from a shell command.<br /=
>| ERROR: Execution of '/home/aravind2/work/project-yocto/mvdevice/build/tm=
p/work/raspberrypi4_64-poky-linux/linux-raspberrypi/1_5.4.72+gitAUTOINC+5d5=
2d9eea9_154de7bbd5-r0/temp/run.do_patch.29421' failed with exit code 1:<br =
/>| (1/6) 0001-Revert-selftests-bpf-Skip-perf-hw-events-test-if-the.patch<b=
r />| (2/6) 0002-Revert-selftests-bpf-Fix-perf_buffer-test-on-systems.patch=
<br />| (3/6) realsense_hid_5.4.patch<br />| (4/6) realsense_metadata_5.4.p=
atch<br />| (5/6) realsense_powerlinefrequency_control_fix_5.4.patch<br />|=
 (6/6) realsense_camera_formats_5.4.patch<br />| [INFO]: check of .kernel-m=
eta//patches///realsense_camera_formats_5.4.patch with "git am" did not pas=
s, trying reduced context.<br />| [INFO]: Context reduced git-am of .kernel=
-meta//patches///realsense_camera_formats_5.4.patch with "git am" did not w=
ork, trying "apply".<br />| error: patch failed: drivers/media/v4l2-core/v4=
l2-ioctl.c:1330<br />| error: drivers/media/v4l2-core/v4l2-ioctl.c: patch d=
oes not apply<br />| error: patch failed: include/uapi/linux/videodev2.h:72=
7<br />| error: include/uapi/linux/videodev2.h: patch does not apply<br />|=
 [ERROR]: Application of .kernel-meta//patches///realsense_camera_formats_5=
.4.patch failed.<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; Patch needs to be refreshed. Sample resolution script:<br />|&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .git/re=
base-apply/resolve_rejects<br />| WARNING: exit code 1 from a shell command=
.<br />|<br />ERROR: Task (/home/aravind2/work/project-yocto/poky/../meta-r=
aspberrypi/recipes-kernel/linux/linux-raspberrypi_5.4.bb:do_patch) failed w=
ith exit code '1'<br />NOTE: Tasks Summary: Attempted 717 tasks of which 70=
6 didn't need to be rerun and 1 failed.<br />NOTE: No commit since BUILDHIS=
TORY_COMMIT !=3D '1'<br /><br />Summary: 1 task failed:<br />&nbsp; /home/a=
ravind2/work/project-yocto/poky/../meta-raspberrypi/recipes-kernel/linux/li=
nux-raspberrypi_5.4.bb:do_patch<br /><br /><br />But i am able to apply the=
 failing patch without any issue on <a href=3D"https://github.com/raspberry=
pi/linux/tree/rpi-5.4.y" target=3D"_blank" rel=3D"noopener">https://github.=
com/raspberrypi/linux/tree/rpi-5.4.y</a> and also at /home/aravind2/work/pr=
oject-yocto/mvdevice/build/tmp/work-shared/raspberrypi4-64/kernel-source.<b=
r /><br />I recreated the patch multiple times from the kernel-source direc=
tory of my build tree, but it always fails.<br /><br />I try git am --abort=
 and then apply again the patch it succeeds without any issue.<br /><br />B=
ut while building from bitbake, it is always failing.<br /><br />What could=
 be the issue? Could you please help me?<br /><br />regards<br />Arun

--SdlI4uLSapHDMyyRoqIh--

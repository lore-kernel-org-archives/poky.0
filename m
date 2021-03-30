Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.1709.1617093680998766780
 for <poky@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 01:41:21 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4F8jbK70Vmz5tlJ;
	Tue, 30 Mar 2021 10:41:17 +0200 (CEST)
Date: Tue, 30 Mar 2021 10:41:16 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Arun Ravindran <arunlee@gmail.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] Kernel Patch apply issue #poky #raspberrypi
Message-ID: <20210330084116.4s2wpze4vhm6pghv@qschulz>
References: <n1kb.1617093022933367201.LRqM@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <n1kb.1617093022933367201.LRqM@lists.yoctoproject.org>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Arun,

On Tue, Mar 30, 2021 at 01:30:22AM -0700, Arun Ravindran wrote:
> Hi,
>=20
> I am trying to build yocto image for raspberrypi, with realsense enable=
d. I have taken the realsense uvcvideo patches.
>=20
> While trying to build i get the following message:
>=20
> ERROR: linux-raspberrypi-1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0 d=
o_patch: Could not apply patches for raspberrypi4-64.
> ERROR: linux-raspberrypi-1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0 d=
o_patch: Patch failures can be resolved in the linux source directory /ho=
me/aravind2/work/project-yocto/mvdevice/build/tmp/work-shared/raspberrypi=
4-64/kernel-source)
> ERROR: linux-raspberrypi-1_5.4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0 d=
o_patch: Execution of '/home/aravind2/work/project-yocto/mvdevice/build/t=
mp/work/raspberrypi4_64-poky-linux/linux-raspberrypi/1_5.4.72+gitAUTOINC+=
5d52d9eea9_154de7bbd5-r0/temp/run.do_patch.29421' failed with exit code 1=
:
> (1/6) 0001-Revert-selftests-bpf-Skip-perf-hw-events-test-if-the.patch
> (2/6) 0002-Revert-selftests-bpf-Fix-perf_buffer-test-on-systems.patch
> (3/6) realsense_hid_5.4.patch
> (4/6) realsense_metadata_5.4.patch
> (5/6) realsense_powerlinefrequency_control_fix_5.4.patch
> (6/6) realsense_camera_formats_5.4.patch
> [INFO]: check of .kernel-meta//patches///realsense_camera_formats_5.4.p=
atch with "git am" did not pass, trying reduced context.
> [INFO]: Context reduced git-am of .kernel-meta//patches///realsense_cam=
era_formats_5.4.patch with "git am" did not work, trying "apply".
> error: patch failed: drivers/media/v4l2-core/v4l2-ioctl.c:1330
> error: drivers/media/v4l2-core/v4l2-ioctl.c: patch does not apply
> error: patch failed: include/uapi/linux/videodev2.h:727
> error: include/uapi/linux/videodev2.h: patch does not apply
> [ERROR]: Application of .kernel-meta//patches///realsense_camera_format=
s_5.4.patch failed.
> Patch needs to be refreshed. Sample resolution script:
> .git/rebase-apply/resolve_rejects
> WARNING: exit code 1 from a shell command.
>=20
> ERROR: Logfile of failure stored in: /home/aravind2/work/project-yocto/=
mvdevice/build/tmp/work/raspberrypi4_64-poky-linux/linux-raspberrypi/1_5.=
4.72+gitAUTOINC+5d52d9eea9_154de7bbd5-r0/temp/log.do_patch.29421
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are ['/home/aravind2/work/project-yocto/pok=
y/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb:do_populate_sys=
root', '/home/aravind2/work/project-yocto/poky/meta/recipes-devtools/quil=
t/quilt-native_0.66.bb:do_populate_sysroot', 'virtual:native:/home/aravin=
d2/work/project-yocto/poky/meta/recipes-devtools/patch/patch_2.7.6.bb:do_=
populate_sysroot']
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['kern-tools-native', 'q=
uilt-native', 'patch-native', 'gnu-config-native', 'automake-native', 'at=
tr-native', 'libtool-native', 'autoconf-native', 'texinfo-dummy-native', =
'gettext-minimal-native', 'm4-native']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_patch
> | (1/6) 0001-Revert-selftests-bpf-Skip-perf-hw-events-test-if-the.patch
> | (2/6) 0002-Revert-selftests-bpf-Fix-perf_buffer-test-on-systems.patch
> | (3/6) realsense_hid_5.4.patch
> | (4/6) realsense_metadata_5.4.patch
> | (5/6) realsense_powerlinefrequency_control_fix_5.4.patch
> | (6/6) realsense_camera_formats_5.4.patch
> | [INFO]: check of .kernel-meta//patches///realsense_camera_formats_5.4=
.patch with "git am" did not pass, trying reduced context.
> | [INFO]: Context reduced git-am of .kernel-meta//patches///realsense_c=
amera_formats_5.4.patch with "git am" did not work, trying "apply".
> | error: patch failed: drivers/media/v4l2-core/v4l2-ioctl.c:1330
> | error: drivers/media/v4l2-core/v4l2-ioctl.c: patch does not apply
> | error: patch failed: include/uapi/linux/videodev2.h:727
> | error: include/uapi/linux/videodev2.h: patch does not apply
> | [ERROR]: Application of .kernel-meta//patches///realsense_camera_form=
ats_5.4.patch failed.
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0 Patch needs to be refreshed. Sample resolu=
tion script:
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 .git/rebase-apply/resolve_reje=
cts
> | ERROR: Could not apply patches for raspberrypi4-64.
> | ERROR: Patch failures can be resolved in the linux source directory /=
home/aravind2/work/project-yocto/mvdevice/build/tmp/work-shared/raspberry=
pi4-64/kernel-source)
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/home/aravind2/work/project-yocto/mvdevice/build=
/tmp/work/raspberrypi4_64-poky-linux/linux-raspberrypi/1_5.4.72+gitAUTOIN=
C+5d52d9eea9_154de7bbd5-r0/temp/run.do_patch.29421' failed with exit code=
 1:
> | (1/6) 0001-Revert-selftests-bpf-Skip-perf-hw-events-test-if-the.patch
> | (2/6) 0002-Revert-selftests-bpf-Fix-perf_buffer-test-on-systems.patch
> | (3/6) realsense_hid_5.4.patch
> | (4/6) realsense_metadata_5.4.patch
> | (5/6) realsense_powerlinefrequency_control_fix_5.4.patch
> | (6/6) realsense_camera_formats_5.4.patch
> | [INFO]: check of .kernel-meta//patches///realsense_camera_formats_5.4=
.patch with "git am" did not pass, trying reduced context.
> | [INFO]: Context reduced git-am of .kernel-meta//patches///realsense_c=
amera_formats_5.4.patch with "git am" did not work, trying "apply".
> | error: patch failed: drivers/media/v4l2-core/v4l2-ioctl.c:1330
> | error: drivers/media/v4l2-core/v4l2-ioctl.c: patch does not apply
> | error: patch failed: include/uapi/linux/videodev2.h:727
> | error: include/uapi/linux/videodev2.h: patch does not apply
> | [ERROR]: Application of .kernel-meta//patches///realsense_camera_form=
ats_5.4.patch failed.
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0 Patch needs to be refreshed. Sample resolu=
tion script:
> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 .git/rebase-apply/resolve_reje=
cts
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task (/home/aravind2/work/project-yocto/poky/../meta-raspberrypi=
/recipes-kernel/linux/linux-raspberrypi_5.4.bb:do_patch) failed with exit=
 code '1'
> NOTE: Tasks Summary: Attempted 717 tasks of which 706 didn't need to be=
 rerun and 1 failed.
> NOTE: No commit since BUILDHISTORY_COMMIT !=3D '1'
>=20
> Summary: 1 task failed:
> /home/aravind2/work/project-yocto/poky/../meta-raspberrypi/recipes-kern=
el/linux/linux-raspberrypi_5.4.bb:do_patch
>=20
> But i am able to apply the failing patch without any issue on https://g=
ithub.com/raspberrypi/linux/tree/rpi-5.4.y and also at /home/aravind2/wor=
k/project-yocto/mvdevice/build/tmp/work-shared/raspberrypi4-64/kernel-sou=
rce.
>=20
> I recreated the patch multiple times from the kernel-source directory o=
f my build tree, but it always fails.
>=20
> I try git am --abort and then apply again the patch it succeeds without=
 any issue.
>=20
> But while building from bitbake, it is always failing.
>=20
> What could be the issue? Could you please help me?
>=20

By default the tool used to apply patches in Yocto is quilt IIRC.
You can try to switch to git and see if it helps:
PATCHTOOL =3D "git"
in your kernel recipe bbappend.

Cheers,
Quentin

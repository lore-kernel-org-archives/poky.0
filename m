Subject: Re: Kernel Patch apply issue #poky #raspberrypi
To: poky@lists.yoctoproject.org
From: "Arun Ravindran" <arunlee@gmail.com>
X-Originating-Location: Enfield, Leinster, IE (192.198.151.51)
X-Originating-Platform: Windows Firefox 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Mar 2021 02:13:20 -0700
References: <20210330084116.4s2wpze4vhm6pghv@qschulz>
In-Reply-To: <20210330084116.4s2wpze4vhm6pghv@qschulz>
Message-ID: <20229.1617095600705620997@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9phev2QYjjh5h4sYjyTb"

--9phev2QYjjh5h4sYjyTb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 30, 2021 at 01:41 AM, Quentin Schulz wrote:

>=20
> PATCHTOOL =3D "git"

After putting the above, still the same result.

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
| ERROR: Task (/home/aravind2/work/project-yocto/poky/../meta-raspberrypi/=
recipes-kernel/linux/linux-raspberrypi_5.4.bb:do_patch) failed with exit co=
de '1'
| NOTE: Tasks Summary: Attempted 717 tasks of which 706 didn't need to be =
rerun and 1 failed.

But here, i can apply the patch without any issue...

| aravind2@tmsbuild012:~/work/project-yocto/mvdevice/build/tmp/work-shared=
/raspberrypi4-64/kernel-source$ git am --abort
| aravind2@tmsbuild012:~/work/project-yocto/mvdevice/build/tmp/work-shared=
/raspberrypi4-64/kernel-source$ git am /home/aravind2/work/project-yocto/me=
ta-intel-realsense/recipes-kernel/linux/linux-raspberrypi/realsense_camera_=
formats_5.4.patch
|Applying: Add support for RealSense camera formats
| aravind2@tmsbuild012:~/work/project-yocto/mvdevice/build/tmp/work-shared=
/raspberrypi4-64/kernel-source$ ( aravind2@tmsbuild012:~/work/mevolve-yocto=
/mvdevice/build/tmp/work-shared/raspberrypi4-64/kernel-source$ )

regards
Arun

--9phev2QYjjh5h4sYjyTb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 30, 2021 at 01:41 AM, Quentin Schulz wrote:<br />
<blockquote>PATCHTOOL =3D "git"</blockquote>
After putting the above, still the same result.<br /><br />| (1/6) 0001-Re=
vert-selftests-bpf-Skip-perf-hw-events-test-if-the.patch<br />| (2/6) 0002-=
Revert-selftests-bpf-Fix-perf_buffer-test-on-systems.patch<br />| (3/6) rea=
lsense_hid_5.4.patch<br />| (4/6) realsense_metadata_5.4.patch<br />| (5/6)=
 realsense_powerlinefrequency_control_fix_5.4.patch<br />| (6/6) realsense_=
camera_formats_5.4.patch<br />| [INFO]: check of .kernel-meta//patches///re=
alsense_camera_formats_5.4.patch with "git am" did not pass, trying reduced=
 context.<br />| [INFO]: Context reduced git-am of .kernel-meta//patches///=
realsense_camera_formats_5.4.patch with "git am" did not work, trying "appl=
y".<br />| error: patch failed: drivers/media/v4l2-core/v4l2-ioctl.c:1330<b=
r />| error: drivers/media/v4l2-core/v4l2-ioctl.c: patch does not apply<br =
/>| error: patch failed: include/uapi/linux/videodev2.h:727<br />| error: i=
nclude/uapi/linux/videodev2.h: patch does not apply<br />| [ERROR]: Applica=
tion of .kernel-meta//patches///realsense_camera_formats_5.4.patch failed.<=
br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patch needs to=
 be refreshed. Sample resolution script:<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .git/rebase-apply/resolv=
e_rejects<br />| WARNING: exit code 1 from a shell command.<br />|<br />| E=
RROR: Task (/home/aravind2/work/project-yocto/poky/../meta-raspberrypi/reci=
pes-kernel/linux/linux-raspberrypi_5.4.bb:do_patch) failed with exit code '=
1'<br />| NOTE: Tasks Summary: Attempted 717 tasks of which 706 didn't need=
 to be rerun and 1 failed.<br /><br />But here, i can apply the patch witho=
ut any issue...<br /><br />| aravind2@tmsbuild012:~/work/project-yocto/mvde=
vice/build/tmp/work-shared/raspberrypi4-64/kernel-source$ git am --abort<br=
 />| aravind2@tmsbuild012:~/work/project-yocto/mvdevice/build/tmp/work-shar=
ed/raspberrypi4-64/kernel-source$ git am /home/aravind2/work/project-yocto/=
meta-intel-realsense/recipes-kernel/linux/linux-raspberrypi/realsense_camer=
a_formats_5.4.patch<br />|Applying: Add support for RealSense camera format=
s<br />| <a href=3D"mailto:aravind2@tmsbuild012:~/work/mevolve-yocto/mvdevi=
ce/build/tmp/work-shared/raspberrypi4-64/kernel-source$" target=3D"_blank" =
rel=3D"noopener">aravind2@tmsbuild012:~/work/project-yocto/mvdevice/build/t=
mp/work-shared/raspberrypi4-64/kernel-source$</a><br /><br /><br />regards<=
br />Arun

--9phev2QYjjh5h4sYjyTb--

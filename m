Subject: How to add gst-player in yocto subsystem
To: poky@lists.yoctoproject.org
From: "Yash" <yash.j@mistralsolutions.com>
X-Originating-Location: Mangalore, Karnataka, IN (106.217.81.196)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 04 May 2020 07:39:37 -0700
Message-ID: <iwWW.1588603177393457161.1NsY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cpe9r14l7x7Blzj9xzW2"

--cpe9r14l7x7Blzj9xzW2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have found the recipe for gstreamer :=C2=A0poky/meta-qt5/recipies-multime=
dia/gstreamer
My machine is apq8096 : it has only the layer.conf which builds all the re=
cipies and bbappend files.
But while playing video files using "player_test" the player fails with er=
rors :
player_test

  Choice: player_test: /home/SD820-Linux-pavan/sandeep/drone_dsi/apq8096-l=
e-1-0-1_ap_standard_oem/apps_proc/poky/build/tmp-glibc/work/armv7a-vfp-neon=
-oemllib32-linux.
Aborted
~ # [ 1581.629711] msm_vidc:  err: State not recognized
[ 1581.633314] msm_vidc:  err: Failed to move from state: 16 to 13
[ 1581.639190] msm_vidc:  err: Failed to move inst: ffffffc072d66000 to st=
art done state
[ 1581.647132] msm_vidc:  err: Failed to move inst: ffffffc072d66000, cap =
=
=3D 9 to state: 13
[ 1581.655081] ------------[ cut here ]------------
[ 1581.659599] WARNING: CPU: 2 PID: 3033 at /home/SD820-Linux-pavan/sandee=
p/drone_dsi/apq8096-le-1-0-1_ap_standard_oem/apps_proc/poky/build/tmp-glibc=
/work-shared/apq8)
[ 1581.682557] Modules linked in:
[ 1581.685461] CPU: 2 PID: 3033 Comm: qmmf-server Tainted: G        W     =
 3.18.71-g4bcd8e6-dirty #1
[ 1581.694310] Hardware name: Qualcomm Technologies, Inc. Mistral  SD820 N=
ano SoM Dev Kit (DT)
[ 1581.702645] Call trace:
[ 1581.705081] [<ffffffc000089a64>] dump_backtrace+0x0/0x14c
[ 1581.710458] [<ffffffc000089bc4>] show_stack+0x14/0x1c
[ 1581.715496] [<ffffffc000e4497c>] dump_stack+0x9c/0xd4
[ 1581.720528] [<ffffffc0000a5360>] warn_slowpath_common+0x88/0xac
[ 1581.726430] [<ffffffc0000a549c>] warn_slowpath_null+0x18/0x20
[ 1581.732160] [<ffffffc00081a5e8>] __vb2_queue_cancel+0x48/0x12c
[ 1581.737974] [<ffffffc00081b9c0>] vb2_queue_release+0x20/0x48
[ 1581.743618] [<ffffffc000834968>] msm_vidc_destroy+0x6c/0xc4
[ 1581.749173] [<ffffffc0008349d4>] close_helper.36793+0x14/0x1c
[ 1581.754902] [<ffffffc000834d74>] msm_vidc_close+0x398/0x3b4
[ 1581.760458] [<ffffffc00082258c>] msm_v4l2_close+0x108/0x1f0
[ 1581.766017] [<ffffffc000802a64>] v4l2_release+0x3c/0x80
[ 1581.771223] [<ffffffc0001bd398>] __fput+0x104/0x1c8
[ 1581.776081] [<ffffffc0001bd4b4>] ____fput+0xc/0x14
[ 1581.780859] [<ffffffc0000bf8e4>] task_work_run+0xb0/0xe0
[ 1581.786152] [<ffffffc0000a6dd4>] do_exit+0x3e0/0x8ec
[ 1581.791099] [<ffffffc0000a8300>] do_group_exit+0x44/0x9c
[ 1581.796396] [<ffffffc0000b3030>] get_signal+0x4d8/0x558
[ 1581.801603] [<ffffffc000088f04>] do_signal+0xac/0x568
[ 1581.806638] [<ffffffc0000895d4>] do_notify_resume+0x18/0x54
[ 1581.812342] ---[ end trace 363194b5c2c05f1e ]---
[ 1581.816869] msm_vidc: info: Closed video instance: ffffffc072d66000
[ 1581.829987] type=3D1131 audit(9963.414:110): pid=3D1 uid=3D0 auid=3D429=
4967295 ses=3D4294967295 subj=3Dsystem_u:system_r:init_t:s0-s15:c0.c1023 ms=
g=3D'unit=3Dqmmf-server comm=3D"sys'
[ 1582.110815] type=3D1130 audit(9963.704:111): pid=3D1 uid=3D0 auid=3D429=
4967295 ses=3D4294967295 subj=3Dsystem_u:system_r:init_t:s0-s15:c0.c1023 ms=
g=3D'unit=3Dqmmf-server comm=3D"sys'
[ 1582.131007] type=3D1131 audit(9963.704:112): pid=3D1 uid=3D0 auid=3D429=
4967295 ses=3D4294967295 subj=3Dsystem_u:system_r:init_t:s0-s15:c0.c1023 ms=
g=3D'unit=3Dqmmf-server comm=3D"sys'
[ 1582.151976] type=3D1130 audit(9963.704:113): pid=3D1 uid=3D0 auid=3D429=
4967295 ses=3D4294967295 subj=3Dsystem_u:system_r:init_t:s0-s15:c0.c1023 ms=
g=3D'unit=3Dqmmf-server comm=3D"sys

--cpe9r14l7x7Blzj9xzW2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have found the recipe for gstreamer :&nbsp;poky/meta-qt5/recipies-multime=
dia/gstreamer<br />My machine is apq8096 : it has only the layer.conf which=
 builds all the recipies and bbappend files.<br />But while playing video f=
iles using "player_test" the player fails with errors :<br />
<pre id=3D"comment_text_0" class=3D"bz_comment_text">player_test


   Choice: player_test: /home/SD820-Linux-pavan/sandeep/drone_dsi/apq8096-=
le-1-0-1_ap_standard_oem/apps_proc/poky/build/tmp-glibc/work/armv7a-vfp-neo=
n-oemllib32-linux.
Aborted
~ # [ 1581.629711] msm_vidc:  err: State not recognized
[ 1581.633314] msm_vidc:  err: Failed to move from state: 16 to 13
[ 1581.639190] msm_vidc:  err: Failed to move inst: ffffffc072d66000 to st=
art done state
[ 1581.647132] msm_vidc:  err: Failed to move inst: ffffffc072d66000, cap =
=
=3D 9 to state: 13
[ 1581.655081] ------------[ cut here ]------------
[ 1581.659599] WARNING: CPU: 2 PID: 3033 at /home/SD820-Linux-pavan/sandee=
p/drone_dsi/apq8096-le-1-0-1_ap_standard_oem/apps_proc/poky/build/tmp-glibc=
/work-shared/apq8)
[ 1581.682557] Modules linked in:
[ 1581.685461] CPU: 2 PID: 3033 Comm: qmmf-server Tainted: G        W     =
 3.18.71-g4bcd8e6-dirty #1
[ 1581.694310] Hardware name: Qualcomm Technologies, Inc. Mistral  SD820 N=
ano SoM Dev Kit (DT)
[ 1581.702645] Call trace:
[ 1581.705081] [&lt;ffffffc000089a64&gt;] dump_backtrace+0x0/0x14c
[ 1581.710458] [&lt;ffffffc000089bc4&gt;] show_stack+0x14/0x1c
[ 1581.715496] [&lt;ffffffc000e4497c&gt;] dump_stack+0x9c/0xd4
[ 1581.720528] [&lt;ffffffc0000a5360&gt;] warn_slowpath_common+0x88/0xac
[ 1581.726430] [&lt;ffffffc0000a549c&gt;] warn_slowpath_null+0x18/0x20
[ 1581.732160] [&lt;ffffffc00081a5e8&gt;] __vb2_queue_cancel+0x48/0x12c
[ 1581.737974] [&lt;ffffffc00081b9c0&gt;] vb2_queue_release+0x20/0x48
[ 1581.743618] [&lt;ffffffc000834968&gt;] msm_vidc_destroy+0x6c/0xc4
[ 1581.749173] [&lt;ffffffc0008349d4&gt;] close_helper.36793+0x14/0x1c
[ 1581.754902] [&lt;ffffffc000834d74&gt;] msm_vidc_close+0x398/0x3b4
[ 1581.760458] [&lt;ffffffc00082258c&gt;] msm_v4l2_close+0x108/0x1f0
[ 1581.766017] [&lt;ffffffc000802a64&gt;] v4l2_release+0x3c/0x80
[ 1581.771223] [&lt;ffffffc0001bd398&gt;] __fput+0x104/0x1c8
[ 1581.776081] [&lt;ffffffc0001bd4b4&gt;] ____fput+0xc/0x14
[ 1581.780859] [&lt;ffffffc0000bf8e4&gt;] task_work_run+0xb0/0xe0
[ 1581.786152] [&lt;ffffffc0000a6dd4&gt;] do_exit+0x3e0/0x8ec
[ 1581.791099] [&lt;ffffffc0000a8300&gt;] do_group_exit+0x44/0x9c
[ 1581.796396] [&lt;ffffffc0000b3030&gt;] get_signal+0x4d8/0x558
[ 1581.801603] [&lt;ffffffc000088f04&gt;] do_signal+0xac/0x568
[ 1581.806638] [&lt;ffffffc0000895d4&gt;] do_notify_resume+0x18/0x54
[ 1581.812342] ---[ end trace 363194b5c2c05f1e ]---
[ 1581.816869] msm_vidc: info: Closed video instance: ffffffc072d66000
[ 1581.829987] type=3D1131 audit(9963.414:110): pid=3D1 uid=3D0 auid=3D429=
4967295 ses=3D4294967295 subj=3Dsystem_u:system_r:init_t:s0-s15:c0.c1023 ms=
g=3D'unit=3Dqmmf-server comm=3D"sys'
[ 1582.110815] type=3D1130 audit(9963.704:111): pid=3D1 uid=3D0 auid=3D429=
4967295 ses=3D4294967295 subj=3Dsystem_u:system_r:init_t:s0-s15:c0.c1023 ms=
g=3D'unit=3Dqmmf-server comm=3D"sys'
[ 1582.131007] type=3D1131 audit(9963.704:112): pid=3D1 uid=3D0 auid=3D429=
4967295 ses=3D4294967295 subj=3Dsystem_u:system_r:init_t:s0-s15:c0.c1023 ms=
g=3D'unit=3Dqmmf-server comm=3D"sys'
[ 1582.151976] type=3D1130 audit(9963.704:113): pid=3D1 uid=3D0 auid=3D429=
4967295 ses=3D4294967295 subj=3Dsystem_u:system_r:init_t:s0-s15:c0.c1023 ms=
g=3D'unit=3Dqmmf-server comm=3D"sys</pre>

--cpe9r14l7x7Blzj9xzW2--

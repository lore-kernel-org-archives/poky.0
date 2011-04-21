Return-Path: <vsailub4u@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 232CC4C80050
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 05:33:52 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so1059838pxi.28
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 03:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=HJKYj2RvPrtn7oWN7LfNAwVZn9kY23Mgq8a81heE8zw=;
	b=Zt6JbjV+utB6XUbFUR/+A5KUvbnODMjRjWw2KEGHZ9q/DWhqZ4DjRNrknqmqXIxfE8
	5b8hywWywdok5VGWzsEdWIug8xMDoNfIiU+ycTvfTM1j168WaeGG09q+W8NkWSxIYj5R
	K2SN0gziRyfvrrnTQdJt0zzhNMlalzYqakhig=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=kO27wFAvR0nOvODq3qX8cpdYBIhUxLkY46vqStkRt1fEQ5RS4CeQwt/WtfEz+ytuTo
	Y+5dQJ02zME4pwKl2p+MMzY+s9jqDqI1kTxotppeEtILlLimQdGIkLwYGO8ZR2GxcgHX
	9vCZKcnLlqpiqPEULITplrYXl4Ujr7iIWlV64=
MIME-Version: 1.0
Received: by 10.142.248.21 with SMTP id v21mr4704911wfh.56.1303382031529; Thu,
	21 Apr 2011 03:33:51 -0700 (PDT)
Received: by 10.142.44.5 with HTTP; Thu, 21 Apr 2011 03:33:51 -0700 (PDT)
Date: Thu, 21 Apr 2011 16:03:51 +0530
Message-ID: <BANLkTi=GWFWbyRsRXzqaZNzXYZY3yVUr-Q@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: Brach problem in the linux-yocto kernel fon sandybridge platform for fishriver machine
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Apr 2011 10:33:52 -0000
Content-Type: multipart/alternative; boundary=00504502bae1fef8cd04a16b460d

--00504502bae1fef8cd04a16b460d
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am  building the poky for "*sandybridge*" platform on "*linux-yocto-
2.6.37"* kernel for "*fishriver*" machine
"*meta_inte*l"  is cloned from git://git.pokylinux.org/meta-intel and i
copied this folder into poky.
I have the follwing folder Under meta-intel


   - common
   - meta-emenlow
   - meta-jasperforest
   - meta-sugarbay
   - meta-crownbay
   - *meta-fishriver*
   - meta-n450


I  made changes in the local.cof and bblayers.conf as
*MACHINE ?= "fishriver"*

BBLAYERS = " \
  /home/sailaja/new-sandybridge/*poky_intel/meta \*
  /home/sailaja/new-sandybridge/*poky_intel/meta-intel/meta-fishriver* \


I am facing a problem at do_kernel_cheout.
It is searching for the the kernel branch "crownbay" But it is not here
/build/tmp/work/fishriver-poky-linux/linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16/
*linux*
If i do "*git branch -a*" in this linux folder  "crownbay" is  not here


* master
  meta
  yocto/base
  yocto/standard/arm-versatile-926ejs
  yocto/standard/base
  yocto/standard/beagleboard
  yocto/standard/common-pc-64/base
  yocto/standard/common-pc-64/jasperforest
  yocto/standard/common-pc-64/sugarbay
  yocto/standard/common-pc/atom-pc
  yocto/standard/common-pc/base
  yocto/standard/emenlow
  yocto/standard/fsl-mpc8315e-rdb
  yocto/standard/mti-malta32-be
  yocto/standard/mti-malta32-le
  yocto/standard/preempt-rt/base
  yocto/standard/preempt-rt/common-pc
  yocto/standard/preempt-rt/common-pc-64
  yocto/standard/qemu-ppc32
  yocto/standard/routerstationpro
  remotes/origin/master
  remotes/origin/meta
  remotes/origin/yocto/base
  remotes/origin/yocto/standard/arm-versatile-926ejs
  remotes/origin/yocto/standard/base
  remotes/origin/yocto/standard/beagleboard
  remotes/origin/yocto/standard/common-pc-64/base
  remotes/origin/yocto/standard/common-pc-64/jasperforest
  remotes/origin/yocto/standard/common-pc-64/sugarbay
  remotes/origin/yocto/standard/common-pc/atom-pc
  remotes/origin/yocto/standard/common-pc/base
   remotes/origin/yocto/standard/emenlow
  remotes/origin/yocto/standard/fsl-mpc8315e-rdb
  remotes/origin/yocto/standard/mti-malta32-be
  remotes/origin/yocto/standard/mti-malta32-le
  remotes/origin/yocto/standard/preempt-rt/base
  remotes/origin/yocto/standard/preempt-rt/common-pc
  remotes/origin/yocto/standard/preempt-rt/common-pc-64
  remotes/origin/yocto/standard/qemu-ppc32


for the "crowbay" branch, it  should  be like as follows

* yocto/standard/crownbay
remotes/origin/yocto/standard/crownbay

But it is searching  for the "crowbay" branch, The error log  as follows

*Error Log:*

OTE: Running task 1230 of 3748 (ID: 337,
/home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb,
do_setscene)
NOTE: package
linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16:
task do_setscene: Started
NOTE: package
linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16:
task do_setscene: Succeeded
NOTE: Running task 1231 of 3748 (ID: 336,
/home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb,
do_fetch)
NOTE: package
linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16:
task do_fetch: Started
NOTE: package
linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16:
task do_fetch: Succeeded
NOTE: Running task 1232 of 3748 (ID: 332,
/home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb,
do_unpack)
NOTE: package
linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16:
task do_unpack: Started
NOTE: package
linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16:
task do_unpack: Succeeded
NOTE: Running task 1267 of 3748 (ID: 331,
/home/sailaja/poky_intel/meta/recipes-kernel/linux/linux-yocto_git.bb,
do_kernel_checkout)
NOTE: package
linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16:
task do_kernel_checkout: Started
ERROR: '/home/sailaja/poky_intel/meta/recipes-kernel/linux/
linux-yocto_git.bb' failed
ERROR: Function 'do_kernel_checkout' failed (see
/home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16/temp/log.do_kernel_checkout.18701
for further information)
ERROR: Logfile of failure stored in:
/home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16/temp/log.do_kernel_checkout.18701
Log data follows:
| *Fixing up git directory for standard/yocto/standard/crownbay
| error: pathspec 'yocto/standard/crownbay' did not match any file(s) known
to git.*
| ERROR: Function 'do_kernel_checkout' failed (see
/home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16/temp/log.do_kernel_checkout.18701
for further information)
NOTE: package
linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16:
* task do_kernel_checkout: Failed*
ERROR: Task 331 (/home/sailaja/poky_intel/meta/recipes-kernel/linux/
linux-yocto_git.bb, do_kernel_checkout) failed with exit code '1'



Please Can anyone suggest me how to track this error.
Please tell why it is so happening







Thanks & Regards,
SAI

--00504502bae1fef8cd04a16b460d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I am=A0 building the poky for &quot;<b><i>sandybridge</i></b>&qu=
ot; platform on &quot;<i><b>linux-yocto- 2.6.37&quot;</b></i> kernel for &q=
uot;<i><b>fishriver</b></i>&quot; machine<br>&quot;<i><b>meta_inte</b></i>l=
&quot;=A0 is cloned from <a href=3D"git://git.pokylinux.org/meta-intel">git=
://git.pokylinux.org/meta-intel</a> and i copied this folder into poky.<br>
I have the follwing folder Under meta-intel<br><br><ul><li>common <br></li>=
<li>meta-emenlow</li><li>meta-jasperforest</li><li>meta-sugarbay</li><li>me=
ta-crownbay</li><li><i><b>meta-fishriver</b></i></li><li>meta-n450=A0=A0<br=
>
</li></ul><br>I=A0 made changes in the local.cof and bblayers.conf as <br><=
b>MACHINE ?=3D &quot;fishriver&quot;</b>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br><br>BBLAYERS =3D &quot; \=
<br>=A0 /home/sailaja/new-sandybridge/<b>poky_intel/meta \</b><br>
=A0 /home/sailaja/new-sandybridge/<b>poky_intel/meta-intel/meta-fishriver</=
b> \<br><br><br>I am facing a problem at do_kernel_cheout.<br>It is searchi=
ng for the the kernel branch &quot;crownbay&quot; But it is not here <br>
/build/tmp/work/fishriver-poky-linux/linux-yocto-2.6.37+git1+51c761795b078b=
f3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16/<=
b>linux</b><br>If i do &quot;<b>git branch -a</b>&quot; in this linux folde=
r=A0 &quot;crownbay&quot; is=A0 not here<br>
<br><br>* master<br>=A0 meta<br>=A0 yocto/base<br>=A0 yocto/standard/arm-ve=
rsatile-926ejs<br>=A0 yocto/standard/base<br>=A0 yocto/standard/beagleboard=
<br>=A0 yocto/standard/common-pc-64/base<br>=A0 yocto/standard/common-pc-64=
/jasperforest<br>
=A0 yocto/standard/common-pc-64/sugarbay<br>=A0 yocto/standard/common-pc/at=
om-pc<br>=A0 yocto/standard/common-pc/base<br>=A0 yocto/standard/emenlow<br=
>=A0 yocto/standard/fsl-mpc8315e-rdb<br>=A0 yocto/standard/mti-malta32-be<b=
r>=A0 yocto/standard/mti-malta32-le<br>
=A0 yocto/standard/preempt-rt/base<br>=A0 yocto/standard/preempt-rt/common-=
pc<br>=A0 yocto/standard/preempt-rt/common-pc-64<br>=A0 yocto/standard/qemu=
-ppc32<br>=A0 yocto/standard/routerstationpro<br>=A0 remotes/origin/master<=
br>=A0 remotes/origin/meta<br>
=A0 remotes/origin/yocto/base<br>=A0 remotes/origin/yocto/standard/arm-vers=
atile-926ejs<br>=A0 remotes/origin/yocto/standard/base<br>=A0 remotes/origi=
n/yocto/standard/beagleboard<br>=A0 remotes/origin/yocto/standard/common-pc=
-64/base<br>
=A0 remotes/origin/yocto/standard/common-pc-64/jasperforest<br>=A0 remotes/=
origin/yocto/standard/common-pc-64/sugarbay<br>=A0 remotes/origin/yocto/sta=
ndard/common-pc/atom-pc<br>=A0 remotes/origin/yocto/standard/common-pc/base=
<br>
=A0=A0 remotes/origin/yocto/standard/emenlow<br>=A0 remotes/origin/yocto/st=
andard/fsl-mpc8315e-rdb<br>=A0 remotes/origin/yocto/standard/mti-malta32-be=
<br>=A0 remotes/origin/yocto/standard/mti-malta32-le<br>=A0 remotes/origin/=
yocto/standard/preempt-rt/base<br>
=A0 remotes/origin/yocto/standard/preempt-rt/common-pc<br>=A0 remotes/origi=
n/yocto/standard/preempt-rt/common-pc-64<br>=A0 remotes/origin/yocto/standa=
rd/qemu-ppc32<br><br><br>for the &quot;crowbay&quot; branch, it=A0 should=
=A0 be like as follows <br>
<br>* yocto/standard/crownbay<br>remotes/origin/yocto/standard/crownbay<br>=
<br>But it is searching=A0 for the &quot;crowbay&quot; branch, The error lo=
g=A0 as follows<br><br><u><b>Error Log:</b></u><br><br>OTE: Running task 12=
30 of 3748 (ID: 337, /home/sailaja/poky_intel/meta/recipes-kernel/linux/<a =
href=3D"http://linux-yocto_git.bb">linux-yocto_git.bb</a>, do_setscene)<br>
NOTE: package linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067=
384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16: task do_setscene: Start=
ed<br>NOTE: package linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d=
995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16: task do_setscene:=
 Succeeded<br>
NOTE: Running task 1231 of 3748 (ID: 336, /home/sailaja/poky_intel/meta/rec=
ipes-kernel/linux/<a href=3D"http://linux-yocto_git.bb">linux-yocto_git.bb<=
/a>, do_fetch)<br>NOTE: package linux-yocto-2.6.37+git1+51c761795b078bf3c80=
104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16: task =
do_fetch: Started<br>
NOTE: package linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067=
384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16: task do_fetch: Succeede=
d<br>NOTE: Running task 1232 of 3748 (ID: 332, /home/sailaja/poky_intel/met=
a/recipes-kernel/linux/<a href=3D"http://linux-yocto_git.bb">linux-yocto_gi=
t.bb</a>, do_unpack)<br>
NOTE: package linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067=
384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16: task do_unpack: Started=
<br>NOTE: package linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d99=
5067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16: task do_unpack: Suc=
ceeded<br>
NOTE: Running task 1267 of 3748 (ID: 331, /home/sailaja/poky_intel/meta/rec=
ipes-kernel/linux/<a href=3D"http://linux-yocto_git.bb">linux-yocto_git.bb<=
/a>, do_kernel_checkout)<br>NOTE: package linux-yocto-2.6.37+git1+51c761795=
b078bf3c80104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-=
r16: task do_kernel_checkout: Started<br>
ERROR: &#39;/home/sailaja/poky_intel/meta/recipes-kernel/linux/<a href=3D"h=
ttp://linux-yocto_git.bb">linux-yocto_git.bb</a>&#39; failed<br>ERROR: Func=
tion &#39;do_kernel_checkout&#39; failed (see /home/sailaja/poky_intel/buil=
d/tmp/work/fishriver-poky-linux/linux-yocto-2.6.37+git1+51c761795b078bf3c80=
104ed6e73b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16/temp/l=
og.do_kernel_checkout.18701 for further information)<br>
ERROR: Logfile of failure stored in: /home/sailaja/poky_intel/build/tmp/wor=
k/fishriver-poky-linux/linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73=
b3d995067384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16/temp/log.do_ker=
nel_checkout.18701<br>
Log data follows:<br>| <b>Fixing up git directory for standard/yocto/standa=
rd/crownbay<br>| error: pathspec &#39;yocto/standard/crownbay&#39; did not =
match any file(s) known to git.</b><br>| ERROR: Function &#39;do_kernel_che=
ckout&#39; failed (see /home/sailaja/poky_intel/build/tmp/work/fishriver-po=
ky-linux/linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067384_1=
+86bd1278bbf11589d87639df17d2f5f42db97b60-r16/temp/log.do_kernel_checkout.1=
8701 for further information)<br>
NOTE: package linux-yocto-2.6.37+git1+51c761795b078bf3c80104ed6e73b3d995067=
384_1+86bd1278bbf11589d87639df17d2f5f42db97b60-r16:<b> task do_kernel_check=
out: Failed</b><br>ERROR: Task 331 (/home/sailaja/poky_intel/meta/recipes-k=
ernel/linux/<a href=3D"http://linux-yocto_git.bb">linux-yocto_git.bb</a>, d=
o_kernel_checkout) failed with exit code &#39;1&#39;<br>
<br><br><br>Please Can anyone suggest me how to track this error.<br>Please=
 tell why it is so happening<br><br><br><br><br><br><br><br>Thanks &amp; Re=
gards,<br>SAI<br><br>

--00504502bae1fef8cd04a16b460d--

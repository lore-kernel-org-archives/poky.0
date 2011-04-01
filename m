Return-Path: <vsailub4u@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id F39EB4C80A73
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 07:01:39 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so831716pxi.28
	for <poky@yoctoproject.org>; Fri, 01 Apr 2011 05:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=v5J1ga+ENAHSyzcTFw8VYjyDZ0AoPcKWkkA2ETIILs0=;
	b=uV/n4TLLy2v6Yjxfh9MYyX5mw0XZqnP+nNOFX/ISUADl0JpKtqkt8zGWq+v4Ijxf7J
	QI4TL/r95ZbMXihN0Gamt5kiRndil88pnJ/0bW/qfVP42T4ADd8dGs19KdxC/jz97K+B
	KzwuT06cA3QLoxOGnWtgJmCXPMU/7v9Uzkgvg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=tDLt8pvnxRj+bkX1/euXJunWO1O98PSHZK8K5O7KD9XOD6ExMib6t+bcZi+pXhl2JR
	yBwRn89+Ws6jxxza2j1wEPVR5rHukRo0+q3aE2104nvOP3vnje9sPlBWtSh4mexsUIEY
	2qDDFsJ2L1H6/f3imQZeqydfG/VzHLKFJ0MnM=
MIME-Version: 1.0
Received: by 10.142.150.10 with SMTP id x10mr2883788wfd.321.1301659299318;
	Fri, 01 Apr 2011 05:01:39 -0700 (PDT)
Received: by 10.142.185.20 with HTTP; Fri, 1 Apr 2011 05:01:39 -0700 (PDT)
In-Reply-To: <AANLkTi=z3FRBiLs2iCLLDhU3q6AvnbXiEGbsbNczykMN@mail.gmail.com>
References: <AANLkTi=K6AGvEvn0JJcFtx4MR9TRwL-VaDnkhaX=t7Lz@mail.gmail.com>
	<AANLkTikeonvaG+5-p8Lr32Z36wRxVoSc_AJgCofKtuXS@mail.gmail.com>
	<AANLkTimri2H+nN4y=Xa2eUsxtENZUqpAX17WqNgnf1Fm@mail.gmail.com>
	<AANLkTimm282fdW7iwFv0NLvXW3QaC1Rc3S7tHPnNJnij@mail.gmail.com>
	<AANLkTinWqFSqg8KOy1WVZHEpvqcsraZPna8JUdDLeXqy@mail.gmail.com>
	<AANLkTi=z3FRBiLs2iCLLDhU3q6AvnbXiEGbsbNczykMN@mail.gmail.com>
Date: Fri, 1 Apr 2011 17:31:39 +0530
Message-ID: <BANLkTini9Qz3JrRjWdbEWP5FG9xF_=mOdA@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: Re: Problem in linux-yocto kernel 2.6.37 configuration while building with sugarbay machine
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
X-List-Received-Date: Fri, 01 Apr 2011 12:01:40 -0000
Content-Type: multipart/alternative; boundary=000e0cd28a64278b09049fda2cf8

--000e0cd28a64278b09049fda2cf8
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to build poky image "*piky-image-minima*l-live"  for *"sugarbay"
* machine with l*inux-yocto kernel 2.6.37 kernel *which supports the
sandy-bridge.

I clone poky source as git clone git://git.pokylinux.org/poky.git

And  cloned for meta-intel from
http://git.pokylinux.org/cgit/cgit.cgi/meta-intel<http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/tree/>

Also made entries in bblayers.conf as  "*meta-intel /meta-sugarbay*"

My machine is 64bit one.

I made changes in sugarbay.conf, for building "i586" , as follows

TARGET_ARCH = "i586"
TARGET_CC_ARCH = "-m32"
#TARGET_CC_ARCH = "-m64"

I tried to build it for both 32 and 64 bit.

I got the common error both time.

Error log:1


---------------------------------------------*********************************************-----------------------------------
This BSP sets 24 kernel options that are possibly non-hardware related.
The full list can be found in your workspace at:
/home/sailaja/new-poky/x86_64/
poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/specified_non_hdw.cfg

*WARNING: There were 103 hardware options requested that do not
         have a corresponding value present in the final ".config" file.
         This probably means you aren't getting the config you wanted.
The full list can be found in your workspace at:*
/home/sailaja/new-poky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/mismatch.cfg

Waiting a second to make sure you get a chance to see this...
NOTE: package
linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
task do_kernel_configcheck: Succeeded
NOTE: Running task 960 of 1998 (ID: 857,
/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/linux-yocto_git.bb,
do_compile)
NOTE: package
linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
task do_compile: Started
ERROR: '/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/
linux-yocto_git.bb' failed


|
/home/sailaja/new-poky/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0:
*error: code model 'kernel' not supported in the 32 bit mode*
|
/home/sailaja/new-poky/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0:
* sorry, unimplemented: 64-bit mode not compiled in*
| make[3]: *** [kernel/bounds.s] Error 1
| make[2]: *** [prepare0] Error 2
| make[2]: *** Waiting for unfinished jobs....
| make[2]: *** [scripts] Error 2
| make[1]: *** [sub-make] Error 2
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/sailaja/new-poky/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.29452
for further information)
NOTE: package
linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16:
task do_compile: Failed
ERROR: Task 857 (/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/
linux-yocto_git.bb, do_compile) failed with exit code '1'
---------------******************************-------------------

I thought, the reason for this error is
As My machine is 64 bit one. It is configured for the default
configurations  i.e., it is using the x86_64_defconfig and 64 bit is enabled
in the .config file.
This is because of misconfiguration.

I configured my kernel.

My build is done. But I am getting an error while building the rootfs.

Error log:2

---------------------------------------********************************************-------------------------------------------------
NOTE: package poky-image-minimal-live-1.0-r0: task do_bootimg: Started
ERROR: '/home/sailaja/new-poky/poky/meta/recipes-core/images/
poky-image-minimal-live.bb' failed
ERROR: Function 'build_boot_bin' failed (see
/home/sailaja/new-poky/poky/build/tmp/work/snb-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.32052
for further information)
ERROR: Logfile of failure stored in:
/home/sailaja/new-poky/poky/build/tmp/work/snb-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.32052
Log data follows:
| *install: cannot stat
`/home/sailaja/new-poky/poky/build/tmp/sysroots/sugarbay/kernel/bzImage': No
such file or directory*
| ERROR: Function 'build_boot_bin' failed (see
/home/sailaja/new-poky/poky/build/tmp/work/snb-poky-linux/poky-image-minimal-live-1.0-r0/temp/log.do_bootimg.32052
for further information)
NOTE: package poky-image-minimal-live-1.0-r0: task do_bootimg: Failed
ERROR: Task 8 (/home/sailaja/new-poky/poky/meta/recipes-core/images/
poky-image-minimal-live.bb, do_bootimg) failed with exit code '1' Error

-------------------------------------------------************************************************------------------------------

*
Why it is happening?
Please Can anyone help me in finding the solution.
*


-- 
Thanks & Regards,
SAI

--000e0cd28a64278b09049fda2cf8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I am trying to build poky image &quot;<i>piky-image-minima</i>l-=
live&quot;=A0 for <i>&quot;sugarbay&quot;</i> machine with l<i>inux-yocto k=
ernel 2.6.37 kernel </i>which supports the sandy-bridge.<br><br>I clone pok=
y source as <code>git clone git://<a href=3D"http://git.pokylinux.org/poky.=
git">git.pokylinux.org/poky.git</a> <br>

</code><br>
And=A0 cloned for meta-intel from=A0 <a href=3D"http://git.pokylinux.org/cg=
it/cgit.cgi/meta-intel/tree/" target=3D"_blank">http://git.pokylinux.org/cg=
it/cgit.cgi/meta-intel</a><br><br>Also made entries in bblayers.conf as=A0 =
&quot;<i>meta-intel /meta-sugarbay</i>&quot;<br>
<br>My machine is 64bit one.<br><br>I made changes in sugarbay.conf, for bu=
ilding &quot;i586&quot; , as follows <br><br>TARGET_ARCH =3D &quot;i586&quo=
t;<br>TARGET_CC_ARCH =3D &quot;-m32&quot;<br>#TARGET_CC_ARCH =3D &quot;-m64=
&quot;<br>
<br>I tried to build it for both 32 and 64 bit.<br><br>I got the common err=
or both time.<br>
<br>Error log:1<br><br>=A0=A0=A0 ------------------------------------------=
---*********************************************---------------------------=
--------<br>This BSP sets 24 kernel options that are possibly non-hardware =
related.<br>
The full list can be found in your workspace at:<br>/home/sailaja/new-poky/=
x86_64/<div id=3D":co">poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-=
2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2=
ea74f2456ab880c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarba=
y/specified_non_hdw.cfg<br>

<br><i>WARNING: <b>There were 103 hardware options requested that do not<br=
>=A0=A0=A0=A0=A0=A0=A0=A0 have a corresponding value present in the final &=
quot;.config&quot; file.<br>=A0=A0=A0=A0=A0=A0=A0=A0 This probably means yo=
u aren&#39;t getting the config you wanted</b>.<br>

The full list can be found in your workspace at:</i><br>/home/sailaja/new-p=
oky/x86_64/poky/build/tmp/work/sugarbay-poky-linux/linux-yocto-2.6.37+git1+=
e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f2456ab8=
80c6e3c1-r16/linux/meta/cfg/yocto/standard/common-pc-64/sugarbay/mismatch.c=
fg<br>

<br>Waiting a second to make sure you get a chance to see this...<br>NOTE: =
package linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+=
2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16: task do_kernel_configcheck: S=
ucceeded<br>

NOTE: Running task 960 of 1998 (ID: 857, /home/sailaja/new-poky/poky/meta/r=
ecipes-kernel/linux/<a href=3D"http://linux-yocto_git.bb/" target=3D"_blank=
">linux-yocto_git.bb</a>, do_compile)<br>NOTE: package linux-yocto-2.6.37+g=
it1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16abe2ea74f245=
6ab880c6e3c1-r16: task do_compile: Started<br>

ERROR: &#39;/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/<a href=
=3D"http://linux-yocto_git.bb/" target=3D"_blank">linux-yocto_git.bb</a>&#3=
9; failed</div><br><br>| /home/sailaja/new-poky/poky/build/tmp/work/sugarba=
y-poky-linux/linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd2=
3a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0=
: <b>error: <i>code model &#39;kernel&#39; not supported in the 32 bit mode=
</i></b><br>

| /home/sailaja/new-poky/poky/build/tmp/work/sugarbay-poky-linux/linux-yoct=
o-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a16ab=
e2ea74f2456ab880c6e3c1-r16/linux/kernel/bounds.c:1:0:<b><i> sorry, unimplem=
ented: 64-bit mode not compiled in</i></b><br>

| make[3]: *** [kernel/bounds.s] Error 1<br>| make[2]: *** [prepare0] Error=
 2<br>| make[2]: *** Waiting for unfinished jobs....<br>| make[2]: *** [scr=
ipts] Error 2<br>| make[1]: *** [sub-make] Error 2<br>| make: *** [all] Err=
or 2<br>

| FATAL: oe_runmake failed<br>| ERROR: Function &#39;do_compile&#39; failed=
 (see /home/sailaja/new-poky/poky/build/tmp/work/sugarbay-poky-linux/linux-=
yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd23a_1+2b412826bbeb4a=
16abe2ea74f2456ab880c6e3c1-r16/temp/log.do_compile.29452 for further inform=
ation)<br>

NOTE: package linux-yocto-2.6.37+git1+e2cabadc059ad8d91f7e4a023106620d93abd=
23a_1+2b412826bbeb4a16abe2ea74f2456ab880c6e3c1-r16: task do_compile: Failed=
<br>ERROR: Task 857 (/home/sailaja/new-poky/poky/meta/recipes-kernel/linux/=
<a href=3D"http://linux-yocto_git.bb" target=3D"_blank">linux-yocto_git.bb<=
/a>, do_compile) failed with exit code &#39;1&#39;<br>

---------------******************************-------------------<br><br>I t=
hought, the reason for this error is <br>As My machine is 64 bit one. It is=
 configured for the default configurations=A0 i.e., it is using the x86_64_=
defconfig and 64 bit is enabled in the .config file.<br>
This is because of misconfiguration.<br><br>I configured my kernel.<br><br>=
My build is done. But I am getting an error while building the rootfs.<br><=
br>Error log:2<br><br>---------------------------------------**************=
******************************---------------------------------------------=
----<br>
NOTE: package poky-image-minimal-live-1.0-r0: task do_bootimg: Started<br>E=
RROR: &#39;/home/sailaja/new-poky/poky/meta/recipes-core/images/<a href=3D"=
http://poky-image-minimal-live.bb">poky-image-minimal-live.bb</a>&#39; fail=
ed<br>
ERROR: Function &#39;build_boot_bin&#39; failed (see /home/sailaja/new-poky=
/poky/build/tmp/work/snb-poky-linux/poky-image-minimal-live-1.0-r0/temp/log=
.do_bootimg.32052 for further information)<br>ERROR: Logfile of failure sto=
red in: /home/sailaja/new-poky/poky/build/tmp/work/snb-poky-linux/poky-imag=
e-minimal-live-1.0-r0/temp/log.do_bootimg.32052<br>
Log data follows:<br>| <i><b>install: cannot stat `/home/sailaja/new-poky/p=
oky/build/tmp/sysroots/sugarbay/kernel/bzImage&#39;: No such file or direct=
ory</b></i><br>| ERROR: Function &#39;build_boot_bin&#39; failed (see /home=
/sailaja/new-poky/poky/build/tmp/work/snb-poky-linux/poky-image-minimal-liv=
e-1.0-r0/temp/log.do_bootimg.32052 for further information)<br>
NOTE: package poky-image-minimal-live-1.0-r0: task do_bootimg: Failed<br>ER=
ROR: Task 8 (/home/sailaja/new-poky/poky/meta/recipes-core/images/<a href=
=3D"http://poky-image-minimal-live.bb">poky-image-minimal-live.bb</a>, do_b=
ootimg) failed with exit code &#39;1&#39; Error<br>
<br>-------------------------------------------------**********************=
**************************------------------------------<br><br><i><br>Why =
it is happening?<br>Please Can anyone help me in finding the solution.<br>
</i><br><br><br>-- <br>Thanks &amp; Regards,<br>SAI<br><br>

--000e0cd28a64278b09049fda2cf8--

Return-Path: <vsailub4u@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 283334C800A2
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 04:37:00 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so414008pve.35
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 02:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=IT6jMyfTKZjRWiIInHcQ0pqTOcf1XoFth3G1718BFKQ=;
	b=org5Po4Hieh/qUEtBRFHYeDzQ9pqLBE0d60a2hqfl8ETGm1IdYHZckDmgjel4E+RwG
	uPmQ53ONL568u3lO4xkujdSvRui0Nv9A2HknC4naRydptu928IIUmGLB5rUdfEhgRPta
	O6iAVRNKEdl5u1+GICIIgyixmeGnIutaMs8tM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=JJfBJPKHbdayvmZiPOf5NkbpxPMsbIHU5bdkj2I4n1lqx2+5nGrgloteHFM1Ka53sc
	0PTaqpMbTZf4GGniD3ZZv9D0an6jhp5AxIcAWFgwK5tNU/0c+S2nM0HBXXZAbbfjxgVa
	kP7LgZHGQv45aOh5x+exCvZOfWNMhzFRVEkds=
MIME-Version: 1.0
Received: by 10.143.153.13 with SMTP id f13mr3919116wfo.380.1303292219661;
	Wed, 20 Apr 2011 02:36:59 -0700 (PDT)
Received: by 10.142.44.5 with HTTP; Wed, 20 Apr 2011 02:36:59 -0700 (PDT)
Date: Wed, 20 Apr 2011 15:06:59 +0530
Message-ID: <BANLkTinsKNAYMEeNtVCb5MNb=Y0rR_GDkQ@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: rpm folder is not created under the deploy folder in poky
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
X-List-Received-Date: Wed, 20 Apr 2011 09:37:00 -0000
Content-Type: multipart/alternative; boundary=001636e0a52bca9d2504a1565de8

--001636e0a52bca9d2504a1565de8
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to port Poky to the "sandybridge platform" and  using the branch
"bernard-cur" for "fishriver" machine.
I am running Ubuntu 10.04 on 64 bit machine.

I get an error "*rpm*" doesn't exist.It means the "*rpm*" folder is not
created under "*tmp/deploy*" folder.



* Error Log:*

NOTE: Running task 1459 of 3826 (ID: 3783,
/home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-lib/
libice_1.0.7.bb, do_package)
NOTE: package libice-1_1.0.7-r0: task do_package: Started
NOTE: package libice-1_1.0.7-r0: task do_package: Succeeded
NOTE: Running task 3103 of 3826 (ID: 3786,
/home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-lib/
libice_1.0.7.bb, do_package_write_rpm)
ERROR: '/home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-lib/
libice_1.0.7.bb' failed
NOTE: package libice-1_1.0.7-r0: task do_package_write_rpm: Started
ERROR: Lockfile destination directory
'/home/sct/poky-intel/poky_intel/build/tmp/deploy/rpm' does not exist
ERROR: Function 'do_package_rpm' failed
ERROR: Logfile of failure stored in:
/home/sct/poky-intel/poky_intel/build/tmp/work/atom-poky-linux/libice-1_1.0.7-r0/temp/log.do_package_write_rpm.19658
Log data follows:
| NOTE: Creating RPM package for libice-dbg
| NOTE: Creating RPM package for libice6
| NOTE: Creating RPM package for libice-doc
| NOTE: Creating RPM package for libice-dev
| NOTE: Not creating empty RPM package for libice-locale
| ERROR: *Lockfile destination directory
'/home/sct/poky-intel/poky_intel/build/tmp/deploy/rpm' does not exist*
| ERROR: Function 'do_package_rpm' failed
NOTE: package libice-1_1.0.7-r0: task do_package_write_rpm: Failed
ERROR: Task 3786
(/home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-lib/
libice_1.0.7.bb, do_package_write_rpm) failed with exit code '1'


Please Can anyone  guide me how to track this problem.



-- 
Thanks & Regards,
SAI

--001636e0a52bca9d2504a1565de8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I am trying <span>to</span> port Poky <span>to</span>
 the &quot;sandybridge platform&quot; and=A0 using the branch &quot;bernard=
-cur&quot; for &quot;fishriver&quot; machine.<br>I am running Ubuntu 10.04 =
on 64 bit machine.<br><br>I get an error &quot;<i><b>rpm</b></i>&quot; does=
n&#39;t exist.It means the &quot;<b><i>rpm</i></b>&quot; folder is not crea=
ted under &quot;<b><i>tmp/deploy</i></b>&quot; folder.<br>
<br><br><br><b><u>=A0Error Log:</u></b><br><br>NOTE: Running task 1459 of 3=
826 (ID: 3783, /home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-l=
ib/<a href=3D"http://libice_1.0.7.bb">libice_1.0.7.bb</a>, do_package)<br>N=
OTE: package libice-1_1.0.7-r0: task do_package: Started<br>
NOTE: package libice-1_1.0.7-r0: task do_package: Succeeded<br>NOTE: Runnin=
g task 3103 of 3826 (ID: 3786, /home/sct/poky-intel/poky_intel/meta/recipes=
-graphics/xorg-lib/<a href=3D"http://libice_1.0.7.bb">libice_1.0.7.bb</a>, =
do_package_write_rpm)<br>
ERROR: &#39;/home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-lib/=
<a href=3D"http://libice_1.0.7.bb">libice_1.0.7.bb</a>&#39; failed<br>NOTE:=
 package libice-1_1.0.7-r0: task do_package_write_rpm: Started<br>ERROR: Lo=
ckfile destination directory &#39;/home/sct/poky-intel/poky_intel/build/tmp=
/deploy/rpm&#39; does not exist<br>
ERROR: Function &#39;do_package_rpm&#39; failed<br>ERROR: Logfile of failur=
e stored in: /home/sct/poky-intel/poky_intel/build/tmp/work/atom-poky-linux=
/libice-1_1.0.7-r0/temp/log.do_package_write_rpm.19658<br>Log data follows:=
<br>
| NOTE: Creating RPM package for libice-dbg<br>| NOTE: Creating RPM package=
 for libice6<br>| NOTE: Creating RPM package for libice-doc<br>| NOTE: Crea=
ting RPM package for libice-dev<br>| NOTE: Not creating empty RPM package f=
or libice-locale<br>
| ERROR: <i><b>Lockfile destination directory &#39;/home/sct/poky-intel/pok=
y_intel/build/tmp/deploy/rpm&#39; does not exist</b></i><br>| ERROR: Functi=
on &#39;do_package_rpm&#39; failed<br>NOTE: package libice-1_1.0.7-r0: task=
 do_package_write_rpm: Failed<br>
ERROR: Task 3786 (/home/sct/poky-intel/poky_intel/meta/recipes-graphics/xor=
g-lib/<a href=3D"http://libice_1.0.7.bb">libice_1.0.7.bb</a>, do_package_wr=
ite_rpm) failed with exit code &#39;1&#39;<br><br><br>Please Can anyone=A0 =
guide me how to track this problem.<br>
<br><br clear=3D"all"><br>-- <br>Thanks &amp; Regards,<br>SAI<br><br>

--001636e0a52bca9d2504a1565de8--

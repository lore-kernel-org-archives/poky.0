Return-Path: <cahoshing@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5011A4C80050
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 06:42:47 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so1142079pzk.35
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 04:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=xxERohKBbTRnw1OVapaCRZ/WJSSGMaPn0SYdYXOv8Sc=;
	b=WPT7uHCYtva0zGxrPIEgJA0waLQ6i64hFh7mWl/eqijBlbWLuOY9yrEUn7bvqlfEty
	TS5ACLT1hCTZbCzemG1AiumCLFH6KHw1spnRfcGMpNahajjoAdKXqm5QZIoQ0Sxxpdwp
	rgm7/yzl/ZzAHVBtafOAnHKEeRx055g1jOtcQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=lWs+ms6JQNapQ38D6aOYH6Q1rR1Pe6T/tDsZtWKf5Q86zHO/jm5C8trMx9fGL6BHzb
	sgvltiDM7xw2zIHDsNyE5a4n+DkO/AbTJFuh4wnVpufatfLBd/8MLZ7IlXe8W7LkfdJ9
	yVN/R9wgmKSPCm6O6O9qAm+kf/f1jdwDNHghE=
MIME-Version: 1.0
Received: by 10.142.209.9 with SMTP id h9mr4131197wfg.63.1300794166256; Tue,
	22 Mar 2011 04:42:46 -0700 (PDT)
Received: by 10.143.41.3 with HTTP; Tue, 22 Mar 2011 04:42:46 -0700 (PDT)
Date: Tue, 22 Mar 2011 17:12:46 +0530
Message-ID: <AANLkTi=pZtSdvx7g6fQVwthwoDR3kFWu2nWd4bTe5a6c@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: error: unpacking of archive failed
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
X-List-Received-Date: Tue, 22 Mar 2011 11:42:47 -0000
Content-Type: multipart/alternative; boundary=000e0cd32c1634a561049f10be22

--000e0cd32c1634a561049f10be22
Content-Type: text/plain; charset=ISO-8859-1

Hi ,
This is the error which I get,i think whenever the number of packages
increase by in pulling in bb file
I get this error ,is it possible means this kind of error? ,if yes then what
is the solution ????
I am using it on Ubuntu 10.10 version and on i686 GNU/Linux machine

base-files
 ##################################################
| error: unpacking of archive failed on file /var/cache: cpio: rename failed
- Inappropriate ioctl for device
| libsm6
 ##################################################
| util-linux-fdisk
 ##################################################
:
:
:
:

usbutils
 ##################################################
| krb5-dev
 ##################################################
| ERROR: Task failed: ('function do_rootfs failed',
'/home/xxx/work/laverne-4.0.1/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-xxx-1.0-r0/temp/log.do_rootfs.20619')
NOTE: package poky-image-minimal-xxx-1.0-r0: task do_rootfs: Failed
ERROR: Task 191 (/home/xxx/work/laverne-4.0.1/meta/recipes-core/images/
poky-image-minimal-xxx.bb, do_rootfs) failed with 1
Waiting for 1 active tasks to finish:
1: poky-image-minimal-initramfs-1.0-r0 do_rootfs (pid 20623)
NOTE: package poky-image-minimal-initramfs-1.0-r0: task do_rootfs: Succeeded
ERROR: '/home/xxx/work/laverne-4.0.1/meta/recipes-core/images/
poky-image-minimal-xxx.bb' failed

With Regards
Chinmaya

--000e0cd32c1634a561049f10be22
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi ,</div><div>This is the error which I get,i think =
whenever the number of packages increase by in pulling in bb file</div><div=
>I get this error ,is it possible means this kind of error? ,if yes then wh=
at is the solution ????</div>
<div>I am using it on Ubuntu 10.10 version and on i686 GNU/Linux machine=A0=
</div><div><br></div><div>base-files =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0###=
###############################################</div><div>| error: unpackin=
g of archive failed on file /var/cache: cpio: rename failed - Inappropriate=
 ioctl for device</div>
<div>| libsm6 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0##################=
################################</div><div>| util-linux-fdisk =A0 =A0 =A0 =
=A0 =A0 =A0##################################################</div><div>:</=
div><div>:</div><div>:</div><div>
:</div><div><br></div><div><div>usbutils =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0##################################################</div><div>| krb5-=
dev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0################################=
##################</div><div>| ERROR: Task failed: (&#39;function do_rootfs=
 failed&#39;, &#39;/home/xxx/work/laverne-4.0.1/build/tmp/work/atom-pc-poky=
-linux/poky-image-minimal-xxx-1.0-r0/temp/log.do_rootfs.20619&#39;)</div>
<div>NOTE: package poky-image-minimal-xxx-1.0-r0: task do_rootfs: Failed</d=
iv><div>ERROR: Task 191 (/home/xxx/work/laverne-4.0.1/meta/recipes-core/ima=
ges/<a href=3D"http://poky-image-minimal-xxx.bb">poky-image-minimal-xxx.bb<=
/a>, do_rootfs) failed with 1</div>
<div>Waiting for 1 active tasks to finish:</div><div>1: poky-image-minimal-=
initramfs-1.0-r0 do_rootfs (pid 20623)</div><div>NOTE: package poky-image-m=
inimal-initramfs-1.0-r0: task do_rootfs: Succeeded</div><div>ERROR: &#39;/h=
ome/xxx/work/laverne-4.0.1/meta/recipes-core/images/<a href=3D"http://poky-=
image-minimal-xxx.bb">poky-image-minimal-xxx.bb</a>&#39; failed</div>
</div><div><br></div><div>With Regards</div><div>Chinmaya</div><div><br></d=
iv><div><br></div><div><br></div></div>

--000e0cd32c1634a561049f10be22--

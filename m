Return-Path: <cahoshing@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 757194C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 03:46:29 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk28 with SMTP id 28so174393pzk.35
	for <poky@yoctoproject.org>; Thu, 03 Mar 2011 01:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=ngtM86htFi4bjhAv9dgPfEVlPMvNmwH1gJy3Th3Doo8=;
	b=LIXPIogr7UVXfayx2f66YaZZ5UhfTZydm0SX8Jw11vjfDaxgEwA0mnk0Ggp+fWDWIq
	YMcqzPa2AVGGWx4d/zWQVXtupZ/zVsSHRlTY7cHi5YwXUQLAUwJadhjR71T6r7hKMSAR
	qc94IL9TVzcbGazWiffubbQrsdHkqLbcjNWz4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=jV/0vaMDModNRiOUo0Rwpi3fibIy15pkBXIHVA0F4l638wzfdjQE4bylAemYvslVDs
	Ohl3ttYd8X84dGPg+kDDXFIQo3JxmbC7+yKtHhAHrQUQ60MDyFWq9t/uAmvRDXp9EUuy
	XvwK6c/u02tDYe9XZBPedJ/DbaPTV/zaYY9pg=
MIME-Version: 1.0
Received: by 10.142.239.14 with SMTP id m14mr716167wfh.12.1299145588965; Thu,
	03 Mar 2011 01:46:28 -0800 (PST)
Received: by 10.142.106.2 with HTTP; Thu, 3 Mar 2011 01:46:28 -0800 (PST)
Date: Thu, 3 Mar 2011 15:16:28 +0530
Message-ID: <AANLkTim7ObgjarV3z+nOuT3=0jk=u64Lkv3BVLBC-zSk@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error when polkit library is pulled
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
X-List-Received-Date: Thu, 03 Mar 2011 09:46:29 -0000
Content-Type: multipart/alternative; boundary=000e0cd155be578351049d90e7c1

--000e0cd155be578351049d90e7c1
Content-Type: text/plain; charset=ISO-8859-1

Hi,
When polkit library is pulled ,this is the following error :-


NOTE: package poky-image-minimal-initramfs-1.0-r0: task do_rootfs: Succeeded
ERROR: Task failed: ('function do_rootfs failed',
'/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457')
ERROR: Logfile of failure stored in:
/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457
:
:
:
:
: base-files
##################################################
| error: unpacking of archive failed on file /var/cache: cpio: rename failed
- Inappropriate ioctl for device
| udev-extraconf
##################################################
| udev
##################################################
| zypper
##################################################
| avahi-daemon
##################################################
| hal-info
##################################################
| ERROR: Task failed: ('function do_rootfs failed',
'/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457')
NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed
ERROR: Task 191 (/home/sct/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb, do_rootfs) failed with 1
ERROR: '/home/sct/poky-chrome/meta/recipes-core/images/
poky-image-minimal-akshat.bb' failed


With Regards
Chinmaya

--000e0cd155be578351049d90e7c1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>When polkit library is pulled ,this is the followin=
g error :-<br><br><br>NOTE: package poky-image-minimal-initramfs-1.0-r0: ta=
sk do_rootfs: Succeeded<br>ERROR: Task failed: (&#39;function do_rootfs fai=
led&#39;, &#39;/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky=
-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457&#39;)<br>
ERROR: Logfile of failure stored in: /home/sct/poky-chrome/build/tmp/work/a=
tom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457=
<br>:<br>:<br>:<br>:<br>: base-files=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 ##################################################<br>
| error: unpacking of archive failed on file /var/cache: cpio: rename faile=
d - Inappropriate ioctl for device<br>| udev-extraconf=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 ##################################################<br>| =
udev=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #=
#################################################<br>
| zypper=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ###=
###############################################<br>| avahi-daemon=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ######################################=
############<br>| hal-info=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 ##################################################<br>
| ERROR: Task failed: (&#39;function do_rootfs failed&#39;, &#39;/home/sct/=
poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0=
-r0/temp/log.do_rootfs.21457&#39;)<br>NOTE: package poky-image-minimal-aksh=
at-1.0-r0: task do_rootfs: Failed<br>
ERROR: Task 191 (/home/sct/poky-chrome/meta/recipes-core/images/<a href=3D"=
http://poky-image-minimal-akshat.bb">poky-image-minimal-akshat.bb</a>, do_r=
ootfs) failed with 1<br>ERROR: &#39;/home/sct/poky-chrome/meta/recipes-core=
/images/<a href=3D"http://poky-image-minimal-akshat.bb">poky-image-minimal-=
akshat.bb</a>&#39; failed<br>
<br><br>With Regards<br>Chinmaya<br></div>

--000e0cd155be578351049d90e7c1--

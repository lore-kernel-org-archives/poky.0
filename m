Return-Path: <andreas2025@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81F2DE01524
	for <poky@yoctoproject.org>; Sun, 18 Aug 2013 03:37:40 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id hi8so2100962wib.9
	for <poky@yoctoproject.org>; Sun, 18 Aug 2013 03:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4YDIaRGuIjGLhc+BWTASG3FLezHCtmHvP+M39m+8LiQ=;
	b=sLprXrAeASIqCxzEGL0wpVkE5i5lnoePAxTkN/g7/xJiQ8wunyGF4yfNoFOZy62HCC
	qli2PXO0o/OiAehKMX9qCsA5q/32qnwLeSqhW0I0sxfQpCWmGGN0KZzUqoEw6a3Y9uOt
	pl0OoNx2X5BvY6iL414BcK0pCVx+oCFlfWecaVdBdaVYgDzQ5V6jmjVC8WGiLjUoaOOe
	90bJ/45nByQynaCkPeZRNqhzrL8ozyq5St4JEGLugKXve8sn7uiYZHTPdOF5CmHfGCL9
	pyRT4RqqzBhlCLGaB1q9nv2NA/uao8jE9UyDGtT49/hH0JEVDXh4/aRDme02Z55HLpp8
	C6eA==
MIME-Version: 1.0
X-Received: by 10.180.84.225 with SMTP id c1mr4274861wiz.53.1376822258938;
	Sun, 18 Aug 2013 03:37:38 -0700 (PDT)
Received: by 10.217.38.193 with HTTP; Sun, 18 Aug 2013 03:37:38 -0700 (PDT)
Date: Sun, 18 Aug 2013 11:37:38 +0100
Message-ID: <CAAVaN8wf16RFYBx-FpZpsNPoch4eSrKSHhOicYMQghh_B8cW9Q@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: poky@yoctoproject.org
Subject: (No subject)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 18 Aug 2013 10:37:42 -0000
Content-Type: multipart/alternative; boundary=f46d0418282ea9b8e504e436697d

--f46d0418282ea9b8e504e436697d
Content-Type: text/plain; charset=ISO-8859-1

Dear List,

I try to build Poky and the final rootfs image doesn't not mount with the
following problem:

----------------------8<-------------------------8<------------------------------
BIFS: mounted UBI device 0, volume 0, name "polatisnic-rootfs"
UBIFS: mounted read-only
UBIFS: file system size:   10737408 bytes (10485 KiB, 10 MiB, 82 LEBs)
UBIFS: journal size:       1964160 bytes (1918 KiB, 1 MiB, 15 LEBs)
UBIFS: media format:       w4/r0 (latest is w4/r0)
UBIFS: default compressor: lzo
UBIFS: reserved for root:  0 bytes (0 KiB)
VFS: Mounted root (ubifs filesystem) readonly on device 0:14.
devtmpfs: mounted
Freeing init memory: 208K
INIT: version 2.88 booting
mount: permission denied (are you root?)
mount: permission denied (are you root?)
grep: /proc/filesystems: No such file or directory
mount: permission denied (are you root?)
grep: /proc/mounts: No such file or directory
grep: /proc/mounts: No such file or directory
Remounting root file system...
mount: can't read '/etc/mtab': No such file or directory
------------------------8<-----------------------------------8<------------------

After a bit of research, I have found out that the busybox was populated in
the rootfs
under ownership of "andreas:andreas" instead of "root:root", and its
symbolic links under "root:root"

I fixed manually the ownership and it booted  up.

Does anyone knows what might be going wrong in my build process?

Any guidance would be very helpful.

Thank you
Andreas

--f46d0418282ea9b8e504e436697d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Dear List,<br><br></div>I try to build Poky and =
the final rootfs image doesn&#39;t not mount with the following problem:<br=
><br>----------------------8&lt;-------------------------8&lt;-------------=
-----------------<br>

BIFS: mounted UBI device 0, volume 0, name &quot;polatisnic-rootfs&quot;<br=
>UBIFS: mounted read-only<br>UBIFS: file system size:=A0=A0 10737408 bytes =
(10485 KiB, 10 MiB, 82 LEBs)<br>UBIFS: journal size:=A0=A0=A0=A0=A0=A0 1964=
160 bytes (1918 KiB, 1 MiB, 15 LEBs)<br>

UBIFS: media format:=A0=A0=A0=A0=A0=A0 w4/r0 (latest is w4/r0)<br>UBIFS: de=
fault compressor: lzo<br>UBIFS: reserved for root:=A0 0 bytes (0 KiB)<br>VF=
S: Mounted root (ubifs filesystem) readonly on device 0:14.<br>devtmpfs: mo=
unted<br>
Freeing init memory: 208K<br>
INIT: version 2.88 booting<br>mount: permission denied (are you root?)<br>m=
ount: permission denied (are you root?)<br>grep: /proc/filesystems: No such=
 file or directory<br>mount: permission denied (are you root?)<br>grep: /pr=
oc/mounts: No such file or directory<br>

grep: /proc/mounts: No such file or directory<br>Remounting root file syste=
m...<br>mount: can&#39;t read &#39;/etc/mtab&#39;: No such file or director=
y<br>------------------------8&lt;-----------------------------------8&lt;-=
-----------------<br>

<br></div><div>After a bit of research, I have found out that the busybox w=
as populated in the rootfs <br></div><div>under ownership of &quot;andreas:=
andreas&quot; instead of &quot;root:root&quot;, and its symbolic links unde=
r &quot;root:root&quot;<br>
<br></div><div>I fixed manually the ownership and it booted=A0 up.<br>
<br></div><div>Does anyone knows what might be going wrong in my build proc=
ess?<br><br></div><div>Any guidance would be very helpful.<br><br></div>Tha=
nk you<br>Andreas</div>

--f46d0418282ea9b8e504e436697d--

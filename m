Return-Path: <andreas2025@gmail.com>
Received: from mail-we0-f193.google.com (mail-we0-f193.google.com
	[74.125.82.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F979E01524
	for <poky@yoctoproject.org>; Sun, 18 Aug 2013 03:40:17 -0700 (PDT)
Received: by mail-we0-f193.google.com with SMTP id q54so1138048wes.0
	for <poky@yoctoproject.org>; Sun, 18 Aug 2013 03:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=58L2Dn9Eiay6sSAE04lpcO1LR979qWn/yBqePHWtqVo=;
	b=FVChuKbNgop4gSAckYt3wWftvU7gmn8spvM+98lsjzSIbZ3kn4PJPijtR6b+En48/u
	/mttQQPCYPb+4gqwqC4Cs1tnD0q9LaJ2AElFbVhQMpjXQ0YmHb8NkqMY4k9KBDEvgH9f
	E8o0ysXuEQspWFYHVNd0ojhhBvIKBSfrbnR9glzr70i34U0t1JFJhCzlL75suudi8jJT
	FKKqzYnX609mtXtdKfNdXnkZb5nZEVsq9PI7wuvMmfSTN2+ud9WZfHgrsZhSKMKzP/vk
	IDt19wBHlNZrTePbO5CYHLGI7arR0CUPEqJ+z3HWBI3zSXUPXet9cLblEmC7lnSz6h3c
	dOkw==
MIME-Version: 1.0
X-Received: by 10.180.208.3 with SMTP id ma3mr802970wic.12.1376822416027; Sun,
	18 Aug 2013 03:40:16 -0700 (PDT)
Received: by 10.217.38.193 with HTTP; Sun, 18 Aug 2013 03:40:16 -0700 (PDT)
Date: Sun, 18 Aug 2013 11:40:16 +0100
Message-ID: <CAAVaN8zhLszZ_zN3O0E69ZqD+kFnEVUR48rkNy833jXm5PE42A@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: poky@yoctoproject.org
Subject: file permissions in the rootfs
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
X-List-Received-Date: Sun, 18 Aug 2013 10:40:18 -0000
Content-Type: multipart/alternative; boundary=001a11c388b206b3b904e43673d1

--001a11c388b206b3b904e43673d1
Content-Type: text/plain; charset=ISO-8859-1

Dear List,

I try to build Poky 7.0.1  and the final rootfs image doesn't not mount
with the following problem:

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

--001a11c388b206b3b904e43673d1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Dear List,<br><br></div>I try to build Poky 7.0.=
1=A0 and the final rootfs image doesn&#39;t not mount with the following pr=
oblem:<br><br>----------------------8&lt;-------------------------8&lt;----=
--------------------------<br>


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

--001a11c388b206b3b904e43673d1--

Return-Path: <pjcoup@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 418A64C8071D
	for <poky@yoctoproject.org>; Sun, 27 Mar 2011 22:28:24 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so3297591wwd.11
	for <poky@yoctoproject.org>; Sun, 27 Mar 2011 20:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=scLMKs59Po6/lhFlkf41RtMZFQIvi+7RbC21GihH9+w=;
	b=log07YgscGvh+kRUpIV2R2/G7XoVESxl21ZHLZwDoxIADGEjFJBuqvS8AgDyBtZdkK
	lY+DzA8Yl4OVGgkau5EPejQJgyeaU4KzMbiDhW9pWm90r9TC8LiPgN6ysUYFSAwUn0rv
	EJctoZ1ks5cbB4go3Hmd2uPuEiSPOyDd+is2k=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=EVyvVS9NVHHuKIlB64yC06/bx/u374BEqI5457t6A6TISygFl/77JM3N53RS6v1+Ay
	Ip6UA4vRTlpAGQm9DN5VVmPXspKuvu3K2zOQ1RhYHQWWG3EXQXOw3tk3pykxmC0DazjV
	L9s5jEgWsWDZ0cWez7Unt5HphjlhTgXOOqRN0=
MIME-Version: 1.0
Received: by 10.216.141.94 with SMTP id f72mr3299655wej.38.1301282903108; Sun,
	27 Mar 2011 20:28:23 -0700 (PDT)
Received: by 10.216.36.147 with HTTP; Sun, 27 Mar 2011 20:28:23 -0700 (PDT)
Date: Sun, 27 Mar 2011 20:28:23 -0700
Message-ID: <AANLkTimyMqJN4q1gnG-M9t02GdrotJD5tvxEbr--k3x2@mail.gmail.com>
From: Pete Couperus <pjcoup@gmail.com>
To: poky@yoctoproject.org
Subject: Boost libs built as x86 library with qemumips target
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
X-List-Received-Date: Mon, 28 Mar 2011 03:28:24 -0000
Content-Type: multipart/alternative; boundary=0016e6de1501312a99049f828996

--0016e6de1501312a99049f828996
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I'm new to poky, and was trying to build 'poky-image-minimal' for a couple
of targets.
After success with 'poky-image-minimal' for qemux86, I tried out the
qemumips target.
Things seemed to be going fine, until it errored out trying to build libzypp
with a bunch
of:
skipping incompatible
/home/twocog/poky-builds/build-mips/tmp/sysroots/mips-poky-linux/usr/lib/libboost_signals-mt.so
when searching for -lboost_signals-mt.
Indeed, file libboost_signals.so.1.44.0 reports ELF x86, where all of the
other
.so in this directory are ELF mips.
On looking at the boost build artifacts, they all seem to be x86.
The host machine is x86.
This is using poky-laverne-4.0.
Any help/guidance would be appreciated, I realize there are many moving
pieces here.  I can provide more diagnostics if needed.
Thanks.

Pete

--0016e6de1501312a99049f828996
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br><br>I&#39;m new to poky, and was trying to build &#39;poky-image-=
minimal&#39; for a couple of targets.<br>After success with &#39;poky-image=
-minimal&#39; for qemux86, I tried out the qemumips target.<br>Things seeme=
d to be going fine, until it errored out trying to build libzypp with a bun=
ch<br>
of:<br>skipping incompatible /home/twocog/poky-builds/build-mips/tmp/sysroo=
ts/mips-poky-linux/usr/lib/libboost_signals-mt.so when searching for -lboos=
t_signals-mt.<br>Indeed, file libboost_signals.so.1.44.0 reports ELF x86, w=
here all of the other<br>
.so in this directory are ELF mips.<br>On looking at the boost build artifa=
cts, they all seem to be x86.<br>The host machine is x86.<br>This is using =
poky-laverne-4.0. <br>Any help/guidance would be appreciated, I realize the=
re are many moving pieces here.=A0 I can provide more diagnostics if needed=
.<br>
Thanks.<br><br>Pete<br><br><br>

--0016e6de1501312a99049f828996--

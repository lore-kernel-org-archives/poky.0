Return-Path: <salvatore.fassi@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4E744C80579
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 10:53:24 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so2173319iym.35
	for <poky@yoctoproject.org>; Wed, 06 Apr 2011 08:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=t0gQ2z4zFYp3oh27DdNIh7sWtR12kaQhIOixOfKYWzc=;
	b=iePPD2yCLyS7yTPV/X4vq44LUs6HdRcBjSHxjRlv5/q60XaHod2bh+o8zQtnGtvfNX
	96sGWs0md6UsAH4TY0qdSaPLP5/qC2bMgYAd7899k6WI+kL6c8rIknVeu0u5XhlrPaLY
	gQRB7Yx6WblZCzajzqOySl+pyzz55ugWKJsFY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=o7QST/4qk/523jr58hlPXdl9rrE2MuH7THYcoKV2GXRsUcm2NSqT60GZh1mEodORXO
	/voiSRKyrDaywHLHjo/s4FNWHOfIC2VhMHglwzfQwH3bN2XgJ2TiJYqfXc72a+SXnIXS
	2vS0d54Cv7lgkR4vbQ+rd8wwfIvMWvcVyIA4Q=
MIME-Version: 1.0
Received: by 10.42.167.199 with SMTP id t7mr778516icy.220.1302105204196; Wed,
	06 Apr 2011 08:53:24 -0700 (PDT)
Received: by 10.42.219.202 with HTTP; Wed, 6 Apr 2011 08:53:24 -0700 (PDT)
Date: Wed, 6 Apr 2011 17:53:24 +0200
Message-ID: <BANLkTikROqhGtMmbFA4ZJs+dwDaVpzaKxw@mail.gmail.com>
From: Salvatore Fassi <salvatore.fassi@gmail.com>
To: poky@yoctoproject.org
Subject: Poky issues with tune-cortexa8 and a custom machine
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
X-List-Received-Date: Wed, 06 Apr 2011 15:53:24 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e833228042b04a041fe59

--90e6ba6e833228042b04a041fe59
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I've created a custom machine to match my hardware.
This hw is arm based with cortexa8 architecture, so my machine file
(myarm.conf) uses:

require conf/machine/include/tune-cortexa8.inc

For the image I use:

bitbake poky-image-minimal

This compiles everything fine but when it starts composing the rootfs by
installing ipk's I get errors about some missing packages.
I've found that the error is due to the fact that poky is compiling two work
trees:

build/tmp/work/myarm-poky-linux-gnueabi

and

build/tmp/work/armv7a-poky-linux-gnueabi

And the missing ipk's are in the armv7a tree!

I've also noticed that the armv7a "target" definition is inside
tune-cortexa8.inc...
So...what am I doing wrong?

Thank you.

best regards

Salvo

--90e6ba6e833228042b04a041fe59
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<br><br>I&#39;ve created a custom machine to match my hardware.<br>T=
his hw is arm based with cortexa8 architecture, so my machine file (myarm.c=
onf) uses:<br><br>require conf/machine/include/tune-cortexa8.inc<br><br>
For the image I use:<br><br>bitbake poky-image-minimal<br><br>This compiles=
 everything fine but when it starts composing the rootfs by installing ipk&=
#39;s I get errors about some missing packages.<br>I&#39;ve found that the =
error is due to the fact that poky is compiling two work trees:<br>
<br>build/tmp/work/myarm-poky-linux-gnueabi<br><br>and<br><br>build/tmp/wor=
k/armv7a-poky-linux-gnueabi<br><br>And the missing ipk&#39;s are in the arm=
v7a tree!<br><br>I&#39;ve also noticed that the armv7a &quot;target&quot; d=
efinition is inside tune-cortexa8.inc...<br>
So...what am I doing wrong?<br><br>Thank you.<br><br>best regards<br><br>Sa=
lvo<br><br><br>

--90e6ba6e833228042b04a041fe59--

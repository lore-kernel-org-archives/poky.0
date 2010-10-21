Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f171.google.com (mail-iw0-f171.google.com
	[209.85.214.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 181964C801BF
	for <poky@pokylinux.org>; Wed, 20 Oct 2010 23:46:52 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn38 with SMTP id 38so132630iwn.2
	for <poky@pokylinux.org>; Wed, 20 Oct 2010 21:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:cc:content-type;
	bh=AXSeSIOGD4H35klnmapV93w+cm+BTKKE5wH10HcFSC8=;
	b=m+LfL+CdXoqLtgoShqw4a24MfWc6iYqqbtjv5y74+DLBNHiBJPDxljxCFyKgWjtJq+
	oJfU5eqdY24pqYGI3T5kJUY+CzVAEK1MngoqkrhI7D+kEZDSUur/ETGLMSpPj06f2Sgr
	j/s7Z722VE7HWzf5TekhSIvpsy/3YX7N/Nr74=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	b=NDcUljzbIGZp0yk6+bP6KMi+VVpctZ2ZyQnptK/Rt31lmCmH753bcmInZ4+25r2kKU
	gGVO2sd4oBb166ATlr0XlN30tDluyzfuXEaxg7dGAElSERDhTFXmtkpMcsg1D3iqPf55
	os0MDomLS7WGBI5wF+iwq3Pv4b40AmpLbPYsc=
MIME-Version: 1.0
Received: by 10.42.1.78 with SMTP id 14mr185214icf.111.1287636403996; Wed, 20
	Oct 2010 21:46:43 -0700 (PDT)
Received: by 10.231.207.66 with HTTP; Wed, 20 Oct 2010 21:46:43 -0700 (PDT)
Date: Thu, 21 Oct 2010 00:46:43 -0400
Message-ID: <AANLkTikBkCSh7kJfshniCFpAqky+stOHmVL1NtQZxTLh@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Purdie, Richard" <richard.purdie@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Cc: poky <poky@pokylinux.org>
Subject: [PULL] powerpc build fixes
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 04:46:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

When building poky-image-sato, two build errors popped up. When
the original integration was done, the tuning bounced back and forth
on this, it looks like a mismatch was sent up for merge mistakenly.

This fixes the tuning and tweaks gst-ffmpeg to get everything building
for sato. I don't see the need for altivec tests (or optimizations) for
gst-ffmpeg at the moment, so my suggestion is to simply disable
the tests.

Cheers,

Bruce

---------------------------------------------

The following changes since commit 27d06858b5f3138039bddecc0eaaee1e05e21b48:
  Joshua Lock (1):
        gnome-icon-theme: fix build

are available in the git repository at:

  ssh://git@git.pokylinux.org/poky-contrib zedd/kernel

Bruce Ashfield (2):
      mpc8315e-rdb: align PACKAGE_EXTRA_ARCHS with tuning
      gst-ffmpeg: powerpc build errors

 meta/conf/machine/mpc8315e-rdb.conf                |    2 +-
 .../gstreamer/gst-ffmpeg_0.10.1.bb                 |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

--------------------------------------------------

commit 5de98a1c528529cc937d721c77c72897733f84d8
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Thu Oct 21 00:37:54 2010 -0400

    gst-ffmpeg: powerpc build errors

    Fixes [BUGID #501]

    While building the poky-image-sato target, gst-ffmpeg failed when
    it attempted to run altivec tests on the host. We can live without
    this optimization, so the easiest fix is to simply disable it.

    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

:100644 100644 65d60f9... 9bd371e... M
meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb

commit 6cd2bb751c9d2b44f896f18508d59247d879c278
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Thu Oct 21 00:30:07 2010 -0400

    mpc8315e-rdb: align PACKAGE_EXTRA_ARCHS with tuning

    Fixes [BUGID #500]

    While the tuning for the mpc8315e is 603e, the PACKAGE_EXTRA_ARCHES
    was ppce300. This created a mismatch and resulted in rootfs assembly
    issues due to missing locales.

    We align both at 603 and can revist a better tuning in the future.

    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

:100644 100644 a2aeea9... e42a9f2... M  meta/conf/machine/mpc8315e-rdb.conf


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"


Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f171.google.com (mail-iw0-f171.google.com
	[209.85.214.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F86B4C811A2
	for <poky@pokylinux.org>; Mon, 18 Oct 2010 14:42:16 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn38 with SMTP id 38so1749757iwn.2
	for <poky@pokylinux.org>; Mon, 18 Oct 2010 12:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:cc:content-type;
	bh=CaYrTEojW4plYpxckLmbQd9hErF4Evd8d8AV7xd2CnY=;
	b=UiI7QzWAQQjg22Wigw2RCZ7KzbfjHE7KVp02J5LgRsByQoJbC3LI86nArGWnjWzXAF
	OuIa6gL7ZtDTTr6Blxel0qGxDUBh1tNJQfLtAuF4mDzehYWmFgYI/+8ma70v83iBTt9x
	c4u0k7vWb7bx+UvToBQ56AFyOTPlEyd+YoW6E=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	b=qRbkRkw81jMjGFHmxd18nEgVphDFz9+8SIRxdwRCdR4TKNBDwfYCt49cXrhh8NESDB
	H1pSKbVnIjCzbnCA48du0GUJwsfbA7y+Ue3wRm3A5VmbBckKfy+tvOz0cBBZ6t78jEpZ
	8bZ07jXe9/T16zpq037CnAilqSGeit7d4vdm8=
MIME-Version: 1.0
Received: by 10.231.59.83 with SMTP id k19mr3797917ibh.178.1287430935221; Mon,
	18 Oct 2010 12:42:15 -0700 (PDT)
Received: by 10.231.207.66 with HTTP; Mon, 18 Oct 2010 12:42:15 -0700 (PDT)
Date: Mon, 18 Oct 2010 15:42:15 -0400
Message-ID: <AANLkTi=gui3bioeOXU5gcgu6SuzoKD=cYTgAgEygBSkj@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Purdie, Richard" <richard.purdie@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Cc: poky <poky@pokylinux.org>
Subject: [PULL] [KERNEL] emenlow: logging / restart fixes
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
X-List-Received-Date: Mon, 18 Oct 2010 19:42:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

The following fixes logging / restart issues with the emenlow.

commit 9c734d919f194d2ecb8b06e9a987f306cf3f1593
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Mon Oct 18 15:33:30 2010 -0400

    wrs_meta: emenlow updates

    Fixes [BUGID #465]

        wrs_meta: add logbuf size feature

        A 16k kernel log buffer size is too small for emenlow and atom-pc -
        boot messages are routinely lost with the current setting.  Increase
        the size to something more reasonable - 64k seems to be a good
        compromise.

        Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

        emenlow: add cmdline option for reboot quirk

        The default reboot options don't work for emenlow i.e. kbd + triple
        results in a reboot hang.  According to the emenlow chipset manual,
        port CF9 is supported, so let's use that.

        Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

:100644 100644 b5540b1... 4d449e1... M
meta/conf/distro/include/poky-default-revisions.inc

-----------------------------

The following changes since commit ef670167cdf9e31588932a27b22974c908a54dd7:
  Saul Wold (1):
        rpm: Change pcre to use internal library [BUGID #404]

are available in the git repository at:

  ssh://git@git.pokylinux.org/poky-contrib zedd/kernel

Bruce Ashfield (1):
      wrs_meta: emenlow updates

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"


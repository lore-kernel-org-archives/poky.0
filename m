Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C06D4E0027E
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 06:54:52 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so10745325iea.35
	for <poky@yoctoproject.org>; Mon, 08 Oct 2012 06:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=dpCbmNMlU0TKmZoPUTYgxyRhBVy19GGZbZt9RmCscrY=;
	b=iXrvGwqobqRB+muU3i4qXet5MUVbj/ROMY53hIlkJOkiYDk3+JMmZXp8RqFYSdJ8MT
	gk4uWsa2ETBiTiWQV04yHoR/F+s/OBdApsXjXW9/rEtGmcg2WTc6o4kKhSOTMFCxZhke
	BkIIOrduCVKuaSiC3NkAd4SAquu/IcwgF5FBiHQbXQov2s7iBzycp8EOju/hD4l0op14
	Kpj7vQYXLCfHZoUGF6UlUd0KyN62pMzkUvMoKT6+Rf7cHGF1dAGb9XPQgViRMcUG6NcR
	HQ37sOZ7Eirib23D5ndiqLlVhYfl2udsZHc6WkON62JJSP7v3APg4tIQo3LItsF4lOBr
	Ndaw==
Received: by 10.50.185.200 with SMTP id fe8mr8144863igc.35.1349704492019;
	Mon, 08 Oct 2012 06:54:52 -0700 (PDT)
Received: from localhost.localdomain ([96.44.93.233])
	by mx.google.com with ESMTPS id ez8sm7460995igb.17.2012.10.08.06.54.49
	(version=SSLv3 cipher=OTHER); Mon, 08 Oct 2012 06:54:50 -0700 (PDT)
Sender: Bruce Ashfield <bruce.ashfield@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon,  8 Oct 2012 09:54:45 -0400
Message-Id: <cover.1349704340.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] linux-yocto-bsps: perf fixes
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
X-List-Received-Date: Mon, 08 Oct 2012 13:54:52 -0000

Richard/Saul,

This is the same as the oe-core equivalent and updates the
reference BSP SRCREVs to pickup two perf changes:

--->--->--->--->

Here are a couple of last minute perf fixes that were reported
recently. One fixes a parallel build issue and the other adapts
perf annotate to the typical yocto userspace.

I did as many build tests as I could here, but the changes are
small and safe.

This should be it for kernel updates for the release, unless
something major pops up.

--->--->--->--->

My same warning applies: I'm heading out for the day, and make
sure to reply to my gmail account if there are issues with this.

cc: Tom Zanussi <tom.zanussi@intel.com>

Cheers,

Bruce

The following changes since commit 000119d8eb8450b6cb8a419869b2097bfd91fdb8:

  linux-yocto/3.4: perf: parallel build and tools fixes (2012-10-08 09:37:27 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/yocto-bsps
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/yocto-bsps

Bruce Ashfield (1):
  linux-yocto-bsps/3.4: perf: parallel build and tools fixes

 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.7.5.4



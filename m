Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D13A4C804D4
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 12:42:25 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so980376yia.35
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 10:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=8q67dpRX3H+zOhsgaZ3E1AGmA8ulAGZ9bPYi+XBAUlo=;
	b=Nlr33cD7N9LvMW/Y0ao+/nZzWzzRqmUyTflrnEMpXfSn4kyXdqPDd4gg1Z7PCG8joo
	YYA7YnrG4qlipt/d/cnKanUEjLWmMsgy0VkYSPhl6B7k2UMzooCRuAiwEHTSJPXsLCWG
	Td0CnblS5LnVUwknVHDYjZrH9t6Y5jglgS5bI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=GKnK6UopQ5875+lNeKhajpF38wOoRG27eqAOUh7n0/G9SlnPLwE8mLm/BVGCCymJnh
	g30l3Yyl0yYUi0jQiwSn4zxo/SKQrhszoTAVqEmEB7e1f9h5515bWIC9NGNFfjbt+i9Y
	cmPL/qoDGChqzXGjLwo/UMiFg4ZS3Mn2PYicU=
Received: by 10.150.61.20 with SMTP id j20mr2143875yba.175.1303926145326;
	Wed, 27 Apr 2011 10:42:25 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id p23sm906613ybk.24.2011.04.27.10.42.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Apr 2011 10:42:25 -0700 (PDT)
Message-Id: <6d456a92057cc255cb248e58e1bf3965173d1a56.1303925958.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1303925958.git.scott.m.rifenbark@intel.com>
References: <cover.1303925958.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 27 Apr 2011 12:30:48 -0500
Date: Wed, 27 Apr 2011 12:42:23 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 2/2] documentation/poky-ref-manual/resources.xml: removed referenct to poky linux site
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
X-List-Received-Date: Wed, 27 Apr 2011 17:42:25 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

There was a reference to the pokylinux.org home site.  I commented this
item out so it does not show in the user documentation.  I was unclear
on whether the reference should have been entirely removed from the manual
or not.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/resources.xml |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/resources.xml b/documentation/poky-ref-manual/resources.xml
index dd4b58d..fbad871 100644
--- a/documentation/poky-ref-manual/resources.xml
+++ b/documentation/poky-ref-manual/resources.xml
@@ -74,10 +74,11 @@
             <ulink url='http://yoctoproject.org'>The Yocto Project website</ulink> - The home site
             for Yocto Project.
         </para></listitem>
-        <listitem><para>
+<!--        <listitem><para>
             <ulink url='http://pokylinux.org'>The Poky website</ulink> - The home site
             for Poky Linux.
         </para></listitem>
+-->
         <listitem><para>
             <ulink url='http://www.openedhand.com/'>OpenedHand</ulink> - The
             original company behind Poky.
-- 
1.7.0.4



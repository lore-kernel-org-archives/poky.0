Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 798E74C80ABD
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:33:14 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so149921ywo.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=nK7Ssu/LvwgUrmV0rn2d7Q3KKohvl5qlwNYPt5Jbei0=;
	b=NoxKxidGR1aCXAXWXRxTx+YZkA3aNEZ8NsHYp7qdIA7Sezm1boc+M6ByNwygUSGfSh
	zlCYsfDHRM+epjkjDeAFLthn0DP7oSW9RNIi8UsAp3MGXxO7yv+PPANt/Rs8JZ7oKpLH
	JS6e7stLlsVcQmTJ8NjqTD1jzU5ErP2IBgQ1I=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=ieb7o4asSIveV4xoBI1J5UuN7+60xYiG3E2AA76OYkBWTv/7HUbKxOxIAqQICTF19K
	HZpWwgi2tkmbew6aobiaXmhVghFzL+ks9m5aRq2xDS28noMCQMt0RVL2xwHA1doKWRlj
	sPhUyH8IM1ipRHDNJ7a5XCl0nB0v7eWhjDuGY=
Received: by 10.150.243.11 with SMTP id q11mr508819ybh.430.1302010394261;
	Tue, 05 Apr 2011 06:33:14 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id b1sm2507607ybn.1.2011.04.05.06.33.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:33:13 -0700 (PDT)
Message-Id: <8b9e1f22ecf580f5f2b1c111ac49d30346919360.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 15:25:15 -0500
Date: Tue, 05 Apr 2011 06:33:13 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 09/16] document/poky-ref-manual/ref-classes.xml: removed <function> tag
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:14 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I got rid of the <function> tag and replaced with <filename>.  We
have too many styles.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-classes.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index d7cfb6e..9082aa7 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -35,7 +35,7 @@
         (empty by default). These are often overridden or extended by other classes 
         such as <filename>autotools.bbclass</filename> or 
         <filename>package.bbclass</filename>. The class also contains some commonly
-        used functions such as <function>oe_runmake</function>.
+        used functions such as <variable>oe_runmake</variable>.
     </para>
 </section>
 
-- 
1.7.0.4



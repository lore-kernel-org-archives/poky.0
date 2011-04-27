Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDA444C8026D
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 12:42:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so974931gya.35
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 10:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=BAOBgfkA3CCiuiAHKg60ziTANLZ/LwoWZN7qGGmVOGA=;
	b=trlN8AD0681VuVX6qOxd7YeI8BNVJ9oehPQmbT7augm/RzJL5gfhh1xXDPtBhdJ/9E
	pOKorQqxEbHvSW3KICk/WdjCZXyGCNDf8vSPqOiZo1lZh6duBCJH3rqHc4AKYyopXgDt
	Vu1yFL84oVJAN4OV9a9ZvxSzWIq8NRMtiu0nQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=rcJ9z3DhnTZLgbYerCRl5d40442gKJjWUuJSWmVdBvFH50CjmA76z/wWo5Day7xFSM
	PcTXvbk0Uyp4ktqWfgRptabJAxYLxfH8tMiu7NWBnr4hdJ0f7iPuUUCoCCftevHRAIof
	s4//3aN4/hUnyIxDH3uC7Q6K8y1GIWhANSRC0=
Received: by 10.150.118.41 with SMTP id q41mr2163231ybc.314.1303926143468;
	Wed, 27 Apr 2011 10:42:23 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id p41sm908068ybk.14.2011.04.27.10.42.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Apr 2011 10:42:23 -0700 (PDT)
Message-Id: <850deb778332271b0cf606f853259a5bf155b53a.1303925958.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1303925958.git.scott.m.rifenbark@intel.com>
References: <cover.1303925958.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 27 Apr 2011 12:23:49 -0500
Date: Wed, 27 Apr 2011 12:42:21 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/2] documentation/poky-ref-manual/extendpoky.xml: removed pokylinux.org link
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
X-List-Received-Date: Wed, 27 Apr 2011 17:42:24 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

There was a link whose URL was http://autobuilder.pokylinux.org:8010.
I changed the link to use yoctoproject.org.  Note that this URL
was not visible to the reader in the manual.  However, it was there
in the DocBook code.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/extendpoky.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/extendpoky.xml b/documentation/poky-ref-manual/extendpoky.xml
index 0b1a223..79cb0c4 100644
--- a/documentation/poky-ref-manual/extendpoky.xml
+++ b/documentation/poky-ref-manual/extendpoky.xml
@@ -754,7 +754,7 @@ BBFILE_PRIORITY_emenlow = "6"
                 Experience shows that buildbot is a good fit for this role. 
                 What works well is to configure buildbot to make two types of builds:
                 incremental and full (from scratch).  
-                See <ulink url='http://autobuilder.pokylinux.org:8010'>poky autobuilder</ulink>
+                See <ulink url='http://autobuilder.yoctoproject.org:8010'>poky autobuilder</ulink>
                 for an example implementation that uses buildbot.
             </para>
             <para>
-- 
1.7.0.4



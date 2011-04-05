Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B1764C80B73
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:23:26 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so350153ywo.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=wq9Q2DoirdLXL5AY1FWxtSQfF3DyPf38CdSccDQk4EQ=;
	b=cACHNObD7bS4cjGAN3AbaTGgEQVUQ+3KrdeSblvxAEt5DCsPS/SVZoWCLlEk40OP5Y
	DTWo9meyeLIQK28Oyr+MO8raSMdOV6PBRnwYqzcS0qz4G0WTL3+07hocEV/xkDUJLyad
	lKD/rodBploeEtGKanWEjJVAxmVZDDL/FNLxk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=HpYuO8fLcteEbc0ppKuLyj81hjmPiPyXrbcQpR2prgBDLenwmOQThSFApFVw/Tj8Iz
	3WEIyvSAk5CUoD0KPfUVLf4mds5CMvPSFw+gv0LSK4Lk6hXTNKgsug4R66mCsgBY2OvD
	WI6X+PM/JFtMqSPCtxBVkp7LWPLciPTOCrZ8U=
Received: by 10.150.213.9 with SMTP id l9mr890305ybg.37.1302027805703;
	Tue, 05 Apr 2011 11:23:25 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id q34sm229796ybk.3.2011.04.05.11.23.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:23:25 -0700 (PDT)
Message-Id: <2c1b2cb71752a511714ead6bc01b1e937f606bb3.1302026025.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302026025.git.scott.m.rifenbark@intel.com>
References: <cover.1302026025.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 17:43:20 -0500
Date: Tue, 05 Apr 2011 13:23:22 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/2] documentation/adt-manual/adt-eclipse.xml: Updated repo URL for Eclipse Plug-in
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
X-List-Received-Date: Tue, 05 Apr 2011 18:23:26 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Updated the URL that points to the Yocto Eclipse Plug-in to
http://www.yoctoproject.org/downloads/eclipse-plugin/1.0.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-eclipse.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/adt-manual/adt-eclipse.xml b/documentation/adt-manual/adt-eclipse.xml
index 7c0ee06..3e1596d 100644
--- a/documentation/adt-manual/adt-eclipse.xml
+++ b/documentation/adt-manual/adt-eclipse.xml
@@ -103,7 +103,7 @@
                 Expand the items under “Linux Tools” and select “Autotools support for 
                 CDT (Incubation)”.</para></listitem>
                 <listitem><para><emphasis>Yocto Plug-in</emphasis> – 
-                <ulink url='http://www.yoctoproject.org/downloads/eclipse-plugin/'></ulink>:
+                <ulink url='http://www.yoctoproject.org/downloads/eclipse-plugin/1.0'></ulink>:
                 Check the box next to “Development tools &amp; SDKs for Yocto Linux” 
                 to select all the items.</para></listitem>
             </orderedlist>
-- 
1.7.0.4



Return-Path: <srifenbark@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C6D54C80AC8
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 17:48:28 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj22 with SMTP id 22so1550340gwj.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 15:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=wq9Q2DoirdLXL5AY1FWxtSQfF3DyPf38CdSccDQk4EQ=;
	b=WwiSIa8RsVMP/6yd0VEZGTrHzkdnw65hCtTEnnlLz1YEvKPqsiH2o80NhTIAD7SUIw
	Npep/dVtB5rwHq/ixZpwcN7QDrelZ6IbVmFsZg9ZU+pIW5VZjPf4WXn1rgycaoysXqG8
	r9iVUZbb/R+OECGHw7IcaBGHxgA0TrO5i9r1g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=GGbr2dHwAyzvtXtS7fk2kNVj3Vvp39SuaVPLGo/QcsLClR7YAW7aIfHjuE7GLIV3fm
	DegWtesQJPW/Pra/+LyEfcKFbdRT0pholqj1BkVb+xtSkUSJ8EtDgQmvZTM5LVMUpvII
	kqQ6L6Wgru6v2HY0eV3+3bKhIpKavYKvoOKto=
Received: by 10.236.185.198 with SMTP id u46mr136927yhm.55.1301611708207;
	Thu, 31 Mar 2011 15:48:28 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id h43sm807259yhm.22.2011.03.31.15.48.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 15:48:27 -0700 (PDT)
Message-Id: <2c1b2cb71752a511714ead6bc01b1e937f606bb3.1301611580.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301611580.git.scott.m.rifenbark@intel.com>
References: <cover.1301611580.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 17:43:20 -0500
Date: Thu, 31 Mar 2011 17:48:21 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/adt-manual/adt-eclipse.xml: Updated repo URL for Eclipse Plug-in
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
X-List-Received-Date: Thu, 31 Mar 2011 22:48:28 -0000

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



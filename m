Return-Path: <srifenbark@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id A8A4F4C80FD7
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 07:44:16 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj22 with SMTP id 22so1520817gwj.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=wq9Q2DoirdLXL5AY1FWxtSQfF3DyPf38CdSccDQk4EQ=;
	b=aFUe3qife45ZzORIhlnomfqwoo2NLyRqz7YyfGzt62Ys4xwUBfLhvyEN5Md6rB02R8
	Vx05VkcNTKiAHJDDisyHzr1lKgDPIR0us3z1YS1MkwRbNf6eA2JFP/95+Df2E6eoacn4
	MMSVdvDWs0Ayx1ZItO5LNGQVocKViUDJdEzOI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=xL0ATTcjePOqF6AT+xjKTySsaWGq+GJztTN+mn4i8SqJj4NCg/LUn6rTsdUc768E7v
	ILyvOSyauOLovRe/TI215cslLSXAWcp0YVSeis1WEx3M60NjFhhsYHjqlqd2tZjeZGf/
	FaDuKrBxwHtVr2igd7mmqSSsQLsdXGafiMK9c=
Received: by 10.236.155.74 with SMTP id i50mr685417yhk.453.1302871456456;
	Fri, 15 Apr 2011 05:44:16 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id g23sm1201735yhc.35.2011.04.15.05.44.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Apr 2011 05:44:15 -0700 (PDT)
Message-Id: <2c1b2cb71752a511714ead6bc01b1e937f606bb3.1302871028.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302871028.git.scott.m.rifenbark@intel.com>
References: <cover.1302871028.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 17:43:20 -0500
Date: Fri, 15 Apr 2011 05:44:15 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/5] documentation/adt-manual/adt-eclipse.xml: Updated repo URL for Eclipse Plug-in
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
X-List-Received-Date: Fri, 15 Apr 2011 12:44:16 -0000

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



Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BDB54C81015
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 07:44:22 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yi0-f48.google.com with SMTP id 28so1520766yia.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=gbEqpqrDh5c5+CSYHE9BcC1uk0iK6BzIg8iE8bP56dc=;
	b=mkSnSImcCaWXUnLAcNnNESrFN3pPLDoizzIeq8pdd4sicBbShgA7CtIbBC5TNZbAuJ
	IEj4k0neT/uxDBzu0CjNdVhi8xGqto7lUkJadrL842ndPQV4OXR2I8kayNj1jWiaom/G
	iW3XnXebhDr7ekS0y3xfKJjINl8LgQVA5z8lY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=M6huEdYwJWNbnpenzryffvb9MpSte65ywgyUx4nPV7T75mjP9uTmSG/ndHdzMeIKgM
	6svIegS7/fJCgudfDHZDpwWgldh5D2dSpryHM9cL0m/eVPTEj3mCIufV3Kym74GK+CrH
	mqhf7gqR9SnBfvSrD0C0+4tDWpVcb+9CuQG9I=
Received: by 10.151.2.2 with SMTP id e2mr2737605ybi.27.1302871462233;
	Fri, 15 Apr 2011 05:44:22 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id m12sm3075795ybn.27.2011.04.15.05.44.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Apr 2011 05:44:21 -0700 (PDT)
Message-Id: <68add77baac1c1b6c80be0c9a5bf1d2e988a4174.1302871028.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302871028.git.scott.m.rifenbark@intel.com>
References: <cover.1302871028.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 15 Apr 2011 07:33:49 -0500
Date: Fri, 15 Apr 2011 05:44:21 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 5/5] documentation/adt-manual/adt-eclipse.xml: Fixed URL with pokylinux.org
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
X-List-Received-Date: Fri, 15 Apr 2011 12:44:22 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Substituted 'pokylinux.org' with 'yoctoproject.org' in an URL
to locate the OProfile viewer and server.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-eclipse.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/adt-manual/adt-eclipse.xml b/documentation/adt-manual/adt-eclipse.xml
index a81929b..ee305fe 100644
--- a/documentation/adt-manual/adt-eclipse.xml
+++ b/documentation/adt-manual/adt-eclipse.xml
@@ -395,7 +395,7 @@
             oprofile-server must be installed on the remote target, respectively, in order 
             to use.  
             You can locate both the viewer and server from 
-            <ulink url='http://git.pokylinux.org/cgit/cgit.cgi/oprofileui/'></ulink>.  
+            <ulink url='http://git.yoctoproject.org/cgit/cgit.cgi/oprofileui/'></ulink>.  
             You need to compile and install the oprofile-viewer from the source code 
             on your local host machine.  
             The oprofile-server is installed by default in the image.</para></listitem>
-- 
1.7.0.4



Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 361204C80A70
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:32:46 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 7so148925gxk.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=GYwZDgulXW68tJSGnpe1J99vj7kVVVvN7Dn2jtw89j4=;
	b=SiL7yC4pWzZJjfMOh5K1VYbF3hjEWkH3OCOS5V1z2/+yafSDz3HcOG1QdMgSReRrQn
	GVUBW1ncCzV9h6l+GdRgB87rbUI2sQ8ETuOYvqbyxsjFZP0d/y4kJFodrMZ6TwJQLox0
	wzhmnNPdmHuCM/UpU3t06hJC7jeo6hrmJ1hlM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=sGHtImt+NpQt0Thh/h/mFqY7GtoXQI/HeHuKENRRiQyWQleUClcNrCY1fhViD2wUA/
	PMObuSnKOZRuMX6doj9HAzfzNFqnrxJD8fSMQlp3HIRt+FWdOpH3ItqzKqQQRJEtFL2u
	R+ANDkY8NpYtMvoDMllmIOjO4rfk+AQr2tSl0=
Received: by 10.91.132.1 with SMTP id j1mr527129agn.186.1302010366041;
	Tue, 05 Apr 2011 06:32:46 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id d20sm6521346ang.43.2011.04.05.06.32.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:32:45 -0700 (PDT)
Message-Id: <bce848dc135ac702c8950186ed0e8b36a01e2e17.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 20:32:25 -0500
Date: Tue, 05 Apr 2011 06:32:45 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 01/16] documentation/poky-ref-manual/poky-ref-manual.xml: Updated rev-history table
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
X-List-Received-Date: Tue, 05 Apr 2011 13:32:46 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Updated the revision history table for the manual.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/poky-ref-manual.xml |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/poky-ref-manual/poky-ref-manual.xml b/documentation/poky-ref-manual/poky-ref-manual.xml
index ed720c4..874d9a1 100644
--- a/documentation/poky-ref-manual/poky-ref-manual.xml
+++ b/documentation/poky-ref-manual/poky-ref-manual.xml
@@ -48,9 +48,9 @@
                 <revremark>Poky Master Documentation</revremark>
             </revision>
             <revision>
-                <revnumber>1.0</revnumber>
+                <revnumber>5.0+git</revnumber>
                 <date>6 April 2011</date>
-                <revremark>Poky documentation releasing with the Yocto Project 1.0 Release.</revremark>
+                <revremark>Released with Yocto Project 1.0 (Bernard 5.0).</revremark>
             </revision>
         </revhistory>
 
-- 
1.7.0.4



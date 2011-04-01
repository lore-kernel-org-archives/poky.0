Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0ED0B4C80ACE
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 20:39:47 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so1606181yia.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 18:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=GYwZDgulXW68tJSGnpe1J99vj7kVVVvN7Dn2jtw89j4=;
	b=xxJJYwmGdegFPmofLEZGJb9+vjvOBjIAeD4FxFIe/BCLTf0fX31W+kBIC0jlmDuFL9
	4+fDMb3QbUzyjapsQo8mr1TaFoPa7pHBITqbwOKd7C6rmzOlRL7u8ABo/OYvzozT4MlO
	I8uK+SxiHrNeRpuWQDcccYyi8/HGYvzPk1Nk8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=EbP09RUAwrlNdeRXFCHZ9P/uRt1/Fl/f/wgklE2+JNIgJ5fZcd45DmOrtf57NwRoL/
	N+IqIzRTOjMm4+i5Y3zIGL0GUgrfN3vIWN6o9giEwOHtNOns8z3VuTZgBLQw7veZ0GjV
	WAMcDb52JTu7300PWTurI+xC7+ynW5OVLt7v0=
Received: by 10.150.172.10 with SMTP id u10mr2058641ybe.101.1301621986830;
	Thu, 31 Mar 2011 18:39:46 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id m12sm120762ybn.27.2011.03.31.18.39.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 18:39:46 -0700 (PDT)
Message-Id: <d1aaa6d4fd503de014d8e327247d0dff546b7a3e.1301621769.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301621769.git.scott.m.rifenbark@intel.com>
References: <cover.1301621769.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 20:32:25 -0500
Date: Thu, 31 Mar 2011 20:39:41 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/2] documentation/poky-ref-manual/poky-ref-manual.xml: Updated rev-history table
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
X-List-Received-Date: Fri, 01 Apr 2011 01:39:47 -0000

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



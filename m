Return-Path: <srifenbark@gmail.com>
Received: from mail-gw0-f48.google.com (unknown [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 746174C80A46
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:33:18 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gw0-f48.google.com with SMTP id 22so148292gwj.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=DCyjM0eecGtevSkWuEiFQEvNnRr1uenXEJc+ZDJt/60=;
	b=WKCPd3YYr33nLN2cCALNG2OdkA4KhO0iK1alYdaMiCziRkBJpbrROLzj5tpfn1yfNG
	0MMG0BNgOLRAF0z7SNq5Aab2ry0SUbjUa1vLOY/gyFdMGHP2gASdnOCeX8u+sQe4YL0T
	XJ9bLnhrJCv9UuRkr4eP6XAg1vpjCp+MXCFXY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=KHNcu8YCtekxwHQJHKwEql/5PYCPF+vn51rWdJDudymyrFrj3FfWJaG5GKNmrsNAv6
	vz21kPx1+Qrti1A/19krQD1T3uKRMrT/DGr7XN/Mls2M2hpQB14pXBxKyLYc2S8hWHYn
	oZzAoKWUanekCfwwDGNwbquT1JSUcMhAdGQBs=
Received: by 10.236.182.194 with SMTP id o42mr11465956yhm.328.1302010398255;
	Tue, 05 Apr 2011 06:33:18 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id 33sm616769yhl.84.2011.04.05.06.33.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:33:17 -0700 (PDT)
Message-Id: <af3f820bc5fc3cd3e24eca2a6043efdc2be1b59f.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 16:08:48 -0500
Date: Tue, 05 Apr 2011 06:33:17 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 10/16] documentation/poky-ref-manual/ref-classes.xml: Fix to <filename> tag
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:18 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Had to fix the <variable> tag by replacing it with <filename>.
Previous commit didn't work so this is fixing it.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-classes.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index 9082aa7..0cb2fce 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -35,7 +35,7 @@
         (empty by default). These are often overridden or extended by other classes 
         such as <filename>autotools.bbclass</filename> or 
         <filename>package.bbclass</filename>. The class also contains some commonly
-        used functions such as <variable>oe_runmake</variable>.
+        used functions such as <filename>oe_runmake</filename>.
     </para>
 </section>
 
-- 
1.7.0.4



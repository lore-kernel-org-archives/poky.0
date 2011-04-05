Return-Path: <srifenbark@gmail.com>
Received: from mail-gw0-f48.google.com (unknown [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4F5D84C80AB7
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:33:35 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gw0-f48.google.com with SMTP id 22so148292gwj.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=URcFrDsXHuWFhqnfJrGTIRtcSO8nNy7xHWszk9BS/ys=;
	b=wn6q3re4SDBinZBdG6caB4pFhQOmemY/7mWSPBhxPVN3WcZiwLEYQHll3n+2m3VE/l
	xQe6a8mM4YBPT/Ia9xVU3idshinBkgt/wqUz0uxGE0mZX2FClqV3qZunllnGjYy8Xa6m
	MeWjqqAnHq/2CU2dDFZFsKlQSY/ypEhiWA1Ec=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=ExcaD33zlXa2/XFOnJgrY0NnEDibMZjN1bx74Wwn7u6lbP7dgL/CCw4Y4hUlnNrhLL
	dUx3jgVlfi99LLkN2v1LsdhPv8Wp7z7qlv6tyEQXhhCD2zpLyUiZnWt6WBWXK1V9ctAH
	UXewL1bu4otimct5gOWw+F20XJAYt5QKloLF0=
Received: by 10.236.77.199 with SMTP id d47mr9355219yhe.144.1302010415231;
	Tue, 05 Apr 2011 06:33:35 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id 8sm2835340yhx.8.2011.04.05.06.33.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:33:33 -0700 (PDT)
Message-Id: <725854f9c335ee3b0383d8eebcabc949a58d2a3d.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 18:12:25 -0500
Date: Tue, 05 Apr 2011 06:33:33 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 15/16] documentation/poky-ref-manual/ref-bitbake.xml: BitBake parsing section update
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:35 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

In section B.1 (Parsing) it said that BBFILES variable by default
specified the direcotyr 'meta/packages/' as the place to look for .bb
files.  This directory is invalid and needed to be changed to
'meta/packages/'.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index 4bea1e4..d870387 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -80,10 +80,8 @@
             is set, usually in
             <filename>local.conf</filename>, and defines the list of places to search for 
             <filename class="extension">.bb</filename> files. 
-            By default, the BBFILES variable specifies the <filename class="directory">meta/packages/
-            </filename> directory within Poky, but other directories such as
-            <filename class="directory">meta-extras/</filename> can be included 
-            too. 
+            By default, the BBFILES variable specifies the <filename class="directory">meta/recipes-*/
+            </filename> directory within Poky. 
             Adding extra content to BBFILES is best achieved through the use of BitBake
             <link linkend='usingpoky-changes-layers'>"layers"</link>.
         </para>
-- 
1.7.0.4



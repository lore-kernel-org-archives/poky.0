Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA3BF4C80AF2
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:21:21 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 7so347991gxk.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=8OvjefbDXUndGsfDK1eUTbPGCFZ840tVw6gkRQ/fzg0=;
	b=llxDvnT18g2Jq4JNhcvriqwKDPtiMlBzxjiVat1UVsZTAh0VmysC2f3JYNCuTFqG91
	RuttgI/rgnrvB9vF3U4rOl6F0g3Ll4sSHf0vk+TQMcEoF44X7wAyzZxi5OiB1QO/6n0j
	1Cla/ufDpTJkOODT7BCTdOBjlreuJUcS46mEM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=lbnHgCx/X//83szcb6a6ymhqtCDcmvmilTD5spuN+dO15t13ZwsG2/4dLzaRBNiya1
	yk1srhmeloMc11NvKlItC/LQr3RukVusBH/+Y7wWeiVDdQn1CwiZAsCoEp3R0jwl95cE
	NKjtzaNMercI/T6Vc3wBTf8r/IGxazCKu7HjM=
Received: by 10.236.181.164 with SMTP id l24mr9916428yhm.101.1302027681539;
	Tue, 05 Apr 2011 11:21:21 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id x69sm2957751yhn.41.2011.04.05.11.21.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:21:20 -0700 (PDT)
Message-Id: <4c7f2123db46a5fb674748e7cc8061bfae0aac5d.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 17:50:26 -0500
Date: Tue, 05 Apr 2011 13:21:18 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 12/15] documentation/poky-ref-manual/ref-variables.xml: added SSTATE_DIR variable
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
X-List-Received-Date: Tue, 05 Apr 2011 18:21:21 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Due to some changes in the file structure for 1.0 there is a new directory
for the shared state.  The variable SSTATE_DIR can be used to point to
the directory.  I added this variable to the list of documented variables.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-variables.xml |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index da57e2c..2e3dbb6 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -766,6 +766,12 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-SSTATE_DIR'><glossterm>SSTATE_DIR</glossterm>
+            <glossdef>
+                <para>Directory for the shared state.</para>
+            </glossdef>
+
+        </glossentry>
         <glossentry id='var-SHELLCMDS'><glossterm>SHELLCMDS</glossterm>
             <glossdef>
                 <para>
-- 
1.7.0.4



Return-Path: <srifenbark@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 678624C80B73
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:33:31 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yx0-f176.google.com with SMTP id 5so148249yxd.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=8OvjefbDXUndGsfDK1eUTbPGCFZ840tVw6gkRQ/fzg0=;
	b=WHDDkKV9DIh5eZ1/EAiZ8Gw31KJIA5myCZETOmugKWXfD5iHZXSDnlCcMTzCrNHZWR
	Qk+VV6ZoWWIQvFsApkaUr4YhS9xqnzJqAZVguFG7rskbIxMVk9CFIV/B+Vpl0n035EkQ
	lQ1Kw8j4g3wyxC3NZaftay7putOcT8FpqlPbQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=Eh7KGIokVwS/asHZJ+NggR78/FqCdJRQ5BxWrOk+sJQEodedbSTkPBv6ZLeaGYICp5
	D93PlJTpLkOU0oZd6jUzsZ49XT84pQYMGVId5aqQ4D0LTegfEhEO+mNdx+zAI58oiVOC
	Tfu5HDYek8zoaJbx6gqDeF1Lakw7EcKaQJdMA=
Received: by 10.100.135.11 with SMTP id i11mr2687921and.130.1302010410987;
	Tue, 05 Apr 2011 06:33:30 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id 23sm6524885ano.7.2011.04.05.06.33.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:33:29 -0700 (PDT)
Message-Id: <4c52c848dcd67695a19154ffa17fe2b45fb3b447.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 17:50:26 -0500
Date: Tue, 05 Apr 2011 06:33:29 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 14/16] documentation/poky-ref-manual/ref-variables.xml: added SSTATE_DIR variable
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:31 -0000

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



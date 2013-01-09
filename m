Return-Path: <eu@felipetonello.com>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ACBAE00559
	for <poky@yoctoproject.org>; Tue,  8 Jan 2013 16:36:25 -0800 (PST)
Received: by mail-ob0-f178.google.com with SMTP id eh20so1614618obb.37
	for <poky@yoctoproject.org>; Tue, 08 Jan 2013 16:36:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=4L4EfuE8Ew4mXL+qwo1LiBr6ZjoVgBYxNOnSinb8iYM=;
	b=Vjasag5s7VS49yG7mqzmIS6OdYS9PbURwi8vr2FZgcsKz3gLwDg+bxvV6yptc5Xz2h
	93IBN4C+85v4v15bDpunrjGl7TDb3lbeJ2y/o3fgvhYFILR86vEo2/gMHrPF/XyeuDPu
	ToqhbX+fNrTTx3S0fKT7i6TlnzDG6K3AWVtT9FSpjo4B16cBe+0Qa7JPf+hLxws16ecw
	MSM+DRk5AGYs8NoNbUOQZC/SHZ+l1MUNDEh/OAN2TFGhvqJALYYVEeo5UfLMp4DuNkoy
	/Jzodu7FRBTBF7iLmdrLAtDjbsH5YZOo8vaWelThSu/I9PC4EumGU+BGMHMLJFfW9WbZ
	jIhg==
X-Received: by 10.182.130.38 with SMTP id ob6mr47374212obb.100.1357691784728; 
	Tue, 08 Jan 2013 16:36:24 -0800 (PST)
Received: from mlabs-ftonello.masimolabs.com
	(wsip-70-183-20-162.oc.oc.cox.net. [70.183.20.162])
	by mx.google.com with ESMTPS id hs6sm2528906obc.7.2013.01.08.16.36.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 08 Jan 2013 16:36:23 -0800 (PST)
From: eu@felipetonello.com
To: poky@yoctoproject.org
Date: Tue,  8 Jan 2013 16:37:02 -0800
Message-Id: <1357691823-8155-1-git-send-email-eu@felipetonello.com>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQlvwE5A2gBbxML8BahxhdquK0R9H+PLGJEWb45fmTM5/ckTofNt2cjb+k0IecjAu2rJ86Xq
Cc: "Felipe F. Tonello" <ftonello@cercacor.com>
Subject: [PATCH] connman: fixed init script, so it can run with nfs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Jan 2013 00:36:25 -0000

From: "Felipe F. Tonello" <ftonello@cercacor.com>

Adding -I to the arguments, connmand will ignore the eth interface, so if you are
using nfs it will not be disconnected.

FIXME: it might not work if using more than one eth interface. But it's better
than not using connman with nfs at all.

Signed-off-by: Felipe F. Tonello <ftonello@cercacor.com>
---
 meta/recipes-connectivity/connman/connman/connman |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-connectivity/connman/connman/connman b/meta/recipes-connectivity/connman/connman/connman
index 4a0017f..e90925e 100644
--- a/meta/recipes-connectivity/connman/connman/connman
+++ b/meta/recipes-connectivity/connman/connman/connman
@@ -26,11 +26,14 @@ while read dev mtpt fstype rest; do
 	fi
 done
 
+ethn=`ifconfig | grep eth | sed -e "s/\(eth[0-9]\)\(.*\)/\1/"`
+
 do_start() {
 	EXTRA_PARAM=""
-	if test $nfsroot -eq 0 ; then
-		$DAEMON $EXTRA_PARAM
+	if test $nfsroot -eq 1 ; then
+		EXTRA_PARAM="-I $ethn"
 	fi
+	$DAEMON $EXTRA_PARAM
 }
 
 do_stop() {
-- 
1.7.9.5



Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 729E24C80A7C
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 14:49:54 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 24D1816602EA; Mon, 25 Apr 2011 13:49:51 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B631116602D7;
	Mon, 25 Apr 2011 13:49:50 -0600 (MDT)
Message-ID: <4DB5D05E.1040409@mlbassoc.com>
Date: Mon, 25 Apr 2011 13:49:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: [PATCH] Need override for TEMPLATECONF
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
X-List-Received-Date: Mon, 25 Apr 2011 19:49:54 -0000
X-Groupsio-MsgNum: 5524
Content-Type: multipart/mixed; boundary="------------050700040806040600070501"

--------------050700040806040600070501
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The recently upgraded scripts used to setup the build environment
have made it so that a distribution/layer can no longer provide
the build templates.  This patch restores that possibility.

Note: my patch that created this functionality allowed for the
distribution/layers to provide XXX/conf/local.conf as well as
XXX/conf/local.conf.sample  Any comments on why that was removed?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------050700040806040600070501
Content-Type: text/x-patch;
 name="0001-oe-setup-builddir-Allow-template-directory-to-be-ove.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-oe-setup-builddir-Allow-template-directory-to-be-ove.pa";
 filename*1="tch"

From e3370ac5f4e902dd517cb196cfe416c96d309210 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 25 Apr 2011 13:43:39 -0600
Subject: [PATCH] oe-setup-builddir: Allow template directory to be overridden

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 scripts/oe-setup-builddir |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
index 58c9ad6..5b20488 100755
--- a/scripts/oe-setup-builddir
+++ b/scripts/oe-setup-builddir
@@ -37,7 +37,7 @@ fi
 
 cd "$BUILDDIR"
 
-TEMPLATECONF=meta-yocto/conf
+TEMPLATECONF=${TEMPLATECONF:-meta-yocto/conf}
 
 # 
 # $TEMPLATECONF can point to a directory for the template local.conf & bblayers.conf
-- 
1.7.3.4


--------------050700040806040600070501--

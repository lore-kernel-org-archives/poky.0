Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46ED64C800B6
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 16:17:27 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B557816603B3; Wed, 13 Apr 2011 15:17:26 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1BF6E16602F1;
	Wed, 13 Apr 2011 15:17:24 -0600 (MDT)
Message-ID: <4DA612E3.3010007@mlbassoc.com>
Date: Wed, 13 Apr 2011 15:17:23 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: [PATCH] setuptools: Make options for setup.py more flexible
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
X-List-Received-Date: Wed, 13 Apr 2011 21:17:27 -0000
X-Groupsio-MsgNum: 5264
Content-Type: multipart/mixed; boundary="------------090704000607090006090809"

--------------090704000607090006090809
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The setuptools class uses hard-wired options for 'setup.py' during
the install step.  In particular, not all versions of setup.py
support the "--single-version-externally-managed" option.  This
patch allows for a recipe to easily override these options, while
leaving the majority (important) setup options intact.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------090704000607090006090809
Content-Type: text/x-patch;
 name="0001-Make-options-for-setup.py-more-flexible.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Make-options-for-setup.py-more-flexible.patch"

From 0afbe6b9477c207e37009c8ef5aa47b3438640a9 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 13 Apr 2011 15:12:57 -0600
Subject: [PATCH] setuptools: Make options for setup.py more flexible

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/classes/setuptools.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/setuptools.bbclass b/meta/classes/setuptools.bbclass
index ced9509..cf1c224 100644
--- a/meta/classes/setuptools.bbclass
+++ b/meta/classes/setuptools.bbclass
@@ -2,7 +2,8 @@ inherit distutils
 
 DEPENDS += "python-setuptools-native"
 
+DISTUTILS_INSTALL_OPTS ?= "--single-version-externally-managed "
 DISTUTILS_INSTALL_ARGS = "--root=${D} \
-    --single-version-externally-managed \
+    ${DISTUTILS_INSTALL_OPTS} \
     --prefix=${prefix} \
     --install-data=${datadir}"
-- 
1.7.3.4


--------------090704000607090006090809--

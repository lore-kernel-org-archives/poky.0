Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9435F4C810AE
	for <poky@lists.pokylinux.org>; Wed,  8 Dec 2010 07:12:28 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 11634166020A; Wed,  8 Dec 2010 06:12:13 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4B4921660209;
	Wed,  8 Dec 2010 06:11:52 -0700 (MST)
Message-ID: <4CFF8418.6060901@mlbassoc.com>
Date: Wed, 08 Dec 2010 06:11:52 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101103 Fedora/1.0-0.33.b2pre.fc13
	Thunderbird/3.1.6
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: [PATCH] Making using layers even friendlier
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
X-List-Received-Date: Wed, 08 Dec 2010 13:12:28 -0000
X-Groupsio-MsgNum: 1072
Content-Type: multipart/mixed; boundary="------------050208010602020107040604"

--------------050208010602020107040604
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm building poky for a number of unique platforms which I
want to keep logically separate.  By using the new BBLAYERS
support, this is working out quite well.

However, I find it cumbersome to start a new build for a given
platform.  This is because conf/local.conf and conf/bblayers.conf
need to be tailored for that platform.  In particular, the file
conf/bblayers.conf needs to be modified to incorporate the
meta layers used by the given platform.

By incorporating the attached patch, this can now be done easily
on the initial build tree setup.  Just run something like this:
   % POKYCONF=meta-board1/conf . <POKYBASE>/poky-init-build-env my_build_tree
As the build tree is set up, the files from <POKYBASE>/meta-board1/conf
will be used to populate the <BUILD>/conf directory.  These can then
be adjusted as necessary.  The patch allows for the provided config
files to be either <POKYBASE> relative or absolute, allowing even
more flexibility.

Comments?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------050208010602020107040604
Content-Type: text/plain;
 name="0001-Allow-the-environment-variable-POKYCONF-to-provide-t.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Allow-the-environment-variable-POKYCONF-to-provide-t.pa";
 filename*1="tch"

From 2323932145370e2fea2a427c3c493d04b043981b Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 8 Dec 2010 05:59:09 -0700
Subject: [PATCH] Allow the environment variable POKYCONF to provide the basis for the working "conf" directory.

By using the POKYCONF variable, a meta layer can provide the basic setup for files to
be used during a build.  This is similar to the default values stored in the main meta
tree, .../meta/conf/local.conf.sample, etc

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 scripts/poky-env-internal |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/scripts/poky-env-internal b/scripts/poky-env-internal
index 5b206ed..c8b39c9 100755
--- a/scripts/poky-env-internal
+++ b/scripts/poky-env-internal
@@ -58,6 +58,24 @@ if ! (test -d "$BITBAKEDIR" && test -d "$BUILDDIR"); then
     return
 fi
 
+# 
+# $POKYCONF can point to a directory for the template local.conf & bblayers.conf
+#
+if [ "x" != "x$POKYCONF" ]; then
+    if ! (test -d "$POKYCONF"); then
+	# Allow POKYCONF=meta-xyz/conf as a shortcut
+	if [ -d "$OEROOT/$POKYCONF" ]; then
+	    POKYCONF="$OEROOT/$POKYCONF"
+	fi
+	if ! (test -d "$POKYCONF"); then
+	    echo >&2 "Error: '$POKYCONF' must be a directory containing local.conf & bblayers.conf"
+	    return
+	fi
+    fi
+    POKYLAYERCONF="$POKYCONF/bblayers.conf"
+    POKYLOCALCONF="$POKYCONF/local.conf"
+fi
+
 if [ "x" = "x$POKYLOCALCONF" ]; then
     POKYLOCALCONF="$OEROOT/meta/conf/local.conf.sample"
 fi
-- 
1.7.2.3


--------------050208010602020107040604--

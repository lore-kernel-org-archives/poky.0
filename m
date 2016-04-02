Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60B14E007B5; Sat,  2 Apr 2016 09:12:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF3AE00527
	for <poky@yoctoproject.org>; Sat,  2 Apr 2016 09:12:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u32GCVSl025471
	for <poky@yoctoproject.org>; Sat, 2 Apr 2016 17:12:31 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id sx1i__yLpXOs for <poky@yoctoproject.org>;
	Sat,  2 Apr 2016 17:12:31 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u32GCS23025466
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@yoctoproject.org>; Sat, 2 Apr 2016 17:12:29 +0100
Message-ID: <1459613548.7348.127.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Sat, 02 Apr 2016 17:12:28 +0100
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: [PATCH] poky: Exclude DATE from DISTRO/SDK_VERSION checksums
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
X-List-Received-Date: Sat, 02 Apr 2016 16:12:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

DATE is in HASHCONFIG_WHITELIST which means the server does not reparse when
DATE changes. If DISTRO_VERSION was used somewhere and contained DATE, the
value *would* change however, meaning the server and worker checksums
could end up differing.

We therefore exclude DATE from the checksums, making everything consistent.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 7627abe..f166ac4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -11,6 +11,9 @@ TARGET_VENDOR = "-poky"
 
 LOCALCONF_VERSION = "1"
 
+DISTRO_VERSION[vardepsexclude] = "DATE"
+SDK_VERSION[vardepsexclude] = "DATE"
+
 # Override these in poky based distros
 POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland"
 POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"




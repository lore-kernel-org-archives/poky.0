Return-Path: <SRS0=QRftnN=6M=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout05.eigbox.net (bosmailout05.eigbox.net [66.96.184.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C0DAE0030A
	for <poky@yoctoproject.org>; Wed, 30 Nov 2011 08:54:28 -0800 (PST)
Received: from bosmailscan04.eigbox.net ([10.20.15.4])
	by bosmailout05.eigbox.net with esmtp (Exim) id 1RVnQR-0001iY-0o
	for poky@yoctoproject.org; Wed, 30 Nov 2011 11:54:27 -0500
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan04.eigbox.net with esmtp (Exim) id 1RVnQQ-00055j-CM
	for poky@yoctoproject.org; Wed, 30 Nov 2011 11:54:26 -0500
Received: from bosauthsmtp05.eigbox.net ([10.20.18.5])
	by bosimpout02.eigbox.net with NO UCE
	id 3UuS1i00A06Zqne01UuS9n; Wed, 30 Nov 2011 11:54:26 -0500
X-EN-OrigOutIP: 10.20.18.5
X-EN-IMPSID: 3UuS1i00A06Zqne01UuS9n
Received: from [108.25.114.139] (helo=[192.168.1.46])
	by bosauthsmtp05.eigbox.net with esmtpa (Exim) id 1RVnQQ-0001H0-8M
	for poky@yoctoproject.org; Wed, 30 Nov 2011 11:54:26 -0500
Message-ID: <4ED65FBD.4060400@mindchasers.com>
Date: Wed, 30 Nov 2011 11:54:21 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.23) Gecko/20110922 Thunderbird/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.114.139
X-EN-OrigHost: unknown
Subject: [PATCH] update checksums for libx11-trim-1.4.4. The ones included in recipe were from 1.3.4
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
X-List-Received-Date: Wed, 30 Nov 2011 16:54:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Updated the checksums in the recipe to match the libx11-trim-1.4.4 tar 
on freedesktop.org.  It looks like the MD5 & SHA checksums were carried 
over from the previous recipe (1.3.4).

I noticed this when trying to do a fresh build off master this morning.

Signed-off-by: Robert Cochran<yocto@mindchasers.com>
---
.../recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb |    4 ++--
  1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb 
b/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb
index 7aed308..32d025f 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb
+++ b/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb
@@ -14,7 +14,7 @@ SRC_URI += "file://x11_disable_makekeys.patch \
              file://makekeys_crosscompile.patch"


-SRC_URI[md5sum] = "f65c9c7ecbfb64c19dbd7927160d63fd"
-SRC_URI[sha256sum] = 
"88d7238ce5f7cd123450567de7a3b56a43556e4ccc45df38b8324147c889a844"
+SRC_URI[md5sum] = "ed7c382cbf8c13425b6a66bcac0ca5d9"
+SRC_URI[sha256sum] = 
"7fe62180f08ef5f0a0062fb444591e349cae2ab5af6ad834599f5c654e6c840d"

  EXTRA_OECONF += "--with-keysymdef=${STAGING_INCDIR}/X11/ --disable-xcms "
--
1.7.5.4



Return-Path: <fw@javox-solutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B995BE00BB7; Thu, 20 Sep 2018 01:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.67.31.99 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1039 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Sep 2018 01:20:16 PDT
Received: from smtprelay05.ispgateway.de (smtprelay05.ispgateway.de
	[80.67.31.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83BCCE00BAA
	for <poky@yoctoproject.org>; Thu, 20 Sep 2018 01:20:16 -0700 (PDT)
Received: from [89.0.112.71] (helo=javoxdev2.fritz.box)
	by smtprelay05.ispgateway.de with esmtpa (Exim 4.90_1)
	(envelope-from <fw@javox-solutions.com>)
	id 1g2tvM-0001xC-4o; Thu, 20 Sep 2018 10:02:56 +0200
From: Florian Wickert <fw@javox-solutions.com>
To: poky@yoctoproject.org
Date: Thu, 20 Sep 2018 10:02:42 +0200
Message-Id: <20180920080242.3483-1-fw@javox-solutions.com>
X-Mailer: git-send-email 2.19.0
MIME-Version: 1.0
X-Df-Sender: ZndAamF2b3gtc29sdXRpb25zLmNvbQ==
Subject: [[PATCH] remove rtmpdump from gstreamer1.0-plugins-bad deps
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
X-List-Received-Date: Thu, 20 Sep 2018 08:20:17 -0000
Content-Transfer-Encoding: 8bit

rtmpdump is not a build dependency for gstreamer1.0-plugins-bad even if
rtmp is enabled. This wouldn't compile anyway due to the
openssl/openssl10 incompatibility because rtmpdump requires openssl10.

Signed-off-by: Florian Wickert <fw@javox-solutions.com>
---
 .../gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb                | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb b/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb
index e36ffe6e02..61efc36a40 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb
@@ -65,7 +65,7 @@ PACKAGECONFIG[openjpeg]        = "--enable-openjpeg,--disable-openjpeg,openjpeg"
 PACKAGECONFIG[opusparse]       = "--enable-opus,--disable-opus,libopus"
 PACKAGECONFIG[resindvd]        = "--enable-resindvd,--disable-resindvd,libdvdread libdvdnav"
 PACKAGECONFIG[rsvg]            = "--enable-rsvg,--disable-rsvg,librsvg"
-PACKAGECONFIG[rtmp]            = "--enable-rtmp,--disable-rtmp,rtmpdump"
+PACKAGECONFIG[rtmp]            = "--enable-rtmp,--disable-rtmp"
 PACKAGECONFIG[sbc]             = "--enable-sbc,--disable-sbc,sbc"
 PACKAGECONFIG[smoothstreaming] = "--enable-smoothstreaming,--disable-smoothstreaming,libxml2"
 PACKAGECONFIG[sndfile]         = "--enable-sndfile,--disable-sndfile,libsndfile1"
-- 
2.19.0



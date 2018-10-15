Return-Path: <fw@javox-solutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48371E00A10; Mon, 15 Oct 2018 08:12:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [134.119.228.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 1389 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Oct 2018 08:12:02 PDT
Received: from smtprelay07.ispgateway.de (smtprelay07.ispgateway.de
	[134.119.228.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5294FE00A0A
	for <poky@yoctoproject.org>; Mon, 15 Oct 2018 08:12:02 -0700 (PDT)
Received: from [78.34.235.117] (helo=javoxdev2.fritz.box)
	by smtprelay07.ispgateway.de with esmtpa (Exim 4.90_1)
	(envelope-from <fw@javox-solutions.com>)
	id 1gC4At-0004vQ-ED; Mon, 15 Oct 2018 16:48:51 +0200
From: Florian Wickert <fw@javox-solutions.com>
To: poky@yoctoproject.org
Date: Mon, 15 Oct 2018 16:48:49 +0200
Message-Id: <20181015144849.20079-1-fw@javox-solutions.com>
X-Mailer: git-send-email 2.19.0
MIME-Version: 1.0
X-Df-Sender: ZndAamF2b3gtc29sdXRpb25zLmNvbQ==
Subject: [PATCH] Revert "gstreamer1.0-plugins-bad: remove rtmpdump from DEPENDS"
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
X-List-Received-Date: Mon, 15 Oct 2018 15:12:03 -0000
Content-Transfer-Encoding: 8bit

This reverts commit aa6def606fcb239fa8997764cdf4ebb1ec27802d which I
posted myself.
The Problem is rtmpdump, not the gstreamer1.0-plugins-bad recipe.
The correct to fix this is to patch rtmpdump to work with OpenSSL 1.1.

Signed-off-by: Florian Wickert <fw@javox-solutions.com>
---
 .../gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb                | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb b/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb
index 61efc36a40..e36ffe6e02 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.14.2.bb
@@ -65,7 +65,7 @@ PACKAGECONFIG[openjpeg]        = "--enable-openjpeg,--disable-openjpeg,openjpeg"
 PACKAGECONFIG[opusparse]       = "--enable-opus,--disable-opus,libopus"
 PACKAGECONFIG[resindvd]        = "--enable-resindvd,--disable-resindvd,libdvdread libdvdnav"
 PACKAGECONFIG[rsvg]            = "--enable-rsvg,--disable-rsvg,librsvg"
-PACKAGECONFIG[rtmp]            = "--enable-rtmp,--disable-rtmp"
+PACKAGECONFIG[rtmp]            = "--enable-rtmp,--disable-rtmp,rtmpdump"
 PACKAGECONFIG[sbc]             = "--enable-sbc,--disable-sbc,sbc"
 PACKAGECONFIG[smoothstreaming] = "--enable-smoothstreaming,--disable-smoothstreaming,libxml2"
 PACKAGECONFIG[sndfile]         = "--enable-sndfile,--disable-sndfile,libsndfile1"
-- 
2.19.0



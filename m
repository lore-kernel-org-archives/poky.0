Return-Path: <sascha-ml-linux-yocto-poky@silbe.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D2E3E00C4D; Wed, 21 Mar 2018 09:24:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SUBJECT_DRUG_GAP_L autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [84.201.25.44 listed in list.dnswl.org]
	* 1.6 SUBJECT_DRUG_GAP_L Subject contains a gappy version of 'levitra'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bbox.sascha.silbe.org (bbox.sascha.silbe.org [84.201.25.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 774E8E00A38
	for <poky@yoctoproject.org>; Wed, 21 Mar 2018 09:24:29 -0700 (PDT)
Received: from twin.sascha.silbe.org (twin.sascha.silbe.org [192.168.1.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client CN "twin.sascha.silbe.org",
	Issuer "stunnel Pseudo-CA" (verified OK))
	by bbox.sascha.silbe.org (Postfix) with ESMTPS id A95EDBF1F3;
	Wed, 21 Mar 2018 17:15:13 +0100 (CET)
Received: (nullmailer pid 16021 invoked by uid 8193);
	Wed, 21 Mar 2018 16:15:13 -0000
From: Sascha Silbe <x-yo17@se-silbe.de>
To: poky@yoctoproject.org
Date: Wed, 21 Mar 2018 17:15:05 +0100
Message-Id: <20180321161505.15932-1-x-yo17@se-silbe.de>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH] oe-buildenv-internal: whitelist premirror-related variables
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
X-List-Received-Date: Wed, 21 Mar 2018 16:24:32 -0000

Whitelisting them allows build scripts to create a local download
mirror (BB_GENERATE_MIRROR_TARBALLS=1) in one step and perform a build
using only this local download mirror (PREMIRRORS + BB_NO_NETWORK=1 or
BB_FETCH_PREMIRRORONLY) without having to touch local.conf.

PREMIRRORS only provides additional download sources and does not
affect the build output in any way so it's safe to
whitelist. BB_GENERATE_MIRROR_TARBALLS only causes additional files in
the download folder to be created so it doesn't affect the build
output (in tmp/) either. BB_FETCH_PREMIRRORONLY and
BB_ALLOWED_NETWORKS are related to the already whitelisted
BB_NO_NETWORK.

Signed-off-by: Sascha Silbe <x-yo17@se-silbe.de>
---
 scripts/oe-buildenv-internal | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/oe-buildenv-internal b/scripts/oe-buildenv-internal
index 6773872326..fb82247777 100755
--- a/scripts/oe-buildenv-internal
+++ b/scripts/oe-buildenv-internal
@@ -133,7 +133,8 @@ BB_ENV_EXTRAWHITE_OE="MACHINE DISTRO TCMODE TCLIBC HTTP_PROXY http_proxy \
 HTTPS_PROXY https_proxy FTP_PROXY ftp_proxy FTPS_PROXY ftps_proxy ALL_PROXY \
 all_proxy NO_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY \
 SDKMACHINE BB_NUMBER_THREADS BB_NO_NETWORK PARALLEL_MAKE GIT_PROXY_COMMAND \
-SOCKS5_PASSWD SOCKS5_USER SCREENDIR STAMPS_DIR BBPATH_EXTRA BB_SETSCENE_ENFORCE"
+SOCKS5_PASSWD SOCKS5_USER SCREENDIR STAMPS_DIR BBPATH_EXTRA BB_SETSCENE_ENFORCE \
+BB_GENERATE_MIRROR_TARBALLS PREMIRRORS BB_ALLOWED_NETWORKS BB_FETCH_PREMIRRORONLY"
 
 BB_ENV_EXTRAWHITE="$(echo $BB_ENV_EXTRAWHITE $BB_ENV_EXTRAWHITE_OE | tr ' ' '\n' | LC_ALL=C sort --unique | tr '\n' ' ')"
 
-- 
2.11.0



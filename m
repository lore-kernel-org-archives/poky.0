Return-Path: <oleksandr.kravchuk@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1D92E0043B; Wed,  4 Jan 2017 00:19:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.173 listed in list.dnswl.org]
Received: from mail-wj0-f173.google.com (mail-wj0-f173.google.com
	[209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C1C4E003DB
	for <poky@yoctoproject.org>; Wed,  4 Jan 2017 00:19:38 -0800 (PST)
Received: by mail-wj0-f173.google.com with SMTP id tn15so4530873wjb.1
	for <poky@yoctoproject.org>; Wed, 04 Jan 2017 00:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pelagicore-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=bwbG+34khv23+0BMb3FTgqX+33X+MNMg5HyGZjJ3QK4=;
	b=dCdL3ghNM4aopcA3k9omguPT6cncWdNVwlXR4q8GmKGD2aN9GVJwkW12TaV+QH2KQs
	DKvuLLmvNKH1T8rdWneyIOBfCdKSOD+Wdy2SW2LMJTm5Yl/w85lZVPHKsnse5CwbYdEF
	HMPe5cZWljCO9MjF7P5dvYHadV9c8/dw0Vg9AWeMMm4ZP+2hbe7YBwKe0hwnhtOyLz0F
	ts33MUhknsQo3bjj9lpi6tZgpryxN8fh+TfJn5Qw6I40aKWPe1gZh8qRojJNpQSW0o59
	JOwikQRVK1TgDqeW7T6cOhKAuh/JE/vKNIbIhVVUzoHRb0hCktTY0rFfuYi+t0Z8H8za
	lZiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=bwbG+34khv23+0BMb3FTgqX+33X+MNMg5HyGZjJ3QK4=;
	b=qvtiVGMrpUUmMKnUrqwKpaBw+7AxvgjCoNAmJHBu3Td5fB40O5N0zEp+fRaHc8cHA0
	931qBzTpcnYcFNElpAkIx9Sr5gSdZW79C3+dk0Cz55wrLBDXkBs3AV43GCebk2VSRuIZ
	6xJQOPomrLCI78HFQ1HIl5fQ4ETNMCWFVfg++C3DEu+30IwON7Se5kUd3/QH6HL9RnhN
	nM7E0LI4uLQtzOTh+ZPYlJLb3/MJXLGcJN04EDCkCNjMo+CZgr/tSr07YiI8/0XQQOCh
	1Vmc4mfcAgAQct0TP/61lfC6VQCRfOfUAFO3EvKhRP55MRckRbd3eSf0Bdjo8+QYkjgO
	Q8Bg==
X-Gm-Message-State: AIkVDXI5nrdiICafvWAVrPjpfkFdiGukfREfkGM5H/KXjMv9Gj3tF6hhvdMC2jnIAgmHl+vC
X-Received: by 10.194.85.165 with SMTP id i5mr56454225wjz.147.1483517976764;
	Wed, 04 Jan 2017 00:19:36 -0800 (PST)
Received: from stout.office.pelagicore.net ([83.218.80.242])
	by smtp.gmail.com with ESMTPSA id 81sm93535759wmw.7.2017.01.04.00.19.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 04 Jan 2017 00:19:36 -0800 (PST)
From: Oleksandr Kravchuk <oleksandr.kravchuk@pelagicore.com>
To: poky@yoctoproject.org
Date: Wed,  4 Jan 2017 09:19:27 +0100
Message-Id: <1483517967-3705-1-git-send-email-oleksandr.kravchuk@pelagicore.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] curl: upgrade to 7.52.1
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
X-List-Received-Date: Wed, 04 Jan 2017 08:19:41 -0000

Signed-off-by: Oleksandr Kravchuk <oleksandr.kravchuk@pelagicore.com>
---
 meta/recipes-support/curl/{curl_7.51.0.bb => curl_7.52.1.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-support/curl/{curl_7.51.0.bb => curl_7.52.1.bb} (94%)

diff --git a/meta/recipes-support/curl/curl_7.51.0.bb b/meta/recipes-support/curl/curl_7.52.1.bb
similarity index 94%
rename from meta/recipes-support/curl/curl_7.51.0.bb
rename to meta/recipes-support/curl/curl_7.52.1.bb
index a9589b8..2882bc0 100644
--- a/meta/recipes-support/curl/curl_7.51.0.bb
+++ b/meta/recipes-support/curl/curl_7.52.1.bb
@@ -14,8 +14,8 @@ SRC_URI = "http://curl.haxx.se/download/curl-${PV}.tar.bz2 \
 #
 SRC_URI += " file://configure_ac.patch"
 
-SRC_URI[md5sum] = "09a7c5769a7eae676d5e2c86d51f167e"
-SRC_URI[sha256sum] = "7f8240048907e5030f67be0a6129bc4b333783b9cca1391026d700835a788dde"
+SRC_URI[md5sum] = "dd014df06ff1d12e173de86873f9f77a"
+SRC_URI[sha256sum] = "d16185a767cb2c1ba3d5b9096ec54e5ec198b213f45864a38b3bda4bbf87389b"
 
 CVE_PRODUCT = "libcurl"
 inherit autotools pkgconfig binconfig multilib_header
-- 
2.7.4



Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F108EE00885; Mon, 20 Oct 2014 09:29:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87988E008B0
	for <poky@yoctoproject.org>; Mon, 20 Oct 2014 09:28:52 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id k14so5881574wgh.7
	for <poky@yoctoproject.org>; Mon, 20 Oct 2014 09:28:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=hHwrpidOgsm04gBejRc1wPzl47juexQac9u9UAbaU2M=;
	b=AD/91UaMVF6BPFJAt3/9NqHkavh9VtbI/fhNDpv/kgKxd0u7XlemTO8VGhEiwPyKIC
	b1sofIoKl8xb4rFiAVd3WxrGGvZzeSnlAuW9yvBkw6zTVD2oBv1zV3Rk5olq7W6PW1FW
	eiI5xj6VQhS/i2MaymH0GnVzjXOJCfydPXeMxWwcBTPlb8NwK4Dmld/NFdYEV0xD+HZa
	3qkVjBgNUKCgY2LPTA0FlBCqv9i1Q0BzJLRaIX3k/oNfUn53yIzxdJt4qDgAn136525r
	56uhYCXygs0nSAp3ZPGDkC4/u9ACNTXaFixn5ER6aZZeBGd5Quo8Hp9IQaxNNgWTc3LM
	Qcrw==
X-Gm-Message-State: ALoCoQmU9hbhRmhAaXRn07h/bzz8Sl0NtQLrrnHp7ME3AJeUYqebeXjd96qJomvEJ+at3SFhVDnp
X-Received: by 10.194.60.230 with SMTP id k6mr4721956wjr.135.1413822531849;
	Mon, 20 Oct 2014 09:28:51 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id
	pc8sm12398813wjb.36.2014.10.20.09.28.50 for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 Oct 2014 09:28:50 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 20 Oct 2014 17:28:41 +0100
Message-Id: <1413822521-14606-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] poky.conf: add Debian 7.7 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Mon, 20 Oct 2014 16:29:03 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index eaf06d3..e1dfea4 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -91,6 +91,7 @@ SANITY_TESTED_DISTROS ?= " \
             Debian-7.4 \n \
             Debian-7.5 \n \
             Debian-7.6 \n \
+            Debian-7.7 \n \
             SUSE-LINUX-12.2 \n \
             openSUSE-project-12.3 \n \
             openSUSE-project-13.1 \n \
-- 
1.7.10.4



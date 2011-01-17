Return-Path: <aalonso00@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id C5F2C4C811F8
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:42 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yw0-f48.google.com with SMTP id 7so2084365ywo.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=uJaJ2lr4EYoWmn1svHzbVWzWdcp36CcBrD0hvf7W1UE=;
	b=Z0mr56LdPV2ooBh98rsKGOc74xKni2IKFR31DQIQc12LLdJeDvWWAjH+R05oFygruA
	iFzNILpeqwKrfIsfQa2S4oxdewxSDvXteliyOxtURD9+WOUwyT+wWQwqVqYZyoGx5Qhm
	NaWig9EZ2ZA2yAAP56xR8C6K5jeeOYfvDO+us=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=aGHZjIu9fU3dJgzGhxiRhKFWtZTX+jb/prnV2hKWsK/dW/uj7IQ5cprSqiQ+aYviWw
	FC8MDA87lpUPifooGM1mk0Hxp83Z1122+bT2oMNEsQkl8cZu4B0zk92XGOpVWz0kR+8c
	QFREntl2WglOJtHNhNxKd448tbO2vjXbEaHos=
Received: by 10.101.70.7 with SMTP id x7mr2807641ank.185.1295295822675;
	Mon, 17 Jan 2011 12:23:42 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.40
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:42 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:19 -0600
Message-Id: <1295296178-18590-6-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 06/25] virtex4: fix machine name in u-boot preferred version
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:42 -0000

* Fix machine name in preferred version for u-boot,
  u-boot recipe was not been built for incorren machine name
  resolution

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 conf/machine/virtex4.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/virtex4.conf b/conf/machine/virtex4.conf
index a29f414..e395d1f 100644
--- a/conf/machine/virtex4.conf
+++ b/conf/machine/virtex4.conf
@@ -12,7 +12,7 @@ TARGET_FPU  = "soft"
 require conf/machine/include/tune-ppc405.inc
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-xilinx"
-PREFERRED_VERSION_u-boot_xilinx-virtex4 = "u-boot-xilinx"
+PREFERRED_VERSION_u-boot_virtex4 = "u-boot-xilinx"
 
 KERNEL_IMAGETYPE = "uImage"
 
-- 
1.7.3.4



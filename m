Return-Path: <djszapi@archlinux.us>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 477F1E002E2
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 09:02:52 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id n11so3167858wgh.9
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 09:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=snoArtpD3KNcEtTJYdG/kKddTDN12AGYZ2Xa5LGheY0=;
	b=XHI1YvB6g4blzq1RK2wfqWQhT8v6mIt+nhhHwfHibX70blZpnhPS0KK//7HnKekRwN
	sIfqpnZwlDoKtk8mqr1bhO2cc/PD8p9ERHQht6S2YJR38cG/QD9qVFZd4+RJaLJuL4wr
	Uz553Mg3TicITq+z5AhoaHSgMsywdAnmOKbZ6/t7FYOD/UESmLOsLbIflzpLtujF/ybf
	kh+2I9x67KX7AxgH9vYP39Kr9tYdD3u9rLcKsAyXaXwVZX52E46rXl6OPlcF2ZsSqG5W
	0Z1d7NhiHeNFRnP+DIM3SrdOuTPi3AzCydnkR6YjGavhXQXNSbiymOwMTZ0E4PFR/uDj
	VlmA==
X-Received: by 10.194.9.70 with SMTP id x6mr35617370wja.19.1375200171525;
	Tue, 30 Jul 2013 09:02:51 -0700 (PDT)
Received: from djszapi@archlinux.us ([212.44.19.228])
	by mx.google.com with ESMTPSA id
	s19sm29451371wik.11.2013.07.30.09.02.48 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 30 Jul 2013 09:02:50 -0700 (PDT)
Sender: Laszlo Papp <djszapi@archlinux.us>
Received: by djszapi@archlinux.us (sSMTP sendmail emulation);
	Tue, 30 Jul 2013 17:01:02 +0100
From: Laszlo Papp <lpapp@kde.org>
To: poky@yoctoproject.org
Date: Tue, 30 Jul 2013 17:01:02 +0100
Message-Id: <1375200062-3412-1-git-send-email-lpapp@kde.org>
X-Mailer: git-send-email 1.8.3.4
X-Gm-Message-State: ALoCoQlvb8ac4W5Xk/RsShbInOC5MeZWpk5L23qedpjlk6ZFlCEK3ndP3592mrk19eM+X33ZYy2i
Subject: [PATCH] beagleboard.conf: Remove x-load as it is deprecated
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
X-List-Received-Date: Tue, 30 Jul 2013 16:02:52 -0000

SPL is a replacement in the u-boot tree.

Signed-off-by: Laszlo Papp <lpapp@kde.org>
---
 meta-yocto-bsp/conf/machine/beagleboard.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beagleboard.conf b/meta-yocto-bsp/conf/machine/beagleboard.conf
index 6633880..49b16fa 100644
--- a/meta-yocto-bsp/conf/machine/beagleboard.conf
+++ b/meta-yocto-bsp/conf/machine/beagleboard.conf
@@ -13,7 +13,7 @@ XSERVER ?= "xserver-xorg \
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
-EXTRA_IMAGEDEPENDS += "u-boot x-load"
+EXTRA_IMAGEDEPENDS += "u-boot"
 
 # Uncomment the following line to enable the hard floating point abi. Note that
 # this breaks some binary libraries and 3D (neither of which ship with
-- 
1.8.3.4



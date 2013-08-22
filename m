Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65BF6E00406
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:11 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id w62so1897042wes.29
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=pAITyondeNzT1ZQIHnft4n408EQyKckU5vpG15GBBmQ=;
	b=ZLZobc+58C6nXrDdHAWmqdoHWVTCatGsNkEaV0ORsq1fRwjzzN1euH4JRpPBHU2bv/
	IXx0MvIoH9gZ+jHBlButBgVVYaLgCe+twK4C1xcWuzUMaN4l0zj+tcz1GjQIhn3FPcgL
	vzisQF0rXY6HsWQamlJwgkmceBLj1KNgafmJvodyoJfifXmTeUIG9CEEhARaaWu24DYL
	i0yidIZZ47tEx+53xQqS+vEL1RXMk6HulH4ZsNEx3/E48CJk25nb61VF2kZmjmoOOKNK
	xLieof6juFaDvJzxvlEvCBU0UicqRyTjvxzjs4mAEUPvPZMsnmzpTngKPIeMvhsp7v5C
	bLnw==
X-Gm-Message-State: ALoCoQnpuqZXjMiS0RWtYhXFQIcgDV3xzLVhgNtCffjMEYiXDJwGZ2Ap9odfpiiWlaXw54m005S0
X-Received: by 10.180.85.72 with SMTP id f8mr3135059wiz.0.1377187150161;
	Thu, 22 Aug 2013 08:59:10 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id jf2sm17773085wic.2.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 22 Aug 2013 08:59:09 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 22 Aug 2013 16:59:04 +0100
Message-Id: <cover.1377186905.git.ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Cc: dvhart@linux.intel.com
Subject: [PATCH 0/4] genericx86 fixes
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
X-List-Received-Date: Thu, 22 Aug 2013 15:59:14 -0000

Hi,

The headline here is using the improved kernel configuration I've been playing
with, so this is all pending Bruce's kernel push.

Ross

The following changes since commit b2ff1add530b1fec2fb7f385227a03db47015c37:

  poky.conf: Don't force the addition of extra DISTRO_FEATURES (2013-08-20 22:58:04 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib ross/genericx86-next

for you to fetch changes up to eba8d2a94e36103fabecdd0c68142e2ea1d21b10:

  linux-yocto: switch genericx86 to use common-pc (2013-08-22 16:52:47 +0100)

----------------------------------------------------------------
Ross Burton (4):
      linux-yocto: remove genericx86 support from 3.4
      genericx86: add v86d to machine recommends for uvesafb
      genericx86: disable USB autosuspend
      linux-yocto: switch genericx86 to use common-pc

 meta-yocto-bsp/conf/machine/genericx86.conf                  |    4 +---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    2 --
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend |    4 +++-
 3 files changed, 4 insertions(+), 6 deletions(-)

Ross Burton (4):
  linux-yocto: remove genericx86 support from 3.4
  genericx86: add v86d to machine recommends for uvesafb
  genericx86: disable USB autosuspend
  linux-yocto: switch genericx86 to use common-pc

 meta-yocto-bsp/conf/machine/genericx86.conf                  |    4 +---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    2 --
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend |    4 +++-
 3 files changed, 4 insertions(+), 6 deletions(-)

-- 
1.7.10.4



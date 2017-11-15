Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2001EE00D24; Tue, 14 Nov 2017 21:58:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C78D3E00C11
	for <poky@yoctoproject.org>; Tue, 14 Nov 2017 21:58:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vAF5wpbm006538
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 14 Nov 2017 21:58:51 -0800 (PST)
Received: from localhost (128.224.162.134) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 14 Nov 2017 21:58:49 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <poky@yoctoproject.org>, <leonardo.sandoval.gonzalez@linux.intel.com>
Date: Wed, 15 Nov 2017 13:57:29 +0800
Message-ID: <1510725449-32147-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.134]
Subject: [PATCH] contrib/yocto-bsp-kernel-update.sh: remove this script
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
X-List-Received-Date: Wed, 15 Nov 2017 05:58:54 -0000
Content-Type: text/plain

This script was unused since yocto-bsp tool had been removed.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 scripts/contrib/yocto-bsp-kernel-update.sh | 60 ------------------------------
 1 file changed, 60 deletions(-)
 delete mode 100755 scripts/contrib/yocto-bsp-kernel-update.sh

diff --git a/scripts/contrib/yocto-bsp-kernel-update.sh b/scripts/contrib/yocto-bsp-kernel-update.sh
deleted file mode 100755
index b3aa705..0000000
--- a/scripts/contrib/yocto-bsp-kernel-update.sh
+++ /dev/null
@@ -1,60 +0,0 @@
-#!/bin/sh
-#
-# Copyright (c) 2017, Intel Corporation.
-# All rights reserved.
-#
-# This program is free software;  you can redistribute it and/or modify
-# it under the terms of the GNU General Public License as published by
-# the Free Software Foundation; either version 2 of the License, or
-# (at your option) any later version.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY;  without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See
-# the GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program;  if not, write to the Free Software
-# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
-#
-# Description: creates a new set of kernel templates based on version
-#
-
-set -o nounset
-set -o errexit
-
-if [ $# -ne 4 ]; then
-    cat << EOF
-usage: $0 from_mayor from_minor to_mayor to_minor
-EOF
-    exit 1
-else
-    fma=$1 # from mayor
-    fmi=$2 # from minor
-    tma=$3 # to mayor
-    tmi=$4 # to minor
-fi
-
-poky=$(readlink -e $(dirname $(dirname $(dirname $0))))
-arch=$poky/scripts/lib/bsp/substrate/target/arch
-
-
-# copy/rename templates
-for from in $(ls -1 $arch/*/recipes-kernel/linux/linux-yocto*_$fma\.$fmi.bbappend)
-do
-    to=$(echo $from | sed s/$fma\.$fmi/$tma\.$tmi/)
-    cp $from $to
-done
-
-# replace versions string inside new templates
-for bbappend in $(ls -1 $arch/*/recipes-kernel/linux/linux-yocto*_$tma\.$tmi.bbappend)
-do
-    sed -i 1s/$fma\.$fmi/$tma\.$tmi/ $bbappend
-    sed -i \$s/$fma\.$fmi/$tma\.$tmi/ $bbappend
-done
-
-# update the noinstall files
-for noinstall in $(ls -1 $arch/*/recipes-kernel/linux/kernel-list.noinstall)
-do
-    sed -i s/$fma\.$fmi/$tma\.$tmi/g $noinstall;
-done
-- 
2.7.4



Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99AC5E00D54; Thu, 16 Nov 2017 07:18:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F18CE00DC9
	for <poky@yoctoproject.org>; Thu, 16 Nov 2017 07:18:46 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Nov 2017 07:18:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,404,1505804400"; 
   d="scan'208";a="8415893"
Received: from $_hostname.zpn.intel.com (HELO lsandov1-mobl2.zpn.intel.com)
	([10.219.128.134])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2017 07:18:45 -0800
Date: Thu, 16 Nov 2017 09:27:59 -0600
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <20171116092759.3044258a@lsandov1-mobl2.zpn.intel.com>
In-Reply-To: <1510725449-32147-1-git-send-email-yi.zhao@windriver.com>
References: <1510725449-32147-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] contrib/yocto-bsp-kernel-update.sh: remove this script
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
X-List-Received-Date: Thu, 16 Nov 2017 15:18:48 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 15 Nov 2017 13:57:29 +0800
Yi Zhao <yi.zhao@windriver.com> wrote:

> This script was unused since yocto-bsp tool had been removed.
>

+1 Thanks  Yi. Yes, this script is useless now.
 
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  scripts/contrib/yocto-bsp-kernel-update.sh | 60 ------------------------------
>  1 file changed, 60 deletions(-)
>  delete mode 100755 scripts/contrib/yocto-bsp-kernel-update.sh
> 
> diff --git a/scripts/contrib/yocto-bsp-kernel-update.sh b/scripts/contrib/yocto-bsp-kernel-update.sh
> deleted file mode 100755
> index b3aa705..0000000
> --- a/scripts/contrib/yocto-bsp-kernel-update.sh
> +++ /dev/null
> @@ -1,60 +0,0 @@
> -#!/bin/sh
> -#
> -# Copyright (c) 2017, Intel Corporation.
> -# All rights reserved.
> -#
> -# This program is free software;  you can redistribute it and/or modify
> -# it under the terms of the GNU General Public License as published by
> -# the Free Software Foundation; either version 2 of the License, or
> -# (at your option) any later version.
> -#
> -# This program is distributed in the hope that it will be useful,
> -# but WITHOUT ANY WARRANTY;  without even the implied warranty of
> -# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See
> -# the GNU General Public License for more details.
> -#
> -# You should have received a copy of the GNU General Public License
> -# along with this program;  if not, write to the Free Software
> -# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
> -#
> -# Description: creates a new set of kernel templates based on version
> -#
> -
> -set -o nounset
> -set -o errexit
> -
> -if [ $# -ne 4 ]; then
> -    cat << EOF
> -usage: $0 from_mayor from_minor to_mayor to_minor
> -EOF
> -    exit 1
> -else
> -    fma=$1 # from mayor
> -    fmi=$2 # from minor
> -    tma=$3 # to mayor
> -    tmi=$4 # to minor
> -fi
> -
> -poky=$(readlink -e $(dirname $(dirname $(dirname $0))))
> -arch=$poky/scripts/lib/bsp/substrate/target/arch
> -
> -
> -# copy/rename templates
> -for from in $(ls -1 $arch/*/recipes-kernel/linux/linux-yocto*_$fma\.$fmi.bbappend)
> -do
> -    to=$(echo $from | sed s/$fma\.$fmi/$tma\.$tmi/)
> -    cp $from $to
> -done
> -
> -# replace versions string inside new templates
> -for bbappend in $(ls -1 $arch/*/recipes-kernel/linux/linux-yocto*_$tma\.$tmi.bbappend)
> -do
> -    sed -i 1s/$fma\.$fmi/$tma\.$tmi/ $bbappend
> -    sed -i \$s/$fma\.$fmi/$tma\.$tmi/ $bbappend
> -done
> -
> -# update the noinstall files
> -for noinstall in $(ls -1 $arch/*/recipes-kernel/linux/kernel-list.noinstall)
> -do
> -    sed -i s/$fma\.$fmi/$tma\.$tmi/g $noinstall;
> -done
> -- 
> 2.7.4
> 


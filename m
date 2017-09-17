Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05F8BE00C3D; Sun, 17 Sep 2017 04:02:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9863EE00B83
	for <poky@yoctoproject.org>; Sun, 17 Sep 2017 04:02:51 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v8HB2jE0000578
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Sun, 17 Sep 2017 12:02:46 +0100
Message-ID: <1505646165.18640.110.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Hao <kexin.hao@windriver.com>, poky@yoctoproject.org
Date: Sun, 17 Sep 2017 12:02:45 +0100
In-Reply-To: <20170917062737.4658-1-kexin.hao@windriver.com>
References: <20170917062737.4658-1-kexin.hao@windriver.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Sun, 17 Sep 2017 11:02:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sun, 2017-09-17 at 14:27 +0800, Kevin Hao wrote:
> Bump to the latest stable kernel for 4.4, 4.9, 4.10 and 4.12.
> 
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_4.10.bbappend           |  6
> +++---
>  .../recipes-kernel/linux/linux-yocto_4.12.bbappend           | 12
> ++++++------
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12
> ++++++------
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12
> ++++++------
>  4 files changed, 21 insertions(+), 21 deletions(-)
> 
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-
> yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-
> yocto_4.10.bbappend

Alejandro pointed you at the patches to base this off so it would
apply. I've rebased it myself...

Cheers,

Richard


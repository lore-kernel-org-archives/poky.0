Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 666EBE00952; Sun, 22 Mar 2015 22:17:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44B42E00949
	for <poky@yoctoproject.org>; Sun, 22 Mar 2015 22:17:46 -0700 (PDT)
Received: by pdnc3 with SMTP id c3so176219581pdn.0
	for <poky@yoctoproject.org>; Sun, 22 Mar 2015 22:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=8c1IpnpRVwvkEA8SM4m7DNc9032YRItRn0Lu0O2b5DU=;
	b=ZD/gl38mjydtSdrQV+UOMYH7YdiE37an1QM+5bWI+cveoW72Pa+DYaYIJ94eQwr+r/
	AogDxtYjiB08UsbIxfYDrRYsDGoJf+Ns85T9nG3ie7hWbOJt4YgmAvd2ZUt0oM0lU8AH
	sLmg6S9vlEXTDF0E/4NRhp8YuxXvpFnx+wpOKD1SvZmeC/9QrRZj890gr6bsKwovyx3X
	lyTy7AEWgjyJkSigPYH7FnHUi7zSzj4MhVGhd4lm1sEUMC4pTZqReIRwAu7kjJjyvJ3+
	VP/CvnEOaWkp9ArKW1Ykt3EWX/3gapX1ArOH0rmFlx95PEwJhIzPAeBW0p2zGw1zXGnG
	o0dg==
X-Received: by 10.68.190.228 with SMTP id gt4mr17866906pbc.6.1427087866350;
	Sun, 22 Mar 2015 22:17:46 -0700 (PDT)
Received: from Akusters-laptop-2.local (c-107-3-174-189.hsd1.ca.comcast.net.
	[107.3.174.189])
	by mx.google.com with ESMTPSA id eh4sm5857165pbd.69.2015.03.22.22.17.44
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 22 Mar 2015 22:17:45 -0700 (PDT)
Message-ID: <550FA1F7.2070708@gmail.com>
Date: Sun, 22 Mar 2015 22:17:43 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1427082458.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1427082458.git.tom.zanussi@linux.intel.com>
Subject: Re: [PATCH 0/1] yocto-bsp updates for 1.8
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
X-List-Received-Date: Mon, 23 Mar 2015 05:17:53 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 3/22/15 9:24 PM, Tom Zanussi wrote:
> This is the yocto-bsp update for 1.8 (to the 3.19 kernel, and removing
> 3.10 and 3.17 support).

Isn't 3.18 the new LTS  so why 3.19?

or replacing 3.17 with 3.19 would make sense.


- Armin


>
> BSPs were generated and build and boot-tested using core-image-sato
> for all the qemu targets, and BSPs were generated and build-tested
> using core-image-sato for all the non-qemu targets as well.
>
> Important variants such as using old branches, older kernels and
> custom kernels were also build and boot-tested.
>
> The following changes since commit 0308f3101b93035ebf564a33acb00adaac108033:
>
>   bitbake: knotty.py: fix indent (2015-03-19 14:20:14 +0000)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-1.8-updates
>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-1.8-updates
>
> Tom Zanussi (1):
>   yocto-bsp: Update templates to 3.19 kernel
>
>  .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>  .../target/arch/i386/conf/machine/machine.conf     |  4 +-
>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>  .../recipes-kernel/linux/linux-yocto_3.14.bbappend |  8 +--
>  .../linux/linux-yocto_3.19.bbappend}               |  8 +--
>  .../target/arch/powerpc/conf/machine/machine.conf  |  2 +-
>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>  .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
>  .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>  .../linux/linux-yocto_3.19.bbappend}               |  4 +-
>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>  .../linux/linux-yocto-rt_3.10.bbappend             | 62 ----------------------
>  .../linux/linux-yocto-tiny_3.10.bbappend           | 62 ----------------------
>  ...3.4.bbappend => linux-yocto-tiny_3.14.bbappend} |  2 +-
>  ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 62 ----------------------
>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>  .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
>  .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
>  .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
>  .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
>  .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
>  .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
>  ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
>  48 files changed, 114 insertions(+), 894 deletions(-)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/{powerpc/recipes-kernel/linux/linux-yocto_3.17.bbappend => mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend} (89%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
>  create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/{mips64/recipes-kernel/linux/linux-yocto_3.17.bbappend => powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend} (94%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.4.bbappend => linux-yocto-tiny_3.14.bbappend} (99%)
>  rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (99%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (98%)
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
>  create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
>  delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.10.bbappend
>  rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
>



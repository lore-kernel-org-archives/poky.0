Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CF94E01F0C; Mon, 11 Jun 2018 00:35:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2275E0176C
	for <poky@yoctoproject.org>; Mon, 11 Jun 2018 00:35:22 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5B7ZHa1026703
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 11 Jun 2018 08:35:19 +0100
Message-ID: <de4969f9ba3f5bfa7d15b367ce88949587b5481f.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Hao <kexin.hao@windriver.com>, poky@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Mon, 11 Jun 2018 08:35:17 +0100
In-Reply-To: <ff42bd76317a54117d93f5375007c1019eb2bd8b.camel@linuxfoundation.org>
References: <20180610070626.84093-1-kexin.hao@windriver.com>
	<ff42bd76317a54117d93f5375007c1019eb2bd8b.camel@linuxfoundation.org>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
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
X-List-Received-Date: Mon, 11 Jun 2018 07:35:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-06-11 at 08:08 +0100, Richard Purdie wrote:
> On Sun, 2018-06-10 at 15:06 +0800, Kevin Hao wrote:
> > Bump to the latest stable kernel for 4.12, 4.14 and 4.15.
> > 
> > Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> 
> Thanks for this. This addresses some of the failures we saw but not
> for
> edgerouter:
> 
> https://autobuilder.yocto.io/builders/nightly-mips-lsb/builds/1046/st
> eps/BuildImages_1/logs/stdio
> https://autobuilder.yocto.io/builders/nightly-mips/builds/1050/steps/
> BuildImages_1/logs/stdio
> 
> Any idea why that is contiuing to fail on 4.14 and 4.15? Were the
> patches for gcc8 not merged into that branch?

Perhaps we need https://git.kernel.org/pub/scm/linux/kernel/git/torvald
s/linux.git/commit/?id=2479bfc9bc600dcce7f932d52dcfa8d677c41f93
converted for mips?

Also https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
/commit/?id=415520373975d2eba565c256d2cad875ed4e9243

This looks like the upstream version of Khem's ppc fix.

Cheers,

Richard


Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04B92E00D60; Tue, 29 Sep 2015 19:14:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAB01E00BE0;
	Tue, 29 Sep 2015 19:14:32 -0700 (PDT)
Received: by ioii196 with SMTP id i196so32143447ioi.3;
	Tue, 29 Sep 2015 19:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dLJyqjmHNa1i6TOcCFKPUej91YH70lqyp4xFQY/3IX4=;
	b=lBZLUbz1PpGuiMY1V1floLmoiMBOkvCeULqnT602VKRXCv1PWGb8Bfvkm81SmtvqcQ
	jZT85FAdvoi20A9qry4qBj2vhvq8rZGMnk4xtCzXheI7le3ng/aVDmincI0mwDnbA3FI
	GAL7X9a7NDpf3/jwP0KgNd5JcEGOl36iQM633oK0N9Dg7oZUDf5VUbLsdALqdQCxVy/1
	vQ5zRy8vTeb+I9lM1zOJC7eolR4eAQilXzN5VzOMJpdZlFmkTVI3kcXTPzYz4EB7SSuY
	DWr7pEQ+xIuoaTZPZBJaxtw67U6oOzN8bwtj6cO2qP5A/ux27uF3w4+ZEtHwuw2TFrmx
	nPiw==
X-Received: by 10.107.34.149 with SMTP id i143mr2168541ioi.195.1443579271710; 
	Tue, 29 Sep 2015 19:14:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Tue, 29 Sep 2015 19:14:02 -0700 (PDT)
In-Reply-To: <20150930014449.GA2568@pek-khao-d1.corp.ad.wrs.com>
References: <1443519723-30931-1-git-send-email-kexin.hao@windriver.com>
	<CAJTo0LaV3Bp_PPKcxNmooADC8XPza5A2Pt8rFpY5GZw5sgUEEg@mail.gmail.com>
	<4867265E-255E-4F6A-9657-BD390A127625@gmail.com>
	<20150930014449.GA2568@pek-khao-d1.corp.ad.wrs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 Sep 2015 19:14:02 -0700
Message-ID: <CAMKF1sqPd+zVAvosgA85QuePutTtOOcWH5CtGzG40dmr7cPy3g@mail.gmail.com>
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [PATCH] meta-yocto-bsp: bump to linux-yocto 4.1 for the non-x86 BSPs
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
X-List-Received-Date: Wed, 30 Sep 2015 02:14:36 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 29, 2015 at 6:44 PM, Kevin Hao <kexin.hao@windriver.com> wrote:
>                         if ! (echo "$headers" | grep -q "^$str$"); then

I think that would be ok


Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C4BEE00F18; Mon, 12 Sep 2016 05:48:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4282E00F12
	for <poky@yoctoproject.org>; Mon, 12 Sep 2016 05:48:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u8CCmgDc020358
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 12 Sep 2016 05:48:42 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 12 Sep 2016 05:48:41 -0700
To: "Burton, Ross" <ross.burton@intel.com>, Robert Yang
	<liezhi.yang@windriver.com>
References: <cover.1473668648.git.liezhi.yang@windriver.com>
	<52b278723167707e032353daded2d1ccf0f44b59.1473668648.git.liezhi.yang@windriver.com>
	<CAJTo0LYvLLvjJHNaA-JfZCGKGWDWNfdR5E9+rwHDXTMYuYPgow@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <620f9e8e-3cf0-445a-f79d-b4b48a017fb1@windriver.com>
Date: Mon, 12 Sep 2016 08:48:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYvLLvjJHNaA-JfZCGKGWDWNfdR5E9+rwHDXTMYuYPgow@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] poky-lsb.conf: use kernel 4.8
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
X-List-Received-Date: Mon, 12 Sep 2016 12:48:51 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-09-12 04:39 AM, Burton, Ross wrote:
>
> On 12 September 2016 at 09:25, Robert Yang <liezhi.yang@windriver.com
> <mailto:liezhi.yang@windriver.com>> wrote:
>
>      # Use the LTSI Kernel for LSB Testing
>     -PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.1%"
>     +PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.8%"
>
>
> As the comment says, poky-lsb uses the currently LTSI kernel, which is
> 4.1.17.   If this isn't booting for you then this needs to be fixed
> without upgrading to 4.8, unless there's a new LTSI kernel on the
> horizon (Bruce?).

I see Robert already replied, but I can comment here that the next
LTSI looks to be 4.9. We stretched to make 4.8 for this release, so
it will be spring before we have a new LTSI kernel to use.

Bruce

>
> Ross



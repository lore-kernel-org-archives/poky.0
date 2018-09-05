Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 311C1E00A16; Wed,  5 Sep 2018 03:04:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C87C3E009B2;
	Wed,  5 Sep 2018 03:04:13 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Sep 2018 03:04:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,333,1531810800"; d="scan'208";a="81044091"
Received: from nrisman-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.139.244])
	by orsmga003.jf.intel.com with ESMTP; 05 Sep 2018 03:03:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: srinivasan <srinivasan.rns@gmail.com>
Date: Wed, 05 Sep 2018 21:58:50 +1200
Message-ID: <4990131.EuLAoaZKRn@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <CAFsTbWckbdBLy5OE8FFqvq5TrMreasfNUdY2DTMXK5fkwxKoSQ@mail.gmail.com>
References: <CAFsTbWdWMce5h_MBbNiUgsJ+Pcdu=V3jJqf6StSFxJ0d82Z6WQ@mail.gmail.com>
	<2275019.nIMUWJAHk9@localhost.localdomain>
	<CAFsTbWckbdBLy5OE8FFqvq5TrMreasfNUdY2DTMXK5fkwxKoSQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto-bsp@yoctoproject.org, poky@yoctoproject.org
Subject: Re: Yocto kernel compilation issues
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
X-List-Received-Date: Wed, 05 Sep 2018 10:04:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 5 September 2018 5:43:49 PM NZST srinivasan wrote:
> "inherit kernel" doesn't allow to add new kernels for the very first to
> yocto build system for example adding the below kernel
> 
> *- The kernel used would be the Linux-rt-devel v4.14.39 from the git repo
> in https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/
> <https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git/>*
> 
> Because I tried adding the above new kernel for the first time using
> "inherit kernel", and ended with number of issues

What were those issues?

> And I hope, "inherit kernel" works only for yocto based linux kernels that
> is already available.
> 
> Could you please guide me if my understanding is wrong w.r.t the above?

inherit kernel will work with any Linux kernel, including any custom source 
tree you care to point it at.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre




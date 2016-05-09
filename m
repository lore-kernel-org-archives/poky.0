Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A304E00ECB; Mon,  9 May 2016 05:38:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B234E00EC7
	for <poky@yoctoproject.org>; Mon,  9 May 2016 05:38:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u49CcQ81018048
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 May 2016 05:38:27 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (147.11.178.22) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 9 May 2016 05:38:26 -0700
Date: Mon, 9 May 2016 20:38:22 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Ruslan Babayev <ruslan@babayev.com>
Message-ID: <20160509123822.GA13739@pek-khao-d1.corp.ad.wrs.com>
References: <877ff73zh2.fsf@babayev.com>
	<20160508130617.GA14034@pek-khao-d1.corp.ad.wrs.com>
	<87zis0ifrw.fsf@babayev.com>
MIME-Version: 1.0
In-Reply-To: <87zis0ifrw.fsf@babayev.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] edgerouter: fix machine tune
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
X-List-Received-Date: Mon, 09 May 2016 12:38:30 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Sun, May 08, 2016 at 11:08:35AM -0700, Ruslan Babayev wrote:
> 
> Kevin Hao writes:
> 
> > On Fri, May 06, 2016 at 09:47:43AM -0700, Ruslan Babayev wrote:
> >> 
> >> Octeon+ lacks FPU
> >> 
> >> Signed-off-by: Ruslan Babayev <ruslan@babayev.com>
> >> ---
> >>  meta-yocto-bsp/conf/machine/edgerouter.conf | 1 +
> >>  1 file changed, 1 insertion(+)
> >> 
> >> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
> >> index 6343dfc..062d896 100644
> >> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
> >> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
> >> @@ -2,6 +2,7 @@
> >>  #@NAME: Edgerouter
> >>  #@DESCRIPTION: Edgerouter
> >>  
> >> +DEFAULTTUNE ?= "mips64-nf"
> >
> > The change looks fine to me. But unfortunately the libjpeg-turbo can't build
> > with the mips64-nf. I have filed a bug (9606) for it. I think we can merge
> > this once we fix the build failure.
> >
> 
> Without this change OpenSSH (ssh-keygen) dies with SIGILL at
> runtime. 

The ssh-keygen works pretty well for me. Could you show the steps to
reproduce this issue?

>How about blacklisting libjpeg for edgerouter? 

Or we can easily workaround this by using the method [1] suggested by
Peter Kjellerstedt.

>It's not very
> useful on a little headless router.

Agreed.

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=9606

Thanks,
Kevin

> 
> Thanks,
> Ruslan


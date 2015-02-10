Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2205EE00815; Tue, 10 Feb 2015 14:51:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 857E5E002F9
	for <poky@yoctoproject.org>; Tue, 10 Feb 2015 14:51:47 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1AMpgTB004465; Tue, 10 Feb 2015 22:51:42 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Skou7oM2n9fO; Tue, 10 Feb 2015 22:51:42 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t1AMpQAR004447
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 10 Feb 2015 22:51:37 GMT
Message-ID: <1423608686.20217.54.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Tue, 10 Feb 2015 22:51:26 +0000
In-Reply-To: <20150210184309.GB19902@xiaoyu.lan>
References: <20150210184309.GB19902@xiaoyu.lan>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: kernel.release being regenerated
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
X-List-Received-Date: Tue, 10 Feb 2015 22:51:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Holger,

On Tue, 2015-02-10 at 19:43 +0100, Holger Hans Peter Freyther wrote:
> I have an integration build that at least builds our sysmocom
> BTS layers against master of Yocto. Our nightly build started
> to be flaky and fail most of the time building the Linux kernel.
> 
> We are using a 3.10 LTS kernel for the product and it looks
> like the kernel.release will be (re)created in the build directory
> when the uImage is generated but also when "make modules" is
> called.
> 
> This means that shared_workdir in my case should be called at
> a later stage, e.g. after do_compilekernelmodules.
> 
> Did anyone else see flaky builds?

We've not see any on the yocto project autobuilders and I've not heard
reports of this from anyone else. I've cc'd Bruce in case he's aware of
anything and can chime in but the new code is being used in many places,
including with 3.10 kernels and I've not heard reports.

The fact the kernel.release is being recreated suggests something in the
configuration is changing (different environment or commandline
options?) or that there is a problem in your kernel to do with the
Makefiles and the dependencies of the kernel.release file.

You might reach a wider audience with questions like this on the yocto
or openembedded-core mailing lists btw, poky tends to be fairly quiet
these days although many of us are here too :)

Cheers,

Richard





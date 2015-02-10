Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E101E00815; Tue, 10 Feb 2015 10:50:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 402 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Feb 2015 10:50:18 PST
Received: from mail.sysmocom.de (mail.sysmocom.de [144.76.43.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCE90E005A9
	for <poky@yoctoproject.org>; Tue, 10 Feb 2015 10:50:18 -0800 (PST)
Received: from sangmingze-mail.local (unknown [IPv6:2001:5c0:1400:a::369])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 8C358A6C79
	for <poky@yoctoproject.org>; Tue, 10 Feb 2015 18:43:28 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.84)
	(envelope-from <holger@freyther.de>) id 1YLFm9-0003XY-9I
	for poky@yoctoproject.org; Tue, 10 Feb 2015 19:43:09 +0100
Date: Tue, 10 Feb 2015 19:43:09 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
To: poky@yoctoproject.org
Message-ID: <20150210184309.GB19902@xiaoyu.lan>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: kernel.release being regenerated
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
X-List-Received-Date: Tue, 10 Feb 2015 18:50:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I have an integration build that at least builds our sysmocom
BTS layers against master of Yocto. Our nightly build started
to be flaky and fail most of the time building the Linux kernel.

We are using a 3.10 LTS kernel for the product and it looks
like the kernel.release will be (re)created in the build directory
when the uImage is generated but also when "make modules" is
called.

This means that shared_workdir in my case should be called at
a later stage, e.g. after do_compilekernelmodules.

Did anyone else see flaky builds?

holger


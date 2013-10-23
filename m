Return-Path: <walters@verbum.org>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B221E01756
	for <poky@yoctoproject.org>; Wed, 23 Oct 2013 15:40:03 -0700 (PDT)
Received: from compute4.internal (compute4.nyi.mail.srv.osa [10.202.2.44])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id E1FAE22F24
	for <poky@yoctoproject.org>; Wed, 23 Oct 2013 18:40:01 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
	by compute4.internal (MEProxy); Wed, 23 Oct 2013 18:40:01 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:content-type:date
	:message-id:mime-version:content-transfer-encoding; s=smtpout;
	bh=GOc3gWytUQvq7BOFfO40IU3k8gU=; b=TpwgCY4k3NhB65hkAhNSm47BNb/V
	luIKUkkzEWO7/8cQ/YpBa4ukSTMdSwI3WZO1W2z8Ra6/9CgUs3cgM3VO9hALL9Bj
	fIuh2F5wWnCqU4kogUq/Rg+KKfmHFuFpoa18bbJ6jHuH/rYV5WPJWKETp/mY9T4F
	Jj7ycIPZcXpm2aI=
X-Sasl-enc: PYcMQ+wTCO7JzIMyqT/ii7g9V464tCW7OEY+NZAdUQtC 1382568001
Received: from [192.168.1.2] (unknown [66.31.18.51])
	by mail.messagingengine.com (Postfix) with ESMTPA id 8FAFBC00E94
	for <poky@yoctoproject.org>; Wed, 23 Oct 2013 18:40:01 -0400 (EDT)
From: Colin Walters <walters@verbum.org>
To: poky@yoctoproject.org
Date: Wed, 23 Oct 2013 18:40:00 -0400
Message-ID: <1382568000.6691.84.camel@localhost>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.3 (2.32.3-26.el6) 
Subject: Using linux-yocto_3.10 with dylan
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
X-List-Received-Date: Wed, 23 Oct 2013 22:40:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi, I have a system derived from Poky Dylan, it is currently using
linux-yocto-dev.bb.  Things were working fine up until recently when
that branch was rebased to 3.12, and the new linux-yocto-3.10 git repo
was made.  I had actually been unaware up until then that I was tracking
a git branch instead of a fixed revision.

Anyways, I'm trying now to continue using 3.10 with Dylan, but I'll be
honest - the way the linux-yocto kernel has the configuation built and
patches are applied is convoluted enough I'm having a lot of trouble
figuring out what's going wrong.  The error looks like this in do_patch:

DEBUG: Executing shell function do_patch
Deleted branch meta-temp (was f58e62b).
[INFO] validating against known patches  (qemux86-64-standard-meta)

... snip progress bar ...

error: patch failed: arch/arm/mm/fault.c:448
error: arch/arm/mm/fault.c: patch does not apply
To force apply this patch, use 'guilt push -f'
[ERROR] unable to complete push
pending patches are:
links/kernel-cache/arch/arm/v7-A15/ARM-LPAE-Invalidate-the-TLB-for-module-addresses-dur.patch
links/kernel-cache/arch/arm/arm-ARM-EABI-socketcall.patch
links/kernel-cache/arch/mips/malta-uhci-quirks-make-allowance-for-slow-4k-e-c.patch
links/kernel-cache/arch/mips/4kc-cache-tlb-hazard-tlbp-cache-coherency.patch
... continued

I've verified I can take current oe-core git master, change the kernel
to 3.10, and it builds OK.   The main variation is I have a small set of
config additions, but I don't know why this would result in the set of
patches changing.  Is there an way I can see which patches are being
applied and why?

At the moment I'm trying to isolate what configuration change is causing
this, but hopefully someone here will have a useful hint.  Thanks!




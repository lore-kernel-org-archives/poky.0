Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 366DB4C810B6
	for <poky@lists.pokylinux.org>; Thu, 20 Jan 2011 09:11:48 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BAEDC16604EA; Thu, 20 Jan 2011 08:11:47 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 507F31660462;
	Thu, 20 Jan 2011 08:11:47 -0700 (MST)
Message-ID: <4D3850B3.2030100@mlbassoc.com>
Date: Thu, 20 Jan 2011 08:11:47 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: What's taking so long??
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Jan 2011 15:11:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

My target platform/distro uses IPK and I have a local kernel
recipe which is based on the pre linux-yocto recipe that was
used by Poky.  When I build & package the kernel, I have
terrible performance - this is new, it used to be just fine.

Here's what I mean.  Building for my kernel and timing the
various steps, e.g.
   % time bitbake virtual/kernel -c compile

My kernel:
   compile            1m49s
   deploy             0m16s
   populate_sysroot   0m38s
   package           23m20s

Just to compare, using OTS Poky for BeagleBoard:
   compile            5m07s
   deploy             0m36s
   populate_sysroot   0m29s
   package            5m02s

That's a five-fold difference in the time to build & package
the kernel.

What am I doing [wrong?] that makes this so?
Would it be better if I switched to RPM like the BB is using?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


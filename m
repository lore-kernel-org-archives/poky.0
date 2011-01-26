Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BF124C811BF
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 00:58:23 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Jan 2011 22:58:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,379,1291622400"; d="scan'208";a="700748126"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by orsmga001.jf.intel.com with ESMTP; 25 Jan 2011 22:58:22 -0800
Message-ID: <4D3FC60D.5000003@intel.com>
Date: Tue, 25 Jan 2011 22:58:21 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1295993245.27814.133.camel@rex>
In-Reply-To: <1295993245.27814.133.camel@rex>
Cc: poky <poky@yoctoproject.org>
Subject: Re: Master stability update
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
X-List-Received-Date: Wed, 26 Jan 2011 06:58:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 02:07 PM, Richard Purdie wrote:
> We merged the features into master. I just want to highlight the status
> of the following issues:
>
> * pseudo problem causing failure of meta-toolchain and corruption of
> certain file permissions - fixed in master
>
> * the -live image issues some people and the autobuilder were seeing -
> fixed in master
>
> * the perf issue for linux-yocto-stable - fixed in master
>
> The following are know issues with master:
>
> * Using rm_work and switching machines to machines of the same
> "multimachine" architecture breaks.
>
> * When switching machines of the same "multimachine" architecture (e.g.
> emenlow to atom-pc), some sstate packages are changing checksums when at
> first glance they shouldn't (e.g. perl do_install). A quick scan of my
> sstate directory:
>
> $ ls *core2* | sed -e 's#core2-2-.*_#core2-2_#' | sort | uniq -cd | grep -v siginfo
>
> yields:
>
>        2 sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r6-core2-2_deploy-ipk.tgz
>        2 sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r6-core2-2_deploy-rpm.tgz
>        2 sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r6-core2-2_package.tgz
>        2 sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b197ead64f-r6-core2-2_populate-sysroot.tgz
>        2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_deploy-ipk.tgz
>        2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_deploy-rpm.tgz
>        2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_package.tgz
>        2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_populate-sysroot.tgz
>        2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_deploy-ipk.tgz
>        2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_deploy-rpm.tgz
>        2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_package.tgz
>        2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_populate-sysroot.tgz
>        2 sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_deploy-ipk.tgz
>        2 sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_deploy-rpm.tgz
>        2 sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_package.tgz
>        2 sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_populate-sysroot.tgz
>        2 sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r2-core2-2_deploy-ipk.tgz
>        2 sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r2-core2-2_deploy-rpm.tgz
>        2 sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r2-core2-2_package.tgz
>        2 sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635001bb7346dbc-r2-core2-2_populate-sysroot.tgz
>        2 sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3-core2-2_deploy-ipk.tgz
>        2 sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3-core2-2_deploy-rpm.tgz
>        2 sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3-core2-2_package.tgz
>        2 sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r3-core2-2_populate-sysroot.tgz
>
> which isn't too bad but shows there are some issues creeping in there.
> These need investigating and fixing, there is a strong rpm theme going
> on there. Also note this was just a minimal image, sato will likely
> reveal other issues.
>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

We are looking pretty good after the nightly has been running, a couple 
of issues were discovered by the Autobuilder, but we are more stable 
than we have been for a while.

Thanks to everyone for their hard work.

Seems that we have a couple of additional issues that need to be addressed.

1) Recent changes to the send-pull-request have caused the problem with 
the email now coming from poky-bounces.
    * dvhart or sgarman should investigate this please

2) atom-pc connman failure, Dongxiao may have already submitted a patch

3) emenlow rootfs failure, may be related to zypper/rpm, need to verify 
with Mark and his patch.

Thanks
     Sau!


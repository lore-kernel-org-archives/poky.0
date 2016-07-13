Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75525E0083D; Wed, 13 Jul 2016 11:51:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E40AE007A2
	for <poky@yoctoproject.org>; Wed, 13 Jul 2016 11:51:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jul 2016 11:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,358,1464678000"; d="scan'208";a="1021085251"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.5.47])
	([10.219.5.47])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2016 11:50:52 -0700
To: Prasant J <pj0585@gmail.com>, Poky Project <poky@yoctoproject.org>
References: <CAA2DH4uUeV6jTXp+ntpssyCFMt=AsYfu2ttbyZ_kexZOqLNtqg@mail.gmail.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <5e6a605c-5d44-49e8-cdfb-e6bab851f2da@linux.intel.com>
Date: Wed, 13 Jul 2016 13:53:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAA2DH4uUeV6jTXp+ntpssyCFMt=AsYfu2ttbyZ_kexZOqLNtqg@mail.gmail.com>
Subject: Re: Force exclude a package
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
X-List-Received-Date: Wed, 13 Jul 2016 18:51:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Including some log wont hurt in order to understand better the issue. 
Better if pastebin or errors.yp.org is used to show it.


On 07/11/2016 08:03 AM, Prasant J wrote:
> Hi,
>
> I'm building for the intel board (against jethro branch) and I have
> created my own custom layer. I have a generic query.
>
> My build is failing because 2 packages (that I did not include
> intentionally - speex & taglib) is failing to build. I have tried
> IMAGE_INSTALL_remove but does not help.
>
>
> How do I find out: what package or image feature forces a package to
> be included in the first place?
> Is there a way by which I can force exclude a package?
>
>
> Regards, Pj



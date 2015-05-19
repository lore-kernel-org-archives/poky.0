Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22E58E0098D; Tue, 19 May 2015 07:14:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 188F2E0027F
	for <poky@yoctoproject.org>; Tue, 19 May 2015 07:13:15 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 May 2015 07:13:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,458,1427785200"; d="scan'208";a="697163505"
Received: from ihoshino-mobl.amr.corp.intel.com (HELO
	swold-mobl.amr.corp.intel.com) ([10.255.86.199])
	by orsmga001.jf.intel.com with ESMTP; 19 May 2015 07:13:14 -0700
Message-ID: <555B44F9.3080707@linux.intel.com>
Date: Tue, 19 May 2015 07:13:13 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <1431991923-20314-1-git-send-email-sgw@linux.intel.com>
	<CAJTo0LZ=1V4EUxKUpomnqWb1jdeE+nvdO+dmrfFkYzY_CkQMOA@mail.gmail.com>
In-Reply-To: <CAJTo0LZ=1V4EUxKUpomnqWb1jdeE+nvdO+dmrfFkYzY_CkQMOA@mail.gmail.com>
Cc: Darren Hart <dvhart@linux.intel.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto-bsp: Add genericx86* BSP to use 3.19
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
X-List-Received-Date: Tue, 19 May 2015 14:14:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/19/2015 03:27 AM, Burton, Ross wrote:
> On 19 May 2015 at 00:32, Saul Wold <sgw@linux.intel.com> wrote:
>
>> Add the linux-yocto_3.19.bbappend to support the genericx86 BSP
>>
>
> Is there a corresponding patch to use 3.19 instead of 3.14?
>
Yes, sent!  I have been testing with a local.conf change that set the 
PREFERRED_VERSION, I validated that this builds the right kernel.

Sau!

> Ross
>


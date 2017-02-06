Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6070BE00992; Mon,  6 Feb 2017 04:01:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6159E007BA
	for <poky@yoctoproject.org>; Mon,  6 Feb 2017 04:01:17 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP; 06 Feb 2017 04:01:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,342,1477983600"; d="scan'208";a="61676584"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga005.fm.intel.com with ESMTP; 06 Feb 2017 04:01:13 -0800
To: poky@yoctoproject.org
References: <CAN0Cx9NS4MKQqTqWk=d3aydhRui7BB-S8vp8RiYtnz7x_q7KFQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <7b17b5ca-19c3-80ef-2753-16aca8fde94c@linux.intel.com>
Date: Mon, 6 Feb 2017 14:01:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAN0Cx9NS4MKQqTqWk=d3aydhRui7BB-S8vp8RiYtnz7x_q7KFQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] RFC: add new init system alternative to poky
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
X-List-Received-Date: Mon, 06 Feb 2017 12:01:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/05/2017 10:23 PM, Niko Mauno wrote:
> This commit adds preliminary support for modern init system named OpenRC.
> It currently relies on /sbin/init from SysVinit.

The patches should go to the openembedded-core list. Also, you should 
explain why this belongs in oe-core.

Any new feature like this one is increasing maintenance burden, and 
needs to be properly, regularly tested in an automated way. So you 
should include some tests for it in meta/lib/oeqa/

Alex


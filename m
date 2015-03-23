Return-Path: <dvhart@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C50BFE00837; Mon, 23 Mar 2015 12:18:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99EF2E006DA
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 12:18:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Mar 2015 12:18:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,453,1422950400"; d="scan'208";a="669421537"
Received: from derekt-mobl1.amr.corp.intel.com (HELO [10.252.138.133])
	([10.252.138.133])
	by orsmga001.jf.intel.com with ESMTP; 23 Mar 2015 12:17:57 -0700
User-Agent: Microsoft-MacOutlook/14.4.8.150116
Date: Mon, 23 Mar 2015 12:17:54 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>,
	Khem Raj <raj.khem@gmail.com>
Message-ID: <D135B4A7.C34CD%dvhart@linux.intel.com>
Thread-Topic: [poky] [PATCH 0/1] yocto-bsp updates for 1.8
References: <cover.1427082458.git.tom.zanussi@linux.intel.com>
	<CAMKF1sr8QU8CauiopAYKNF++cfjWr3Veax-PVRtBX3AFjEeCqQ@mail.gmail.com>
	<1427113748.5800.7.camel@picadillo>
	<CAMKF1spCkO4pb5UCu1kv7dYFh2kiEAu2gm03-Q6bO2TScaFe8A@mail.gmail.com>
	<CADkTA4NPCb9QoBhqALbv_AXtey=3n=GzmCyBBuchEHXp4peYCw@mail.gmail.com>
In-Reply-To: <CADkTA4NPCb9QoBhqALbv_AXtey=3n=GzmCyBBuchEHXp4peYCw@mail.gmail.com>
Mime-version: 1.0
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] yocto-bsp updates for 1.8
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
X-List-Received-Date: Mon, 23 Mar 2015 19:18:04 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

On 3/23/15, 9:26 AM, "Bruce Ashfield" <bruce.ashfield@gmail.com> wrote:

>On Mon, Mar 23, 2015 at 11:05 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Mar 23, 2015 5:29 AM, "Tom Zanussi" <tom.zanussi@linux.intel.com>
>>wrote:
>>>
>>> Hi Khem,
>>>
>>> yocto-bsp updates are supposed to match the set of kernels supported
>>>for
>>> a new release.  For 1.8, that includes 3.14, which is the most recent
>>> LTSI kernel.  1.7 is still available for people who need the old (3.10)
>>> LTSI kernel.
>>
>> So we do not support latest LTS it's only LTSI?
>
>Correct. That's what it has been for the past two years. Latest LTSI plus
>the latest mainline kernel released within our development window.


While we try to align the current release with the next LTSI, that's very
difficult to do. Note that the 3.18 longterm kernel is not a Greg KH
longterm kernel, which means 3.18 will most likely NOT be the next LTSI.

https://www.kernel.org/category/releases.html


-- 
Darren Hart
Intel Open Source Technology Center





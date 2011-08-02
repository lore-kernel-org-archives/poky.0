Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F14A4C8009A
	for <poky@yoctoproject.org>; Tue,  2 Aug 2011 15:35:57 -0500 (CDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Aug 2011 13:35:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,307,1309762800"; 
   d="scan'208";a="3516841"
Received: from unknown (HELO [10.255.14.78]) ([10.255.14.78])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Aug 2011 13:35:55 -0700
Message-ID: <4E385FAA.9090300@linux.intel.com>
Date: Tue, 02 Aug 2011 13:35:54 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>	<2273c01d6547d6d1eb5b8a60dd061c5d3722856d.1311603837.git.paul.eggleton@linux.intel.com>	<4ADD3708-C485-47E1-9BD6-B4839E5E8151@dominion.thruhere.net>
	<201107251549.07198.paul.eggleton@linux.intel.com>
In-Reply-To: <201107251549.07198.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 6/6] meta-yocto/conf/local.conf.sample: add	rm_work example
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
X-List-Received-Date: Tue, 02 Aug 2011 20:35:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/25/2011 07:49 AM, Paul Eggleton wrote:
> On Monday 25 July 2011 15:44:32 Koen Kooi wrote:
>> Op 25 jul. 2011, om 16:28 heeft Paul Eggleton het volgende geschreven:
>>> +# Uncomment this to delete work files as the build progresses rather
>>> than +# keeping them around, which saves a lot of disk space. However,

This reads as keeping them around save a lot of disk space to me. You
can add a comma after progresses, or reword to group the modifier with
the subject.

>>> if any +# problems arise it can be useful to have the work files to
>>> examine, which +# is why it is off by default.
>>> +#INHERIT += "rm_work"
>>
>> That implies that you expect problems to happen by default :)
> 
> It does say "if" ;)  I'm happy to take suggestions on an alternative 
> comment...

If we assume people will be adding and developing recipes as part of the
typical usage model, then yes, I would expect problems to happen by
default - it is development afterall. :)


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


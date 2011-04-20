Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A5514C80581
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 10:23:24 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Apr 2011 08:23:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="736079170"
Received: from unknown (HELO [10.255.12.227]) ([10.255.12.227])
	by orsmga001.jf.intel.com with ESMTP; 20 Apr 2011 08:23:23 -0700
Message-ID: <4DAEFA6F.3010503@linux.intel.com>
Date: Wed, 20 Apr 2011 08:23:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <BANLkTikxXCxeCfqnSC9kKRqVvCgF5=Ju+Q@mail.gmail.com>
	<4DA396CF.4080804@mentor.com>
In-Reply-To: <4DA396CF.4080804@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: requesting input on specs for a new Poky build server
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
X-List-Received-Date: Wed, 20 Apr 2011 15:23:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/11/2011 05:03 PM, Tom Rini wrote:
> On 04/11/2011 02:50 PM, Joe Sauer wrote:
>> I have the pleasure of spec'ing out a new server for doing Poky builds
>> (we are at Green 3.3.1).  As a reference point, my desktop machine is a
>> quad-Xeon @ 2.5 GHz with 4GB of RAM and SATA disk.  I can do a full
>> "clean" build for our LabQuest (armv5te) in 2 hours.
>>
>> Here are some questions I would like to get feedback on regarding a
>> build server:
>>
>> 1.  Would I get better build time going with more procs (8?) or faster
>> procs (3+ GHz)?

I would go with more CPUs before I went with faster CPUs (at least from
2.5 to 3.3). Poky builds scale nicely to at least 16 physical cores (ie
4 quad-cores, hyperthreading is effective as well, but not so much as
physical cores), so until you get to that point, more is better in my
opinion.

>>
>> 2.  Are SATA drives OK, or should I go with RAID to get better R/W
>> performance?

A RAID 0 array of SATA drives is your best performing option (short of a
RAID 0 SSD array). You have to trade this extra performance for lower
reliability. RAID 0 has no redundancy, if one drive fails, all your data
is gone - so only keep recreatable data on the RAID array. I'd start
without RAID and test, see if you are maximizing your IO bandwidth.

>>
>> 3.  If I have to choose one or the other, should I go with faster procs
>> or faster disk I/O?

Provided you have a reasonably decent SATA controller on board, I'd opt
for _more_ procs.

> 
> If you're on somewhat of a budget, the general rule of thumb about going
> for last months fastest processor (as opposed to the one just released)
> is probably a wise bet.  And you probably want 8-12GB ram if you can fit it.
> 
> The only real and not always obvious trick is if you can afford an SSD
> (and afford to kill it and replace it every so often) doing your builds
> there is a real big win.

The failures are the scary part as you mentioned. I keep my git
repositories and downloads on an SSD and do my builds on a 2 disk RAID
array. I usually see either build dependencies or CPU as the bottleneck
before IO.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


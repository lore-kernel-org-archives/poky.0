Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 129574C80044
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 17:41:37 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Apr 2011 15:41:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,221,1301900400"; d="scan'208";a="629485743"
Received: from unknown (HELO [10.255.12.222]) ([10.255.12.222])
	by orsmga002.jf.intel.com with ESMTP; 15 Apr 2011 15:41:36 -0700
Message-ID: <4DA8C9A0.3060208@linux.intel.com>
Date: Fri, 15 Apr 2011 15:41:36 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <201104151329.17014.paul.eggleton@linux.intel.com>
	<BANLkTi=GxLBMpYEbyooDAbHb9jLBB8h88w@mail.gmail.com>
In-Reply-To: <BANLkTi=GxLBMpYEbyooDAbHb9jLBB8h88w@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: NFS root & shutdown/reboot
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
X-List-Received-Date: Fri, 15 Apr 2011 22:41:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/15/2011 06:11 AM, Bruce Ashfield wrote:
> On Fri, Apr 15, 2011 at 8:29 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> Hi all,
>>
>> I have been working on smoothing out some things to do with NFS root this week
>> and I have come across one situation that I'm not quite sure of.
>>
>> At the moment when you shut down a Poky NFS root-based system or reboot it, it
>> gets all the way to the end and then hangs, with an error "nfs: server
>> myserver not responding, still trying". I tracked this down to the -i option
>> that is passed to the final call to shutdown and reboot which is supposed to
>> shut down all network interfaces - if you remove this then it works fine.
>>
>> I'm not sure of the reason for having the -i option, but it was suggested to
>> me that it might be in order to release DHCP leases where applicable; also
>> some systems might otherwise leave their network adapters powered up when the
>> system is shut down in order to receive wake-on-LAN requests, and if you're
>> not using that feature you're just wasting power. I'm guessing for most
>> situations we would want to retain -i. However, where the system is running
>> from an NFS root it would seem that we would have to omit this option, unless
>> there is another solution I'm not aware of.
> 
> I can't say exactly when this is required either, but I can say that we've
> also removed -i from our NFS root boots in the past, for just what you
> are describing above.
> 
> Shutting down and getting the interface down in the wrong order causes
> the obvious problems you'd expect with a NFS root hanging and not
> being able to complete the rest of the process.
> 
>>
>> I've done some googling and not come up with anything concrete in terms of how
>> this should be handled correctly. Any suggestions?
> 
> My only suggestion is to make it not present by default, and enable
> it (-i) when a real reason for it is found (i.e. someone really wants
> the nic to shutdown for a power profile). Detecting a NFS root
> (and if the root continues to be NFS after boot) could be more error
> prone that making -i the default.
> 
> Just my opinion,
> 

Agreed. Perhaps this needs some kind of a machine config setting that
feeds into how shutdown is called, sort of like formfactor feeds into
matchbox?

--
Darren

> Bruce
> 
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre (UK)
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
> 
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


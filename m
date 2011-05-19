Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E83E4C800A6
	for <poky@yoctoproject.org>; Thu, 19 May 2011 09:43:06 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 May 2011 07:43:06 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.7.199.52]) ([10.7.199.52])
	by orsmga002.jf.intel.com with ESMTP; 19 May 2011 07:43:06 -0700
Message-ID: <4DD523DC.1030504@intel.com>
Date: Thu, 19 May 2011 07:06:20 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4DCC0662.6060404@mlbassoc.com> <4DCC0966.2010701@windriver.com>
	<4DCC0AAA.3080300@mlbassoc.com>
In-Reply-To: <4DCC0AAA.3080300@mlbassoc.com>
Subject: Re: QEMU networking
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
X-List-Received-Date: Thu, 19 May 2011 14:43:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2011 09:28 AM, Gary Thomas wrote:
> On 05/12/2011 10:23 AM, Mark Hatle wrote:
>> I had the same problem on my Fedora host. It turned out that the
>> iptables rules
>> were prohibiting the forwarding of packets from one network to
>> another, causing
>> the route to the internet to black hole.
>>
>> Check that you don't have any IP tables that are preventing the
>> routing from
>> working.
>
> I don't have any tables that would cause this on my box other than what is
> set up by runqemu (it adds some NAT/MASQUERADE rules). I have the same
> behaviour
> on Fedora and Ubuntu hosts.
>
> That said, it's the configuration on the target that's causing problems.
> I don't know what's getting in there and changing the routing periodically.

Hi Gary,

Did you ever find out what was causing this? I'd like to know for reference.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center


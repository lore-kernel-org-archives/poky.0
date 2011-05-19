Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E4644C800AC
	for <poky@yoctoproject.org>; Thu, 19 May 2011 09:48:15 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id DB7B116603B4; Thu, 19 May 2011 08:48:13 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2956B166025A;
	Thu, 19 May 2011 08:48:13 -0600 (MDT)
Message-ID: <4DD52DAD.7090200@mlbassoc.com>
Date: Thu, 19 May 2011 08:48:13 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <4DCC0662.6060404@mlbassoc.com>
	<4DCC0966.2010701@windriver.com>	<4DCC0AAA.3080300@mlbassoc.com>
	<4DD523DC.1030504@intel.com>
In-Reply-To: <4DD523DC.1030504@intel.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Thu, 19 May 2011 14:48:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/19/2011 08:06 AM, Scott Garman wrote:
> On 05/12/2011 09:28 AM, Gary Thomas wrote:
>> On 05/12/2011 10:23 AM, Mark Hatle wrote:
>>> I had the same problem on my Fedora host. It turned out that the
>>> iptables rules
>>> were prohibiting the forwarding of packets from one network to
>>> another, causing
>>> the route to the internet to black hole.
>>>
>>> Check that you don't have any IP tables that are preventing the
>>> routing from
>>> working.
>>
>> I don't have any tables that would cause this on my box other than what is
>> set up by runqemu (it adds some NAT/MASQUERADE rules). I have the same
>> behaviour
>> on Fedora and Ubuntu hosts.
>>
>> That said, it's the configuration on the target that's causing problems.
>> I don't know what's getting in there and changing the routing periodically.
>
> Hi Gary,
>
> Did you ever find out what was causing this? I'd like to know for reference.

No, I only saw it on QEMU and not a native build.  I've not had
time to look at it since - using the native build helped me diagnose
the problem I was checking, so I didn't need QEMU any more.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


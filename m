Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99B134C810AC
	for <poky@yoctoproject.org>; Thu, 12 May 2011 11:28:27 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 442CE1660339; Thu, 12 May 2011 10:28:27 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2D2A116602EA;
	Thu, 12 May 2011 10:28:26 -0600 (MDT)
Message-ID: <4DCC0AAA.3080300@mlbassoc.com>
Date: Thu, 12 May 2011 10:28:26 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4DCC0662.6060404@mlbassoc.com> <4DCC0966.2010701@windriver.com>
In-Reply-To: <4DCC0966.2010701@windriver.com>
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
X-List-Received-Date: Thu, 12 May 2011 16:28:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2011 10:23 AM, Mark Hatle wrote:
> I had the same problem on my Fedora host.  It turned out that the iptables rules
> were prohibiting the forwarding of packets from one network to another, causing
> the route to the internet to black hole.
>
> Check that you don't have any IP tables that are preventing the routing from
> working.

I don't have any tables that would cause this on my box other than what is
set up by runqemu (it adds some NAT/MASQUERADE rules).  I have the same behaviour
on Fedora and Ubuntu hosts.

That said, it's the configuration on the target that's causing problems.
I don't know what's getting in there and changing the routing periodically.

> On 5/12/11 11:10 AM, Gary Thomas wrote:
>> I'm having a devil of a time getting networking to work when
>> I run qemu (a Poky derived image, of course!)  I'm running this
>> on a box which itself is NAT'd to the real internet, like this:
>>
>>      +-------------+        +------------------+
>>      |   QEMUarm   |<------>|   My_Desktop     |<---->  Internet
>>      | 192.168.7.2 |        |   192.168.7.1    |
>>      +-------------+        |   192.168.1.125  |
>>                             +------------------+
>>
>> Firstly, something is messing with the routing tables over time
>> and I can't get past the first hop.  If I reconfigure the network
>> on the QEMU system like this:
>>     # ifconfig eth0 down
>>     # ifconfig eth0 up
>>     # route add default gw 192.168.7.1
>> I can then access past "My_Desktop", e.g.
>>     # ping 192.168.1.101
>>        -or-
>>     # ping 74.125.225.19    (www.google.com)
>> This works fine and the routing table (route.good) is correct.
>>
>> A little while later (minutes), the routing changes and now I can't
>> get past 'My_Desktop' (i.e. I can ping 192.168.1.125, but not 192.168.1.101)
>> The routing table has changed (route.bad)
>>
>> What causes this?  I don't have avahi running anywhere and I've explicitly
>> disabled that daemon on the QEMU system.
>>
>> Finally, there seems to be no name resolution - /etc/resolv.conf comes
>> up as:
>>     nameserver 127.0.0.1
>> If I want to resolve any real names, I have to update it manually.
>>
>> Note: I'm running core-image-sato with web-webkit added using zypper.
>>
>> Are others actually using the network with QEMU images?  like this?
>>
>>
>>
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


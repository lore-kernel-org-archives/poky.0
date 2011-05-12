Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E44364C810AF
	for <poky@yoctoproject.org>; Thu, 12 May 2011 11:32:54 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4CGWqG5005234
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 May 2011 09:32:52 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 12 May 2011 09:32:51 -0700
Message-ID: <4DCC0BB3.6090309@windriver.com>
Date: Thu, 12 May 2011 11:32:51 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4DCC0662.6060404@mlbassoc.com> <4DCC0966.2010701@windriver.com>
	<4DCC0AAA.3080300@mlbassoc.com>
In-Reply-To: <4DCC0AAA.3080300@mlbassoc.com>
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
X-List-Received-Date: Thu, 12 May 2011 16:32:55 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 5/12/11 11:28 AM, Gary Thomas wrote:
> On 05/12/2011 10:23 AM, Mark Hatle wrote:
>> I had the same problem on my Fedora host.  It turned out that the iptables rules
>> were prohibiting the forwarding of packets from one network to another, causing
>> the route to the internet to black hole.
>>
>> Check that you don't have any IP tables that are preventing the routing from
>> working.
> 
> I don't have any tables that would cause this on my box other than what is
> set up by runqemu (it adds some NAT/MASQUERADE rules).  I have the same behaviour
> on Fedora and Ubuntu hosts.
> 
> That said, it's the configuration on the target that's causing problems.
> I don't know what's getting in there and changing the routing periodically.

Ahh, sorry, my reading comprehension has gone away today.

Check if you have a dhcp client running on the target side.  It's possible that
it keeps requesting updates and there is a bug (or "feature") in the client that
resets your routes automatically?

--Mark

>> On 5/12/11 11:10 AM, Gary Thomas wrote:
>>> I'm having a devil of a time getting networking to work when
>>> I run qemu (a Poky derived image, of course!)  I'm running this
>>> on a box which itself is NAT'd to the real internet, like this:
>>>
>>>      +-------------+        +------------------+
>>>      |   QEMUarm   |<------>|   My_Desktop     |<---->  Internet
>>>      | 192.168.7.2 |        |   192.168.7.1    |
>>>      +-------------+        |   192.168.1.125  |
>>>                             +------------------+
>>>
>>> Firstly, something is messing with the routing tables over time
>>> and I can't get past the first hop.  If I reconfigure the network
>>> on the QEMU system like this:
>>>     # ifconfig eth0 down
>>>     # ifconfig eth0 up
>>>     # route add default gw 192.168.7.1
>>> I can then access past "My_Desktop", e.g.
>>>     # ping 192.168.1.101
>>>        -or-
>>>     # ping 74.125.225.19    (www.google.com)
>>> This works fine and the routing table (route.good) is correct.
>>>
>>> A little while later (minutes), the routing changes and now I can't
>>> get past 'My_Desktop' (i.e. I can ping 192.168.1.125, but not 192.168.1.101)
>>> The routing table has changed (route.bad)
>>>
>>> What causes this?  I don't have avahi running anywhere and I've explicitly
>>> disabled that daemon on the QEMU system.
>>>
>>> Finally, there seems to be no name resolution - /etc/resolv.conf comes
>>> up as:
>>>     nameserver 127.0.0.1
>>> If I want to resolve any real names, I have to update it manually.
>>>
>>> Note: I'm running core-image-sato with web-webkit added using zypper.
>>>
>>> Are others actually using the network with QEMU images?  like this?
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> 



Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 863C84C81067
	for <poky@yoctoproject.org>; Thu, 12 May 2011 11:16:40 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 323C3166032F; Thu, 12 May 2011 10:16:40 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A3A06166031D;
	Thu, 12 May 2011 10:16:34 -0600 (MDT)
Message-ID: <4DCC07E2.7030203@mlbassoc.com>
Date: Thu, 12 May 2011 10:16:34 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4DCC0662.6060404@mlbassoc.com>
In-Reply-To: <4DCC0662.6060404@mlbassoc.com>
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
X-List-Received-Date: Thu, 12 May 2011 16:16:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2011 10:10 AM, Gary Thomas wrote:
> I'm having a devil of a time getting networking to work when
> I run qemu (a Poky derived image, of course!) I'm running this
> on a box which itself is NAT'd to the real internet, like this:
>
> +-------------+ +------------------+
> | QEMUarm |<------>| My_Desktop |<----> Internet
> | 192.168.7.2 | | 192.168.7.1 |
> +-------------+ | 192.168.1.125 |
> +------------------+
>
> Firstly, something is messing with the routing tables over time
> and I can't get past the first hop. If I reconfigure the network
> on the QEMU system like this:
> # ifconfig eth0 down
> # ifconfig eth0 up
> # route add default gw 192.168.7.1
> I can then access past "My_Desktop", e.g.
> # ping 192.168.1.101
> -or-
> # ping 74.125.225.19 (www.google.com)
> This works fine and the routing table (route.good) is correct.
>
> A little while later (minutes), the routing changes and now I can't
> get past 'My_Desktop' (i.e. I can ping 192.168.1.125, but not 192.168.1.101)
> The routing table has changed (route.bad)

Actually, I can only ping 192.168.7.1 - nothing outside of that subnet works.

>
> What causes this? I don't have avahi running anywhere and I've explicitly
> disabled that daemon on the QEMU system.
>
> Finally, there seems to be no name resolution - /etc/resolv.conf comes
> up as:
> nameserver 127.0.0.1
> If I want to resolve any real names, I have to update it manually.
>
> Note: I'm running core-image-sato with web-webkit added using zypper.
>
> Are others actually using the network with QEMU images? like this?
>
>
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


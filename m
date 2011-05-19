Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 582654C800A6
	for <poky@yoctoproject.org>; Thu, 19 May 2011 17:46:39 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 May 2011 15:46:38 -0700
X-ExtLoop1: 1
Received: from vorpal.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 19 May 2011 15:46:38 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 19 May 2011 15:50:14 -0700
In-Reply-To: <4DCC0662.6060404@mlbassoc.com>
References: <4DCC0662.6060404@mlbassoc.com>
X-Mailer: Evolution 3.0.1 (3.0.1-1.fc15) 
Message-ID: <1305845414.9983.17.camel@vorpal.jf.intel.com>
Mime-Version: 1.0
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
X-List-Received-Date: Thu, 19 May 2011 22:46:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-05-12 at 10:10 -0600, Gary Thomas wrote:
> I'm having a devil of a time getting networking to work when
> I run qemu (a Poky derived image, of course!)  I'm running this
> on a box which itself is NAT'd to the real internet, like this:
> 
>     +-------------+        +------------------+
>     |   QEMUarm   |<------>|   My_Desktop     |<----> Internet
>     | 192.168.7.2 |        |   192.168.7.1    |
>     +-------------+        |   192.168.1.125  |
>                            +------------------+
> 
> Firstly, something is messing with the routing tables over time
> and I can't get past the first hop.  If I reconfigure the network
> on the QEMU system like this:
>    # ifconfig eth0 down
>    # ifconfig eth0 up
>    # route add default gw 192.168.7.1
> I can then access past "My_Desktop", e.g.
>    # ping 192.168.1.101
>       -or-
>    # ping 74.125.225.19    (www.google.com)
> This works fine and the routing table (route.good) is correct.
> 
> A little while later (minutes), the routing changes and now I can't
> get past 'My_Desktop' (i.e. I can ping 192.168.1.125, but not 192.168.1.101)
> The routing table has changed (route.bad)
> 
> What causes this?  I don't have avahi running anywhere and I've explicitly
> disabled that daemon on the QEMU system.
> 
> Finally, there seems to be no name resolution - /etc/resolv.conf comes
> up as:
>    nameserver 127.0.0.1
> If I want to resolve any real names, I have to update it manually.
> 
> Note: I'm running core-image-sato with web-webkit added using zypper.

I suspect ConnMan may have something to do with it. Though that's only a
suspicion based on some past experience.

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project Build Monkey
        Intel Open Source Technology Centre



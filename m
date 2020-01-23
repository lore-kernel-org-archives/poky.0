Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.4105.1579760188934229074
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 22:16:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hQVc6MpP;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id c16so2359356qko.6
        for <poky@lists.yoctoproject.org>; Wed, 22 Jan 2020 22:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1VJlQlbgT4CpBdAYXqH2yFFrlOeI5L7JVPdwmTv7NKs=;
        b=hQVc6MpPvAXnWSv/uva+AMprOPOCiYm1tt0hrHUIXQ/nojpMUJGUXCG5nVIz1GW6+t
         tovnPzdNTenlq/oCZi+JfZQn+AO5CZ4+gvTuNFJJ45CiRbbo0QmDmWHkGdie0dCPnd94
         A7UeF3YPlstdw3shPnCxGsJM5lGCGa6Gmxu1gPIKsbqDPqvKXjlJmxKrThBd5SfmGB5w
         vRYTQZePgh9eWxK2YZHLvhwWJ98zmLupNrEJgOsHDeq5qhnld7AAdeWOw8g+18l7fVSU
         rb1gcSSlotlFuiEZT6znRZQ6tfVuhOgkLC5DFUEfpipu18jiftlmQoNbmT7Dbr53IbqK
         +uzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1VJlQlbgT4CpBdAYXqH2yFFrlOeI5L7JVPdwmTv7NKs=;
        b=VG3uGglgTTJ8Jr4DurcOJMQtc7Bd1GOVI069EZ9PnDxghMgASoUIHaOHqpywpE5y4U
         3kCFCEIbIPIxd1Nnef8t2vNjs67IrWtvWavuJ8U83Ay5vDVNbAwKag2okJFX2T81bQLX
         sZJJEroCryynP8nZA5DfpDA+w31b+O5Jip3bxwda8L6uLUPqw71PdDy3c6MTZCoqMQj+
         CieaLKfH8GEXRoAAZdMCQL6eq4NQFDn169dXzxk7fPWNJnD6XOultXe6IYcEYcj1K5x8
         g6ta5qEjecUqlx/lk4bhpRG5vkUrsPoS/dFvgBs8JXsJFHt/jHssKYVyO6W3lMMGC9tI
         rcsw==
X-Gm-Message-State: APjAAAVqIJlowTcH/PDrCffGPs+1zcCcoCwjcKelyBpzrFk2NzKeOgKd
	aFeJe/mpbv+FZD3sFoc++O9FAW+rs4xPMlwF1qliK771
X-Google-Smtp-Source: APXvYqywsz3OZJK13sbdN11gQ+mcvepCjawqm9vyDYpdhIFW0wZs/vlBHteuv0VI6pYxgbMSzQp8FXP6GQT8WCkO67E=
X-Received: by 2002:a37:bf82:: with SMTP id p124mr14576119qkf.337.1579760187689;
 Wed, 22 Jan 2020 22:16:27 -0800 (PST)
MIME-Version: 1.0
References: <V5kT.1579720627445078822.cu1I@lists.yoctoproject.org>
 <CAMKF1so5G6towiFSmAmxg7npOTEdu_x1iSMP9C+MCO2cA6sASw@mail.gmail.com> <7547719e-d9f0-7a0c-7ffc-ad1f25fe8f89@rawbw.com>
In-Reply-To: <7547719e-d9f0-7a0c-7ffc-ad1f25fe8f89@rawbw.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 22 Jan 2020 22:16:01 -0800
Message-ID: <CAMKF1spgKUgyQb6fYGA1VWk7X3HQrtAVgxv--a88erMSoNZ7Ww@mail.gmail.com>
Subject: Re: [poky] How to make the image to get the IP (over DHCP) and listen for ssh connections?
To: Yuri <yuri@rawbw.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 22, 2020 at 9:07 PM Yuri <yuri@rawbw.com> wrote:
>
> On 2020-01-22 11:41, Khem Raj wrote:
> > which image have you built ? and also check
>
>
> MACHINE=cyclone5
>
> kernel linux-altera
>
> UBOOT_CONFIG="de0-nano-soc"
>
> Linux cyclone5 5.4.0-altera #1 SMP Wed Jan 22 03:07:47 UTC 2020 armv7l
> GNU/Linux
>
>
> > ifconfig -a
> >
> > and see if it shows the network interface you are expecting. It could
> > be that the device itself is not initialized due to
> > perhaps driver issues or some such.
>
>
> # ifconfig -a
> can0      Link encap:UNSPEC  HWaddr
> 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00
>            NOARP  MTU:16  Metric:1
>            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>            TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>            collisions:0 txqueuelen:10
>            RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>            Interrupt:28
>
> eth0      Link encap:Ethernet  HWaddr 7A:A5:58:54:1E:3C
>            inet addr:192.168.5.110  Bcast:192.168.5.255 Mask:255.255.255.0
>            inet6 addr: fe80::78a5:58ff:fe54:2e3e/64 Scope:Link
>            UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>            RX packets:1184 errors:0 dropped:0 overruns:0 frame:0
>            TX packets:187 errors:0 dropped:0 overruns:0 carrier:0
>            collisions:0 txqueuelen:1000
>            RX bytes:88695 (86.6 KiB)  TX bytes:45370 (44.3 KiB)
>            Interrupt:33 Base address:0xe000
>
> lo        Link encap:Local Loopback
>            inet addr:127.0.0.1  Mask:255.0.0.0
>            inet6 addr: ::1/128 Scope:Host
>            UP LOOPBACK RUNNING  MTU:65536  Metric:1
>            RX packets:16 errors:0 dropped:0 overruns:0 frame:0
>            TX packets:16 errors:0 dropped:0 overruns:0 carrier:0
>            collisions:0 txqueuelen:1000
>            RX bytes:1576 (1.5 KiB)  TX bytes:1576 (1.5 KiB)
>
> sit0      Link encap:IPv6-in-IPv4
>            NOARP  MTU:1480  Metric:1
>            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
>            TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
>            collisions:0 txqueuelen:1000
>            RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
>
>
> Routing table:
>
> # route -n
> Kernel IP routing table
> Destination     Gateway         Genmask         Flags Metric Ref    Use
> Iface
> 192.168.5.0     0.0.0.0         255.255.255.0   U     0 0        0 eth0
>
>
> No kernel modules.
>
>
> But pings don't go through. wireshark on the ping's target machine on
> LAN doesn't register ping packets. TCP connections also aren't
> established: No route to host
>
> Something is wrong with the network interface.
>

what happens if you run udhcpc -ietth0

>
> Another problem: how to increase the disk size in the image so that a
> larger portion of the sdcard is available? Currently the root device is
> only 18MB.
>
> Also how to install opkg?
>
>
> Yuri
>
>

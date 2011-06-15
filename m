Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33A6E4C800B3
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 06:01:20 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QWnqY-0001d8-Q8
	for poky@pokylinux.org; Wed, 15 Jun 2011 13:01:18 +0200
Received: from 79.167.211.68 ([79.167.211.68])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 13:01:18 +0200
Received: from gmane by 79.167.211.68 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 13:01:18 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 15 Jun 2011 14:01:04 +0300
Organization: Reliable Embedded Systems
Message-ID: <4DF890F0.1020307@reliableembeddedsystems.com>
References: <it8ite$i96$1@dough.gmane.org> <4DF80B84.9000304@linux.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 79.167.211.68
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4DF80B84.9000304@linux.intel.com>
Subject: Re: bernard 5.0.1 and beagle-xm rev c
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Jun 2011 11:01:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 06/15/2011 04:31 AM, Darren Hart wrote:
> 
> Does USB work in general on Rev C?
> 
> --
> Darren
> 

I built a minimal-image + usbutils

REV A3 with poky:

root@beagleboard:~# lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.
Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.

REV C with Angstrom:

root@beagleboard:~# lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 002 Device 002: ID 0424:9514 Standard Microsystems Corp.
Bus 002 Device 003: ID 0424:ec00 Standard Microsystems Corp.

REV C with poky:

root@beagleboard:~# lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

This looks like the USB hub on Bus 002 is not found and hence there is
also no Ethernet, which fits somehow into what I've found on
http://beagleboard.org/support/faq

# What do I need to do to get my software running on a BeagleBoard-xM rev C?

    * The revision ID on the board and the control signal for powering
the USB hub on the board changed between xM rev B and xM rev C. Older
versions of x-loader/MLO, u-boot and the Linux kernel did not properly
utilize the revision ID settings on the board, so xM rev B boards didn't
actually include settings different than xM rev A to work-around the
issue. On xM rev C, with the USB hub changes on the board, it became
necessary to no longer use this work-around and to actually change the
board revision ID. This causes older software to break. There is a bit
more discussion on this on the mailing list.

    * If you utilize the latest mainline x-loader (
http://gitorious.org/x-loader ) and u-boot (
http://git.denx.de/?p=u-boot.git ), including the variations shipped on
the microSD card on the board (available at circuitco.com/support ), the
revision will be properly detected.

    * The mainline kernel does not yet include the patch required to
utilize the proper polarity for the USB hub power enable. You can take a
look at this candidate patch for an idea of what to fix and potentially
apply this patch (
http://gitorious.org/beagleboard-validation/linux/commit/bfca58987039791522d1821e0506f8a113a0c239
) to your kernel. If you assemble an image of Angstrom using Narcissus,
you'll get a working kernel using the sources in Open Embedded.

I did not dig too much into the issue if and where changes need to be
made (x-loader, u-boot, kernel)

Judging from the u-boot output I think it needs to be patched:
Beagle unknown 0x02

u-boot which comes with Angstrom:
Beagle xM Rev C

I'm sure Koen can tell us more about this and also what patches should
be applied where;)

Regards,

Robert
..."As soon as we started programming, we found to our surprise that it
wasn't as easy to get programs right as we had thought.  Debugging had
to be discovered.  I can remember the exact instant when I realized that
a large part of my life from then on was going to be spent in finding
mistakes in my own programs." - Maurice Wilkes discovers debugging, 1949

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1




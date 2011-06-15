Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id DBCBC4C8009D
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 14:05:50 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QWvPP-0000oL-VL
	for poky@pokylinux.org; Wed, 15 Jun 2011 21:05:47 +0200
Received: from 79.167.211.68 ([79.167.211.68])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 21:05:47 +0200
Received: from gmane by 79.167.211.68 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 21:05:47 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 15 Jun 2011 22:05:31 +0300
Organization: Reliable Embedded Systems
Message-ID: <itavps$v4d$1@dough.gmane.org>
References: <it8ite$i96$1@dough.gmane.org>
	<4DF80B84.9000304@linux.intel.com>	<4DF890F0.1020307@reliableembeddedsystems.com>	<4DF8E01F.8040209@linux.intel.com>
	<BANLkTimToxC7cYLTb_tUoGA_O36yKEkWyA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 79.167.211.68
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <BANLkTimToxC7cYLTb_tUoGA_O36yKEkWyA@mail.gmail.com>
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
X-List-Received-Date: Wed, 15 Jun 2011 19:05:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Jason,

On 06/15/2011 09:26 PM, Jason Kridner wrote:
> 
> This thread has been moving faster than me. :)
> 
> You can use mainline u-boot.  There are some minor missing features, but
> I did do some playing with mainline u-boot and xM rev C about a month
> ago and it was good.  The version might not be reported properly, but
> the default was updated to be if it was an unknown xM revision, it would
> default to the latest.  Old u-boot versions had a bug where they would
> revert to a really old version.  If the default was the latest, there
> would have been no breakage as no u-boot dependencies changed between xM
> rev A/B and xM rev C.
>  

mainline u-boot sounds good.

What kernel did you use for your tests?

Regards,

Robert
..."Q:  What is IBM's definition of a man year? A:  720 programmers
trying to finish the job before lunch."

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1




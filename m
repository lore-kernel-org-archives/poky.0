Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66C044C80053
	for <poky@lists.pokylinux.org>; Sat, 12 Feb 2011 19:21:48 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1D1LiVA008679;
	Sat, 12 Feb 2011 17:21:46 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 12 Feb 2011 17:21:43 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.7]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 12 Feb 2011 17:21:43 -0800
Message-ID: <4D573224.8020705@windriver.com>
Date: Sat, 12 Feb 2011 20:21:40 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.14) Gecko/20110207 Thunderbird/3.1.8
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D569EC5.6040609@mlbassoc.com>
In-Reply-To: <4D569EC5.6040609@mlbassoc.com>
X-OriginalArrivalTime: 13 Feb 2011 01:21:43.0707 (UTC)
	FILETIME=[5FCE4EB0:01CBCB1C]
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Booting BeagleBoard
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
X-List-Received-Date: Sun, 13 Feb 2011 01:21:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-12 9:52 AM, Gary Thomas wrote:
> I have a BeagleBoard C3 (not the new xM). Trying to run the
> latest Poky ran into some problems:
>
> * The boot commands in README.hardware are no longer accurate
> for the 2.6.37 (linux-yocto) kernel. At least you need to
> use ttyO2 for the serial console.

This one is known, we are balancing the fact that the
beagle board exists in multiple kernel versions and
2.6.37 is a transition point for the serial .. so the
docs haven't been update with that change yet.

> * There is no video? /dev/fb0 is not being created.
>
> I know that the previous (Angstrom based) 2.6.32 kernel had
> lots of additions which support video (DSS subsystem) and
> also camera (ISP). Has this support been ported forward
> into the Yocto kernel?
>
> Perhaps I missed some setting?

Not missing anything. We are moving onto some other
beagleboard variants, so left the forward port of the
beagleboard at mainline status (which is enough to meet
the existing demo requirements). So whatever has made it
to the mainline 2.6.37 kernel works, which is largely
what you are seeing.

What we are building up for the supported boards is a
common set of features (tracing, boot media, filesystems,
configuration, etc) that are uniform across architectures
and boards. That in turn extends our ability to build,
validate and maintain many more boards that would otherwise
be possible.

On top of the common feature set, comes the board specific
functionality. That functionality is selected / ported from
the best sources (and is hopefully something on its
way to mainline). That porting effort typically comes
after we have the base solidified and a board is of suitable
interest to have this deeper support (or if patches are
contributed).

Anyway, that doesn't answer your question, but explains
what/why things may appear to be in an early phase of
support.

Cheers,

Bruce

>
> Thanks
>



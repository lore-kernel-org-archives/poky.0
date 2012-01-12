Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18BA3E0030F
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 13:28:16 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2CBAAF8128B; Thu, 12 Jan 2012 14:28:15 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2903BF8128A;
	Thu, 12 Jan 2012 14:28:14 -0700 (MST)
Message-ID: <4F0F506E.7080804@mlbassoc.com>
Date: Thu, 12 Jan 2012 14:28:14 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net>
	<4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net>
	<4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
	<CAEsOVNc4JoP1wMR2QvA0CNdwrFCs0UyrJNKp7Cp0iDTgBe1gww@mail.gmail.com>
In-Reply-To: <CAEsOVNc4JoP1wMR2QvA0CNdwrFCs0UyrJNKp7Cp0iDTgBe1gww@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Thu, 12 Jan 2012 21:28:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-12 14:13, McClintock Matthew-B29882 wrote:
> On Thu, Jan 12, 2012 at 3:07 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> I'm trying this now.  Of course, touching that variable invalidates
>> the sstate cache, so I won't know until tomorrow if it works.
>
> Yes, it's hard (long) to test this. Then you will want to wait another
> day to know for sure the DATE dependency is gone to know it's work for
> sure. I'd recommend purchasing a large machine to do this testing
> on.... it's well worth the investment ;)

I have many such large machines at my disposal, but sadly, no time machine :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


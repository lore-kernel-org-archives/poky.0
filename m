Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69A1C4C80BD4
	for <poky@yoctoproject.org>; Sun,  2 Jan 2011 11:15:32 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D6B2316601BB; Sun,  2 Jan 2011 10:15:31 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id B96F81660182;
	Sun,  2 Jan 2011 10:15:30 -0700 (MST)
Message-ID: <4D20B2B2.3090602@mlbassoc.com>
Date: Sun, 02 Jan 2011 10:15:30 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
In-Reply-To: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
Cc: poky@yoctoproject.org
Subject: Re: PREMIRRORS in yocto, do they actually work?
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
X-List-Received-Date: Sun, 02 Jan 2011 17:15:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/02/2011 10:08 AM, Koen Kooi wrote:
> Hi,
>
> I would like to have the fetchter try my PREMIRROS first before trying to fetch from git. In OE I have the following in a bbclass:
>
> PREMIRRORS_append () {
> git://.*/.* http://www.angstrom-distribution.org/unstable/sources/
> }
>
> When used in OE that works, but in yocto it doesn't. So I tried to do it poky style in a .inc:
>
> PREMIRRORS_append = "\
> git://.*/.*   http:/www.angstrom-distribution.org/sources/ \n"
>
> Which also doesn't work since it doesn't try to fetch from there, but it does mention "http:/www.angstrom-distribution.org/sources/" in the fetch error message when git read-tree fails.
>
> So my question: how do I make it work in yocto like it works in OE?

I too have been struggling with this as I'd like to have
a local repository to hold the current source set.  Sadly,
as you've observed, it doesn't work, at least not as expected.

What error(s) do you get when a GIT based package needs to
be fetched?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


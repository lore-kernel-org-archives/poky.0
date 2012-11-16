Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DDBFE011AF
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 06:29:00 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 4F216F8121B; Fri, 16 Nov 2012 07:29:00 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 801B3F81217;
	Fri, 16 Nov 2012 07:28:59 -0700 (MST)
Message-ID: <50A64DBE.3020106@mlbassoc.com>
Date: Fri, 16 Nov 2012 07:29:18 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <50A649D6.9030301@mlbassoc.com> <7871104.EdYNj4Ce18@helios>
In-Reply-To: <7871104.EdYNj4Ce18@helios>
Cc: poky@yoctoproject.org
Subject: Re: Wacky dependencies
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Nov 2012 14:29:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-11-16 07:24, Paul Eggleton wrote:
> On Friday 16 November 2012 07:12:38 Gary Thomas wrote:
>> I wanted to run an experiment with X11 vs GTK-directfb on my platform.
>> I built a complete image with X11 in DISTRO_FEATURES.
>> When I changed DISTRO_FEATURES to have gtk-directfb, nearly everything
>> was rebuilt!  Why on earth do GCC & EGLIBC have to be rebuilt??  This
>> doesn't seem logical at all to me.
>
> The build system is not able to determine whether a variable within a recipe
> depends on a single value within DISTRO_FEATURES, it only knows that it looks
> at the variable; thus any change to DISTRO_FEATURES will change the hash of
> all recipes that read DISTRO_FEATURES.
>
> I'd like to fix this but given that we check if DISTRO_FEATURES and other list
> variables like it contain values using inline python code i.e.
> ${@base_contains(...)} this seems like it would be tricky to implement in a
> reliable way.

In this particular case, I think the problem is that DISTRO_FEATURES contains
too many controls.  In particular, all of the LIBC settings which *are* important
to GCC & EGLIBC.  Maybe that part should be kept separate and only have DISTRO_FEATURES
contain non-compiler items?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


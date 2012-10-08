Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73B2AE00346
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 15:21:47 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9710CF8120F; Mon,  8 Oct 2012 16:21:46 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8D99FF811EA;
	Mon,  8 Oct 2012 16:21:45 -0600 (MDT)
Message-ID: <50735211.1090100@mlbassoc.com>
Date: Mon, 08 Oct 2012 16:22:09 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <5072FBB8.9060703@mlbassoc.com> <5797264.jLXkT5xyjF@helios>
	<5073101D.9080204@r-finger.com> <1349728637.15658.127.camel@ted>
In-Reply-To: <1349728637.15658.127.camel@ted>
Subject: Re: Files missing from package
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
X-List-Received-Date: Mon, 08 Oct 2012 22:21:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-10-08 14:37, Richard Purdie wrote:
> On Mon, 2012-10-08 at 18:40 +0100, Tomas Frydrych wrote:
>> On 08/10/12 17:24, Paul Eggleton wrote:
>>> Since ${sysconfdir} is /etc by default and ${sysconfdir} is in the default
>>> value of FILES_${PN}, and your additional package is appended to PACKAGES, I
>>> suspect you'll find the file is being picked up by the main package first. You
>>> need to use =+ instead of += so that the some-tool-tools package is prepended
>>> to PACKAGES and thus gets the file before the main package.
>>
>> Probably worth noting that using =+ with PACKAGES can have some
>> undesirable side effects. For example, if the recipe in question
>> generates packages dynamically, e.g., for plugins, the first package in
>> the PACKAGES list will be considered the 'main' package, and the dynamic
>> packages will RDEPEND on it. If you modify PACKAGES in such a recipe
>> using the =+, this will result in broken dependency chain without any
>> obvious signs something is not right. I think it's much better to
>> explicitly specify what should go into the main package than using =+ to
>> work around the unsuitable main package default.
>
> FWIW, there is the PACKAGE_BEFORE_PN variable for this and other
> scenarios where you want something just before PN in PACKAGES.

This does sound better, I always like to be explicit, especially when
the default/background has a possibility of biting me!

So, how would I use that for my case (i.e. what lines do I add/change
in my recipe to use it)?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


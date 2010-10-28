Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E75704C80BD4
	for <poky@lists.pokylinux.org>; Thu, 28 Oct 2010 06:34:06 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 639FF16607F6; Thu, 28 Oct 2010 05:34:06 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 750C216607EA;
	Thu, 28 Oct 2010 05:34:05 -0600 (MDT)
Message-ID: <4CC95FAD.9050801@mlbassoc.com>
Date: Thu, 28 Oct 2010 05:34:05 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: "Ke, Liping" <liping.ke@intel.com>
References: <4CC89AA5.7080900@mlbassoc.com>	<8EA2C2C4116BF44AB370468FBF85A77701969CD2DE@orsmsx504.amr.corp.intel.com>	<4CC8B08D.10402@mlbassoc.com>
	<789F9655DD1B8F43B48D77C5D30659732FC450EE@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659732FC45129@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659732FC45129@shsmsx501.ccr.corp.intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Using prebuilt toolchains
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Oct 2010 11:34:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/27/2010 08:35 PM, Ke, Liping wrote:
> Hi, Gary
>
> Seems I misunderstand something. Seems what you want is about how to
> create a recipe which could reuse you pre-build images and save build
> time.
>
> But anyway, for normal application developers, providing an easy-to-use
> sdk-toolchain tarball is helpful. In theory, they have no needs to build
> the whole poky system by themselves.

Sadly, that's what they insist on :-(

Mostly my customers want to be able to [re]build exactly what's in their
embedded environment, typically from scratch.  Poky does this great, but
the overhead of rebuilding the toolchain is a huge portion of the effort.

As for Kevin's comment:
>
> On the other hand, I think the new checksum and task based prebuilt can serve similar
> purpose for you... or even more since your users should be happier if you could provide more
> prebuilt stuff to them besides just toolchain. This is the merit of this project, to have end
> user really focusing on their own customization and value-added bits. :-)
>

This would be great and I've been working with Richard on it for a long time.
Sadly, it still doesn't work correctly and provides no benefit in its current
state.

... I keep using Poky (at the very bleeding edge) and hoping :-)

>>>> -----Original Message-----
>>>> From: poky-bounces@pokylinux.org [mailto:poky-bounces@pokylinux.org]
>>> On Behalf Of Gary Thomas
>>>> Sent: Wednesday, October 27, 2010 2:33 PM
>>>> To: Poky
>>>> Subject: [poky] Using prebuilt toolchains
>>>>
>>>> Congratulations on Laverne (4.0) and Yocto - I hope they are
>>>> prosperous for all :-)
>>>>
>>>> Is there any way to configure Poky (laverne) with a prebuilt
>>>> toolchain, e.g. a meta-toolchain setup?  I no longer see any
>>>> mention of this in the manual (although I've never succeeded
>>>> to use such, no matter how hard I've tried)
>>>>
>>>
>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------------------------------------
>>> _______________________________________________
>>> poky mailing list
>>> poky@pokylinux.org
>>> https://lists.pokylinux.org/listinfo/poky
>> _______________________________________________
>> poky mailing list
>> poky@pokylinux.org
>> https://lists.pokylinux.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


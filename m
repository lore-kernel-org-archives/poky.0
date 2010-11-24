Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 584204C80FA8
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 10:03:06 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 03A4E1660879; Wed, 24 Nov 2010 09:03:06 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B9AE3166086C;
	Wed, 24 Nov 2010 09:03:04 -0700 (MST)
Message-ID: <4CED3737.70900@mlbassoc.com>
Date: Wed, 24 Nov 2010 09:03:03 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Joshua Lock <josh@openedhand.com>
References: <4CED2DC0.2080605@mlbassoc.com> <1290614009.2799.19.camel@scimitar>
In-Reply-To: <1290614009.2799.19.camel@scimitar>
Cc: poky@yoctoproject.org
Subject: Re: Extending SDK
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
X-List-Received-Date: Wed, 24 Nov 2010 16:03:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/24/2010 08:53 AM, Joshua Lock wrote:
> On Wed, 2010-11-24 at 08:22 -0700, Gary Thomas wrote:
>> I've built meta-toolchain-sdk and although it was saved in the
>> wrong place, all seems to be working well.  Until I tried to
>> build a program that uses some package which was not part of
>> the "default" set.   In particular, I tried to build 'xeyes'
>> outside of Poky using the SDK, but it needs xt and xmu libraries
>> which are built for my target, but weren't in the SDK I built.
>>
>> Questions:
>>     * Did I miss something in building the SDK that left these out?
>>     * Is there a way, hopefully straight forward, of adding additonal
>>       packages to the SDK?  Can this be done incrementally, i.e. I
>>       already have an SDK installed, can I do some magic to just add
>>       the xt support?
>>
>
> The SDK currently installs a fixed set of packages, the headers deemed
> useful for gnome-mobile development - this isn't currently very useful
> and is an area I'd like to improve.
>
> The SDK does come with a package manager (opkg-cl) which you should be
> able to configure to point at your existing feeds and then use to
> install additional headers into your SDK.

Thanks, I'll give it a try.  I suppose that I'd need to install the -dev
packages for the stuff I want?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


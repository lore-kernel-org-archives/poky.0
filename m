Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DBD04C80878
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 11:57:26 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1693F166027C; Mon,  7 Feb 2011 10:57:26 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 71D1A1660252;
	Mon,  7 Feb 2011 10:57:24 -0700 (MST)
Message-ID: <4D503284.6020301@mlbassoc.com>
Date: Mon, 07 Feb 2011 10:57:24 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4D500535.3070505@mlbassoc.com>	 <1297094804.1350.16816.camel@rex>
	<4D501B82.4080505@mlbassoc.com>	 <4D501DFC.6020206@windriver.com>
	<4D5023D8.7090106@mlbassoc.com> <1297097863.1350.17229.camel@rex>
	<4D502638.2080106@windriver.com>
In-Reply-To: <4D502638.2080106@windriver.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: eglibc configurability
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
X-List-Received-Date: Mon, 07 Feb 2011 17:57:27 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2011 10:04 AM, Mark Hatle wrote:
> On 2/7/11 10:57 AM, Richard Purdie wrote:
>> On Mon, 2011-02-07 at 09:54 -0700, Gary Thomas wrote:
>>> On 02/07/2011 09:29 AM, Mark Hatle wrote:
>>>> Could you find the related init script and point me to the contents.  I don't
>>>> see any initscripts in the eglibc integration.  The only thing I see is a switch
>>>> in the locale generation between on target, on host and via QEMU.  I'm wondering
>>>> if maybe this is being triggered?
>>>
>>> This could be what I'm seeing.  I have ENABLE_BINARY_LOCALE_GENERATION disabled
>>> in my local.conf (I had troubles with QEMU-ARM on Fedora in the past and this
>>> was the way around it).  It looks like that may be pushing the locale compilation
>>> to the target.
>>
>> Correct. The locales have to be generated somewhere!
>>
>> You turned them off on the build machine so they run on the target. All
>> is functioning as it should.
>>
>> FWIW, cross locale gen doesn't use qemu now and is a lot faster so
>> perhaps you could turn it back on ;-).
>
> Just to be clear, I'm running builds on machines where QEMU is unhappy (and I've
> disabled the QEMU check...)  I have locales being generated and they are working
> fine in the testing I have done with them.
>
> This is using eglibc and the default conf file configuration setting.

I enabled ENABLE_BINARY_LOCALE_GENERATION and now the locale
generation is being done at build time - hurray :-)  Boot time
is much improved.

Now to figure out how to control the ones that are installed.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


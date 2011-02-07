Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1F3AE4C80097
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 11:05:00 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p17H4vol023830;
	Mon, 7 Feb 2011 09:04:57 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 7 Feb 2011 09:04:57 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 7 Feb 2011 09:04:57 -0800
Message-ID: <4D502638.2080106@windriver.com>
Date: Mon, 07 Feb 2011 11:04:56 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D500535.3070505@mlbassoc.com>	 <1297094804.1350.16816.camel@rex>
	<4D501B82.4080505@mlbassoc.com>	 <4D501DFC.6020206@windriver.com>
	<4D5023D8.7090106@mlbassoc.com> <1297097863.1350.17229.camel@rex>
In-Reply-To: <1297097863.1350.17229.camel@rex>
X-OriginalArrivalTime: 07 Feb 2011 17:04:57.0303 (UTC)
	FILETIME=[25BD3E70:01CBC6E9]
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
X-List-Received-Date: Mon, 07 Feb 2011 17:05:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/7/11 10:57 AM, Richard Purdie wrote:
> On Mon, 2011-02-07 at 09:54 -0700, Gary Thomas wrote:
>> On 02/07/2011 09:29 AM, Mark Hatle wrote:
>>> Could you find the related init script and point me to the contents.  I don't
>>> see any initscripts in the eglibc integration.  The only thing I see is a switch
>>> in the locale generation between on target, on host and via QEMU.  I'm wondering
>>> if maybe this is being triggered?
>>
>> This could be what I'm seeing.  I have ENABLE_BINARY_LOCALE_GENERATION disabled
>> in my local.conf (I had troubles with QEMU-ARM on Fedora in the past and this
>> was the way around it).  It looks like that may be pushing the locale compilation
>> to the target.
> 
> Correct. The locales have to be generated somewhere!
> 
> You turned them off on the build machine so they run on the target. All
> is functioning as it should.
> 
> FWIW, cross locale gen doesn't use qemu now and is a lot faster so
> perhaps you could turn it back on ;-).

Just to be clear, I'm running builds on machines where QEMU is unhappy (and I've
disabled the QEMU check...)  I have locales being generated and they are working
fine in the testing I have done with them.

This is using eglibc and the default conf file configuration setting.

> Cheers,
> 
> Richard
> 
> 
> 



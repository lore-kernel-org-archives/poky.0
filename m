Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C540E006B0
	for <poky@yoctoproject.org>; Fri, 13 Jan 2012 08:54:04 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B407FF812B7; Fri, 13 Jan 2012 09:54:01 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 17A42F812AF;
	Fri, 13 Jan 2012 09:53:51 -0700 (MST)
Message-ID: <4F10619F.4080002@mlbassoc.com>
Date: Fri, 13 Jan 2012 09:53:51 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net>
	<4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net>
	<4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
	<CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
	<4F104C72.8010605@mlbassoc.com>
	<CAEsOVNeuCt3aqoTm_LG=8TLKZtXQwg+ptYPX8+rc1UaBkfOkDw@mail.gmail.com>
	<1326472079.15389.43.camel@ted>
In-Reply-To: <1326472079.15389.43.camel@ted>
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Chris Larson <clarson@kergoth.com>, Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 13 Jan 2012 16:54:04 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-13 09:27, Richard Purdie wrote:
> On Fri, 2012-01-13 at 15:40 +0000, McClintock Matthew-B29882 wrote:
>> On Fri, Jan 13, 2012 at 9:23 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>>>>
>>>> You can't just override DATE in local.conf? I don't see the point in
>>>> holding off, unless your builds will take till tomorrow to finish?
>>>
>>>
>>> Actually, I didn't think of that.  I also didn't see this message
>>> until Friday (the next day) due to some network issues, so it's moot.
>>>
>>> That notwithstanding, I tried it today (new DATE) and it behaved as
>>> I would like.  The only problem was that dbus-1 is still being rebuilt.
>>> I compared the siginfo files between the two builds and they are
>>> identical, so I don't know why.
>>
>> Are the hashes the same too?
>
> I've found the root cause of this problem and have posted a fix on the
> OE-Core mailing list.

Cool, I'll start testing this now :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


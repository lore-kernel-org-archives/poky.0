Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 833B1E0044A
	for <poky@yoctoproject.org>; Mon, 21 May 2012 07:30:35 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BEEBAF81218; Mon, 21 May 2012 08:30:34 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A6411F811F0;
	Mon, 21 May 2012 08:30:33 -0600 (MDT)
Message-ID: <4FBA5189.3060601@mlbassoc.com>
Date: Mon, 21 May 2012 08:30:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F8493BB.5070400@mlbassoc.com> <1334100422.10826.99.camel@ted>
	<4F84CCE3.1060504@mlbassoc.com> <4F84E00D.7030302@mlbassoc.com>
	<4F8D5F61.1010002@mlbassoc.com> <1334674913.616.98.camel@ted>
	<4F8D8A73.3030408@mlbassoc.com> <1334677494.616.101.camel@ted>
	<4F8D934D.9070704@mlbassoc.com> <1334679589.616.106.camel@ted>
	<4F8DA181.9070005@mlbassoc.com> <1334697649.616.138.camel@ted>
	<4F8DEB4A.7020401@mlbassoc.com> <1336912769.2711.16.camel@ted>
	<4FB034B3.9070505@mlbassoc.com> <1337502556.28145.22.camel@ted>
In-Reply-To: <1337502556.28145.22.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: SRC checksum checking broken
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
X-List-Received-Date: Mon, 21 May 2012 14:30:35 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-20 02:29, Richard Purdie wrote:
> On Sun, 2012-05-13 at 16:24 -0600, Gary Thomas wrote:
>> On 2012-05-13 06:39, Richard Purdie wrote:
>>> Having gone over this several times, I think the original patch is
>>> correct but it highlights some other issues. The nastiest of those is
>>> the deletion of files. I think I've found a way of fixing that by
>>> correctly using fetcher clean functions (which are null operations for
>>> the local fetcher).
>>>
>>> The remaining issue is then one of better output from the fetcher as
>>> there wasn't enough info in the above logs but that is really a separate
>>> problem.
>>>
>>> I've sent out several fetcher patches to the bitbake list which will
>>> hopefully address some of these issues. I'm travelling at the moment and
>>> these were written without internet access so my testing is limited to
>>> the local file:// urls but I'm confident they move things in the right
>>> direction.
>>
>> Is there something I should check wrt this problem?  A bitbake URL/version?
>
> I've just checked in a number of patches to master (bitbake and poky)
> which should fix the various fetcher issues people have been seeing.
>
> I'd appreciate it if you could test with that and see if this issue is
> now resolved.

Yes, SRC_URI checksum checking seems to be working again.  Tested with
"own-mirrors" and normal fetching.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2683F4C800BA
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 09:02:59 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id CECF4166023E; Mon, 21 Mar 2011 08:02:57 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1E57B1660107;
	Mon, 21 Mar 2011 08:02:57 -0600 (MDT)
Message-ID: <4D875A91.8000402@mlbassoc.com>
Date: Mon, 21 Mar 2011 08:02:57 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D86B0D2.2070004@mlbassoc.com> <1300708651.30423.3434.camel@rex>
In-Reply-To: <1300708651.30423.3434.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: RPM vs IPK
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
X-List-Received-Date: Mon, 21 Mar 2011 14:03:00 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/21/2011 05:57 AM, Richard Purdie wrote:
> On Sun, 2011-03-20 at 19:58 -0600, Gary Thomas wrote:
>> I know that historically Poky has used 'ipk' as the primary packaging
>> mechanism.  It seems that now Poky/Yocto has move to 'rpm'.  My distribution
>> is still using ipk, but I'm happy to change, given a good argument.
>>
>> * Is there such [a good reason] to use rpm over ipk?
>> * What are the pros and cons?  I'm mostly interested in very resource limited
>>     deeply embedded systems which often only run from FLASH.
>>
>> Thanks for any comments
>
> My advice is that for such a resource limited system, you're probably
> best of sticking to ipk, particularly if you have it working already.
>
> opkg:
>
> * Has a smaller disk footprint
> * Is generally faster than rpm
>
> rpm+zypper:
>
> * More of an industry standard
> * Emphasises correctness and robustness over speed (e.g. number of
>    fsync calls)

Does this mean ipk/opkg fails along these lines in any way?

> * Has desktop/enterprise features

Such as?

> * Not optimised for size (e.g. uses c++)
>
> I'd not say one was better than the other, they're just different and
> suit different use cases.

Pretty much what I thought, thanks.

My only concern is that if rpm is the primary emphasis, ipk/opkg might
suffer from rot.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


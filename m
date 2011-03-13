Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9EB694C8009A
	for <poky@lists.pokylinux.org>; Sun, 13 Mar 2011 17:26:57 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 02F8D166027D; Sun, 13 Mar 2011 16:26:57 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9D359166026D;
	Sun, 13 Mar 2011 16:26:55 -0600 (MDT)
Message-ID: <4D7D44AF.2030706@mlbassoc.com>
Date: Sun, 13 Mar 2011 16:26:55 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D7996EE.80005@mlbassoc.com>	
	<625BA99ED14B2D499DC4E29D8138F1505770D748C8@shsmsx502.ccr.corp.intel.com>	
	<D5AB6E638E5A3E4B8F4406B113A5A19A335C9B62@shsmsx501.ccr.corp.intel.com>	
	<625BA99ED14B2D499DC4E29D8138F1505770D748EA@shsmsx502.ccr.corp.intel.com>	
	<D5AB6E638E5A3E4B8F4406B113A5A19A335C9B6F@shsmsx501.ccr.corp.intel.com>	
	<625BA99ED14B2D499DC4E29D8138F1505770D74928@shsmsx502.ccr.corp.intel.com>
	<1299882310.1445.3004.camel@rex>
In-Reply-To: <1299882310.1445.3004.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Problems adding native support packages
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
X-List-Received-Date: Sun, 13 Mar 2011 22:26:57 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/11/2011 03:25 PM, Richard Purdie wrote:
> On Fri, 2011-03-11 at 13:52 +0800, Tian, Kevin wrote:
>> From: Xu, Dongxiao:
>>> Tian, Kevin wrote:
>>>>>
>>>>> atk's SRC_URI is assigned like:
>>>>>
>>>>> SRC_URI =
>>>>> "http://download.gnome.org/sources/atk/1.32/${PN}-${PV}.tar.bz2"
>>>>>
>>>>> After introducing native to atk, PN is changed to atk-native, thus
>>>>> no resouce is found in the repo.
>>>>>
>>>>> I will make a fix to that. But for your quick workaournd, you can
>>>>> change the atk's SRC_URI to:
>>>>>
>>>>> SRC_URI =
>>>>> "http://download.gnome.org/sources/atk/1.32/atk-${PV}.tar.bz2"
>>>>>
>>>>
>>>> use ${BPN}-${PV} instead.
>>>
>>> Yes. This is the right approach.
>>>
>>> I checked in current poky meta recipes, there are about 67 recipes which
>>> directly uses ${PN} in the SRC_URI line.
>>>
>>> Do we need to change all of them to ${BPN}?
>>>
>>
>> I think it's a cleaner way to use BPN, or even simple BP. This would avoid an error
>> alarm when extending some recipes to native. :-)
>
> This is exactly the use case for the BPN variable so yes, making
> standardised use of that would be good.

I filed this as bug #860 so the problem is not forgotten.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


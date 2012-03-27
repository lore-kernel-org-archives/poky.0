Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30793E0070C
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 08:25:56 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DAA9FF8125B; Tue, 27 Mar 2012 09:25:55 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id F0DD2F81252;
	Tue, 27 Mar 2012 09:25:53 -0600 (MDT)
Message-ID: <4F71DC01.2050804@mlbassoc.com>
Date: Tue, 27 Mar 2012 09:25:53 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <4F67EA50.7000708@mlbassoc.com>
	<1332210703.1041.86.camel@localhost.localdomain>
	<1332224231.1848.24.camel@dongxiao-osel>
	<2153250.yonJ7Q2VZR@helios>
	<1332313005.10433.9.camel@dongxiao-osel>
	<1332813480.10454.0.camel@dongxiao-osel>
In-Reply-To: <1332813480.10454.0.camel@dongxiao-osel>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: HOB doesn't see my image recipes
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
X-List-Received-Date: Tue, 27 Mar 2012 15:25:56 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-26 19:58, Xu, Dongxiao wrote:
> On Wed, 2012-03-21 at 14:56 +0800, Xu, Dongxiao wrote:
>> On Tue, 2012-03-20 at 09:53 +0000, Paul Eggleton wrote:
>>> On Tuesday 20 March 2012 14:17:11 Xu, Dongxiao wrote:
>>>> On Tue, 2012-03-20 at 10:31 +0800, Ni Qingliang wrote:
>>>>> maybe all image recipes should be placed in the directory
>>>>> "meta-xx/images"?
>>>>
>>>> Hob recognizes image whose file name is "xxx-image-xxx", like
>>>> core-image-sato.
>>>
>>> Would it be possible to detect recipes that inherit from image.bbclass
>>> instead?
>>
>> Thanks all for your feedback.
>>
>> I will try to find the possibility to detect the inherits of
>> image.bbclass instead of judging my image file name.
>>
>> Thanks,
>> Dongxiao
>
> I have fixed this issue in latest master, welcome to have a test for
> your image.

Yes, this is working now for my images.  Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


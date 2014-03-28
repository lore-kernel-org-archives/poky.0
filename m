Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A559E00BCA;
	Fri, 28 Mar 2014 11:38:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2SIceKD022277
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Mar 2014 11:38:40 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 28 Mar 2014 11:38:40 -0700
Message-ID: <5335C1AF.5080904@windriver.com>
Date: Fri, 28 Mar 2014 14:38:39 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1396031047.14790.24.camel@ted> <5335BF1C.9030902@windriver.com>	
	<5335BF6A.8080404@windriver.com> <1396031644.14790.26.camel@ted>
In-Reply-To: <1396031644.14790.26.camel@ted>
Cc: yocto-builds <yocto-builds@yoctoproject.org>,
	Denys Dmytriyenko <denys@ti.com>, "Hart, Darren" <darren.hart@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	"saul.wold" <saul.wold@intel.com>
Subject: Re: meta-yocto-bsp changes and 3.14
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
X-List-Received-Date: Fri, 28 Mar 2014 18:38:48 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-03-28 02:34 PM, Richard Purdie wrote:
> On Fri, 2014-03-28 at 14:28 -0400, Bruce Ashfield wrote:
>> On 14-03-28 02:27 PM, Bruce Ashfield wrote:
>>> On 14-03-28 02:24 PM, Richard Purdie wrote:
>>>> I've merged Bruce's 3.14 patches into master-next. With the yocto-bsp
>>>> parts that I could pull together, there seemed to be some pieces
>>>> missing, specifically:
>>>>
>>>> * the yocto-linux-dev.bbappend was underpopulated
>>>> * the yocto-linux-3.14.bbappend was missing
>>>
>>> I have one of these, I was hoping the BSP developers would submit
>>> it, but I can commit and send mine.
>>>
>>>> * no removal of beagleboard
>>>
>>> I was keeping this around, for the 3.10 and older trees.
>>>
>>>> * no addition to the README for beaglebone
>>>
>>> Denys and I talked about this, one should be pending.
>>>
>>>> * local.conf.sample needs updates
>>>> * missing edgerouter configuration in linux-yocto*
>>>
>>> Hmm. no, it's definitely there, so I'm not sure
>>
>> I forgot to finish this. This is all here for me, what exactly are you
>> seeing that is missing ?
>
> Specifically, I had to add:
>
> http://git.yoctoproject.org/cgit.cgi/meta-yocto/commit/?h=master-next&id=21f04021a62248bdb827e7d7acc103deb9136b5d
>
> http://git.yoctoproject.org/cgit.cgi/meta-yocto/commit/?h=master-next&id=c94b1e4dc6af0848a30b4275f3cc2bc894f5e267
>
> http://git.yoctoproject.org/cgit.cgi/meta-yocto/commit/?h=master-next&id=03bdb1421e51fa2a4da4bae42ff0b42a92c5acce
>
> So I can't help feeling I'm missing some patches from somewhere or
> something.

Aha. I thought you meant the in-kernel configuration and branch information.

Yes, those are missing, I was going to get them from the BSP creators,
but instead, I'll send mine along.

It'll be a little while though, I had to clean my builder when changing
PVs, so I need to wait full a full kernel refetch.

>
> With regard to beagleboard, whilst the kernel may have support for it,
> I'd like to remove it from meta-yocto-bsp.

ok. I had planned to just leave the compatible machine as 3.10 and leave
the support there, since there are a few people who contact me regularly
and poke with the support.

Is there a place we can put them as a "retirement" home ? versus asking
people to locally restore the support.

Bruce

>
> Cheers,
>
> Richard
>



Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DFDB4C800A5;
	Tue, 15 Feb 2011 13:32:08 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1FJW3GY021003;
	Tue, 15 Feb 2011 11:32:03 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 11:32:03 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 11:32:03 -0800
Message-ID: <4D5AD4B1.5080107@windriver.com>
Date: Tue, 15 Feb 2011 14:32:01 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1297796707.git.bruce.ashfield@windriver.com>
	<1297798090.4945.374.camel@rex>
In-Reply-To: <1297798090.4945.374.camel@rex>
X-OriginalArrivalTime: 15 Feb 2011 19:32:03.0427 (UTC)
	FILETIME=[05D2E330:01CBCD47]
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto: add jasperforest BSP and fix lttng NMI bug
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
X-List-Received-Date: Tue, 15 Feb 2011 19:32:08 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-15 02:28 PM, Richard Purdie wrote:
> On Tue, 2011-02-15 at 14:07 -0500, Bruce Ashfield wrote:
>> Richard/Saul,
>>
>> During the introduction of the jasperforest BSP, a lttng
>> issues was picked up with NMI tracing. The upstream (and
>> our solution) is to revert that commit.
>>
>> This change updates the meta repo for jasperforest and pushes
>> out the nmi revert to all BSPs.
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: zedd/jasperforest
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/jasperforest
>>
>> Thanks,
>>      Bruce Ashfield<bruce.ashfield@windriver.com>
>> ---
>>
>>
>> Bruce Ashfield (1):
>>    linux-yocto: add jasperforest BSP and fix lttng NMI bug
>>
>>   .../conf/distro/include/poky-default-revisions.inc |   27 +++++++++----------
>>   1 files changed, 13 insertions(+), 14 deletions(-)
>
> btw, this is not all this branch contains. Luckily I noticed and caught
> that :)

urk. I pushed my master AND not the jasperforest branch
that I created for the submission.

Rushing as usual causes mistakes .. sorry about that.

Bruce

>
> Cheers,
>
> Richard
>
>



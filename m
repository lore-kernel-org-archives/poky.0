Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8103E005B9
	for <poky@yoctoproject.org>; Thu,  8 Dec 2011 17:07:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pB917Slv007996
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 8 Dec 2011 17:07:28 -0800 (PST)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 8 Dec 2011 17:07:28 -0800
Message-ID: <4EE15F6D.6090604@windriver.com>
Date: Fri, 9 Dec 2011 09:07:57 +0800
From: Zumeng Chen <zumeng.chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Lightning/1.0b1 Thunderbird/3.0.6
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4EE01E6F.8090700@windriver.com> <4EE0E03A.9020307@windriver.com>
In-Reply-To: <4EE0E03A.9020307@windriver.com>
Subject: Re: Where is bridge-utils in yocto recipes ?
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
X-List-Received-Date: Fri, 09 Dec 2011 01:07:30 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 2011年12月09日 00:05, Mark Hatle 写道:
> On 12/7/11 8:18 PM, Zumeng Chen wrote:
>> Hi All,
>>
>> I want to use bridge control brctl, but bit-bake bridge-utils
>> returns failure, name changed? or not existence?
>>
>> Any comments are welcome?
>
> I don't believe anyone has ported bridge-utils to oe-core/Poky yet.
Thanks, Mark, I'll port it in since network need it.

BRs,
Zumeng
>
> --Mark
>
>> Thanks,
>> Zumeng
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



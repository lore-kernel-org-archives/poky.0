Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C100E0027F
	for <poky@yoctoproject.org>; Fri, 17 Aug 2012 12:56:18 -0700 (PDT)
Received: by eabd1 with SMTP id d1so1571568eab.35
	for <poky@yoctoproject.org>; Fri, 17 Aug 2012 12:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=SKBZ1hUw2FQV/F7hgvicJhxFv4XLgw4hNvWMrd9HvLU=;
	b=Owd8/IPTxbyaIDL9BakAUTz3KA+Hhie2jEFBuhKwDlEnOzOJs0Gw8MP7AJ8Qqx363R
	GgrZRHOzAv4xDwXNOH8Bi3y2GkDhEA2NE/e/MeRsenKX1qfdaRlCszv0hXI+X7FOkaer
	KZ043WvtUxjHb2V8gSImDkoJJj06XJFYrkIguPwqU6+B7yvUML+TgsIHHtVUQjg+GAwo
	b5p6jxrhg5gKnV5EAfXUzpGKYaZF8DZpD5joo1FC3/hYEygCrIZZ2bM/C45s8B+hSEx8
	ihsfaaYVI6j9ciSFdSvrl1cNCemJsTzIcg6OEtC0mtJkPavnMMtIvfKWw5g7UgujxaFn
	7TEw==
Received: by 10.14.218.134 with SMTP id k6mr8044764eep.14.1345233376918; Fri,
	17 Aug 2012 12:56:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Fri, 17 Aug 2012 12:55:46 -0700 (PDT)
In-Reply-To: <CAEsOVNfLjOkFUy682fjcj0L+vKtkaRZ83Rn5CHgGNc3Ppe7=oA@mail.gmail.com>
References: <1345200925-3178-1-git-send-email-paul.eggleton@linux.intel.com>
	<CAEsOVNfLjOkFUy682fjcj0L+vKtkaRZ83Rn5CHgGNc3Ppe7=oA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 17 Aug 2012 12:55:46 -0700
Message-ID: <CAMKF1spHaLHt_N7K9eT2suE1yFX_HyEZH5Ys5tq=yJiZ3eLdPw@mail.gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: update distro ID string for Ubuntu 12.04.1 LTS
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
X-List-Received-Date: Fri, 17 Aug 2012 19:56:18 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 17, 2012 at 11:32 AM, McClintock Matthew-B29882
<B29882@freescale.com> wrote:
> On Fri, Aug 17, 2012 at 5:55 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> If you have 12.04 LTS it will now have been updated to 12.04.1.
>>
>> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
>> ---
>>  meta-yocto/conf/distro/poky.conf |    2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
>> index cc9fa6c..711087b 100644
>> --- a/meta-yocto/conf/distro/poky.conf
>> +++ b/meta-yocto/conf/distro/poky.conf
>> @@ -69,7 +69,7 @@ SANITY_TESTED_DISTROS ?= " \
>>              Yocto (Built by Poky 7.0) 1.2 \n \
>>              Ubuntu 10.04.4 LTS \n \
>>              Ubuntu 11.10 \n \
>> -            Ubuntu 12.04 LTS \n \
>> +            Ubuntu 12.04.1 LTS \n \
>
> Wait, wouldn't you keep the old one too? Or do we just validate poky
> for the latest only?

I think we should check for 12.04.x iow forget about third minor
update, there couldnot be much differences that we would worry about.


>
> -M
>
>>              Fedora release 15 (Lovelock) \n \
>>              Fedora release 16 (Verne) \n \
>>              Fedora release 17 (Beefy Miracle) \n \
>> --
>> 1.7.9.5
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


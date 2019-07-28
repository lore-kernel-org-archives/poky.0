Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96933E00A03; Sun, 28 Jul 2019 05:40:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A41CE0096F
	for <poky@yoctoproject.org>; Sun, 28 Jul 2019 05:39:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 6F2B0212002;
	Sun, 28 Jul 2019 14:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=basmevissen.nl;
	h=content-transfer-encoding:content-language:content-type
	:content-type:in-reply-to:mime-version:user-agent:date:date
	:message-id:from:from:references:subject:subject; s=default; t=
	1564317597; x=1566131998; bh=b5EHtdvsajOBT3Inlu2QcoIFIi2DQVrmgNr
	ACI1K1jg=; b=Iy+s+eNqIYTPAZGGPmpE8jXMcg2jRGBDMhvYOxsCrrVT/Z7kDog
	xgoFgDvfXsg9gdPbOD8SFjYOVAewh/sQTt0GvQ9vYmAlLoWu17vEoKyeuHINE7zY
	62IZLFZdHHPJwpXYfh8osUuWsJFrDJd/+9xvn2O+TehHfAIKvXJEWe68Xep6fgG3
	M/F5EvhRCvw9PxEHNlwfzWrLCsKwA3MgYEjazq98kaURRtNL2S/RG9YZ1c6wWY3G
	eEhyf3RcRmUWU8PrEfNoRCI374NadaiBTncOwFfuf6BaFy8DMy/97vE5TfJ/bl7d
	G36Z7RIV7pI4kSgd1SF512eocpzDCOE6AIGyQv/FiZ1ZJ+ZTPAe2Cij9sIAc6jK2
	kAf695NJwvTdyDLvTNMHJSdn0eQLzZeYwRSm7klvsfLuxVGUvlS1QdqT/Z4QCZKJ
	6zUS2K8i6sxIriU3Qve66b0jcwp1gogr4NroehQHJFdHzHQSFzTuys3BY7svMSBO
	5n7YAusLPQCAhrtdTWC9wwlSc5LD+ovVKlWPNLudZcW++qnNXmR7MJt1gn09JEVp
	jva2T7GUIyQHrUbiUowF2sRcSPwwiyBajQSU4oZFKx4LbYpUsMFmlnRxdDYenf7y
	ffEFcI0VyA80YF18ZrapacqczsmUp05lAqAQBt+9r9Lk6jHO1vdfEBXw=
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 1oiTjQpesSJc; Sun, 28 Jul 2019 14:39:57 +0200 (CEST)
Received: from whisper.local (84-28-208-114.cable.dynamic.v4.ziggo.nl
	[84.28.208.114]) (Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id D1A4A212001;
	Sun, 28 Jul 2019 14:39:57 +0200 (CEST)
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
References: <20190718115351.2754-1-ross.burton@intel.com>
	<ed152bc4-5d75-7651-8cc1-3a48bc6b09a9@basmevissen.nl>
	<0615b5d88e12e73a3532e03aa3a44e451415c119.camel@linuxfoundation.org>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <3f74c7c0-64e3-1eac-42bb-28be9446e086@basmevissen.nl>
Date: Sun, 28 Jul 2019 14:39:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0615b5d88e12e73a3532e03aa3a44e451415c119.camel@linuxfoundation.org>
Subject: Re: [PATCH] conf/poky: add Fedora 30 and Opensuse Leap 15.1 to supported distributions
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
X-List-Received-Date: Sun, 28 Jul 2019 12:40:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: nl-NL
Content-Transfer-Encoding: 7bit

On 28/07/2019 14:00, Richard Purdie wrote:
> On Sun, 2019-07-28 at 13:14 +0200, Bas Mevissen wrote:
>> On 18/07/2019 13:53, Ross Burton wrote:
>>> Signed-off-by: Ross Burton <ross.burton@intel.com>
>>> ---
>>>    meta-poky/conf/distro/poky.conf | 2 ++
>>>    1 file changed, 2 insertions(+)
>>>
>>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-
>>> poky/conf/distro/poky.conf
>>> index 2d155d0de18..ac6368ddab1 100644
>>> --- a/meta-poky/conf/distro/poky.conf
>>> +++ b/meta-poky/conf/distro/poky.conf
>>> @@ -56,11 +56,13 @@ SANITY_TESTED_DISTROS ?= " \
>>>                ubuntu-18.04 \n \
>>>                fedora-28 \n \
>>
>> Better remove Fedora 28 as it is no longer supported. So probably it
>> is hardly used any more, hence regressions will go undetected.
> 
> This list matches the machines we actually test builds on:
> 
> https://autobuilder.yoctoproject.org/typhoon/#/workers
> 
> so we do still test f28 right now. We're in the process of bringing up
> some new hardware and removing older machines so as that happens we'll
> update the list.
> 

Ok, clear.

>>
>>>                fedora-29 \n \
>>> +            fedora-30 \n \
>>>                centos-7 \n \
>>>                debian-8 \n \
>>>                debian-9 \n \
>>>                debian-10 \n \
>>>                opensuse-42.3 \n \
>>> +            opensuseleap-15.1 \n \
>>>                "
>>>    #
>>>    # OELAYOUT_ABI allows us to notify users when the format of
>>> TMPDIR changes in
>>>
>>
>> In general, I think that EOL distro versions should be removed after
>> a while. Somewhere between 3 months (short-lived versions) and 6
>> months for long term supported versions.
>>
>> It will not prohibit people from using older distro versions, but at
>> least it gives a message that regressions or breakage is to be
>> expected.
> 
> We try and ensure this list matches what we're actually testing.
> 

That seems a good approach to me.

> Cheers,
> 
> Richard
> 
> 


-- 
Bas.


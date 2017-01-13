Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B18DFE0071C; Fri, 13 Jan 2017 06:58:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, NORMAL_HTTP_TO_IP,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0854E006C6
	for <poky@yoctoproject.org>; Fri, 13 Jan 2017 06:58:30 -0800 (PST)
Received: by mail-lf0-f49.google.com with SMTP id z134so36044398lff.3
	for <poky@yoctoproject.org>; Fri, 13 Jan 2017 06:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=5beRXwFmnHf1aTsZXEpEzhUbkBOvYApD7sQ1YnWjXy4=;
	b=CRPumyovtkqm9cnkXvQipCUpqTLodyUoZReFjlSFNd5IC7WgKJqo+oARhsaK0layfi
	hXvUrtPiUXWaFzYRnI74bIRW5NgfdvWRplumDKH+1xPg1hAuUTLgqrrPk13EIAaqrESs
	ll8WSVHXqraOrj8ygCVsWymo5UedY4HNEi7NKAmoi/6YYgRQKKoCEv+UQlBves1Rw69h
	Pok3ksCFRhzdbWTyMhPssUTN/qDV2oOBa1cdXzvxyci+JCutP5Eplrzw4qzSzjipD8Tb
	Y7tOaDCa9DMLBHPVfHnqd/M8goXmuPkTxGJaT/R2LkEcIFCWumzXis177bh4HKbGkEEb
	m3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=5beRXwFmnHf1aTsZXEpEzhUbkBOvYApD7sQ1YnWjXy4=;
	b=ivMBrRz9pLEd4iNAIP3Qs2SeOqA3WlVL0iG5wTs5zuQ5B0Gws6Xq850JzNlRjJ5gp3
	bL0zLrrJ8Zv6/CL30hgucdB2qdpWCHbyShtgTUNDnW1MpUFaP978zqyChqlUSk2lXBji
	wID/UFam0bugPoYKP5tT7o/lWsKEpCxI0trCstiAYh6xRSDZ7/mA+gF4A03IZAmiXNku
	OPOml4Qw40D418IMyETevdSxDzJkEsJca++Uu4VyHSHlLLMacZJCHjeI0riPZw1S+Jc4
	fMknPzbX6r9cyJxF8Ilz784S6W9vvXgvPvwyqLvNlHZHIHuGQal986F+VGF/klfPJzrW
	nUTA==
X-Gm-Message-State: AIkVDXKvMmVjp+iUrR1g1V9xs+L3parunCo3FrqRExx4osJ0Ej6cJObkT+K39GPg+z2rpA==
X-Received: by 10.25.208.211 with SMTP id h202mr8226463lfg.150.1484319509404; 
	Fri, 13 Jan 2017 06:58:29 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	q19sm4067625lfi.1.2017.01.13.06.58.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Jan 2017 06:58:28 -0800 (PST)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <e5ed867c-cb26-466c-694f-65d60254cd60@mender.io>
	<1484304092.4367.248.camel@linuxfoundation.org>
	<94097740-4d39-525e-94d6-bbc7aaa69dc2@mender.io>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <d4ef08e1-80b3-ba38-76ea-67157dc6abec@mender.io>
Date: Fri, 13 Jan 2017 15:58:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <94097740-4d39-525e-94d6-bbc7aaa69dc2@mender.io>
Subject: Re: SSTATE_MIRRORS not working?
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
X-List-Received-Date: Fri, 13 Jan 2017 14:58:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 13/01/17 13:35, Kristian Amlie wrote:
> On 13/01/17 11:41, Richard Purdie wrote:
>> On Fri, 2017-01-13 at 09:50 +0100, Kristian Amlie wrote:
>>> For some time now, I've had the problem that SSTATE_MIRRORS does not
>>> work properly for me. I can see that it downloads lots of packages
>>> from the cache, but once the setscene stage is over, and runqueue
>>> begins, it starts the whole build from scratch regardless.
>>>
>>> This used to work for me before, it would only run a small subset of
>>> the tasks locally, taking full advantage of the cache, so I'm fairly
>>> certain my setup is correct. For me it broke maybe six weeks ago or
>>> so (master branch).
>>>
>>> I realize this question may be more appropriate for bitbake-devel,
>>> and I can provide more details, but I thought I'd just hear if
>>> anybody else has experienced the same, before I go digging.
>>
>> Which SSTATE_MIRRORS are you using?
> 
> It's a private build machine in the cloud. It's simply the sstate-cache
> folder exposed with Apache, and me pointing my mirror at it with:
> 
>   SSTATE_MIRRORS ?= "file://.* http://1.2.3.4/PATH"
> 
>> The build logs should show what is being rebuilt. The autobuilder does
>> reuse sstate during its builds and we'd likely have noticed long build
>> times if it was completely broken so its likely some mismatch between
>> your setup and what is in the particular mirror you're using.
> 
> I'll try to do a more thorough check, and compare downloaded packages
> with built packages.

Looker closer, it appears that it's all the native tools that are
rebuilt. This didn't use to happen though. What could be the difference
factor here?

My machine is Ubuntu 16.04 and the cloud machine I use as a mirror is
Debian 8. Could this be significant?

-- 
Kristian


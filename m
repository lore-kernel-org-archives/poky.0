Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01B08E003C1; Fri, 13 Jan 2017 04:35:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, NORMAL_HTTP_TO_IP,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77624E0030B
	for <poky@yoctoproject.org>; Fri, 13 Jan 2017 04:35:15 -0800 (PST)
Received: by mail-lf0-f54.google.com with SMTP id k86so36297020lfi.0
	for <poky@yoctoproject.org>; Fri, 13 Jan 2017 04:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=ek6qmzqrru7gbyWX5ZglWMKtixt8CgXJeaO0jsfONF8=;
	b=fyr16dG2r7NZ30LxpotepnDkSKkui7sbd/eu6UNOapASqsdYIKM/4XzjtsJNQCh7v6
	MTw6ud2prEfiO7bOLY74km8PYsnKuDwv9Vo/Adz4cCaOywDLnfJRmEcNPOPMDaUHiA0f
	U6IuADDZxRBD/KghiBPOXeHMj9GGooea7ZNGvZN6yUpzzk2Ijdv1EvIIfW7EK997kKqu
	eTMYMRfQQlo6SpBHXNEVYNI4HtCLRWuUSAUcbpweETRbWP1LsuQZwMGIVYmKTNlLGXI6
	osEgGQpiYxp6pzDuza0oTG5iEnExSiCXG2Di0fu4FC7qjy9/+Bm7zuTdOX0Cv/xmU8Ye
	g7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ek6qmzqrru7gbyWX5ZglWMKtixt8CgXJeaO0jsfONF8=;
	b=IN5LBvk/bP7qcVupd4TnXl/nzhqrH52xnSp1dT1C2gKlag/euNrce0cDafgXPQrDYh
	31Uqv/vV4bqBedqW0g0AvB2ma2p0Wl5iyorD//C0TsjtHtVdB5du/vyET6Q0Y6V1q627
	64XvJ9AgJCkK08xvK4ulWL7iSaJMPXXc3xcv5+0PrgpNaWsK9wpJXWrcWWUYR8hUY1x/
	tYss5vcyU5agLd75k4aQKq7/NW4RZbgtwcZ4lbMMbYpSpu0dIMJHaY0UsX5gKN9BijA1
	xDBPLzv1Htxhv3vxq+Y3hKJOjBvUVfP82CVKI+aaOtq9bSQaqqrjtpCQvKrh0P1aaKus
	WZqA==
X-Gm-Message-State: AIkVDXIRbZQFNdYqo5jcR54zbffyV+HhqCoUcXiP7LEcfBP3qJLqBwJebwhDM9TnA5BomA==
X-Received: by 10.25.165.144 with SMTP id o138mr7757979lfe.172.1484310914593; 
	Fri, 13 Jan 2017 04:35:14 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	n8sm3707298lfi.30.2017.01.13.04.35.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Jan 2017 04:35:13 -0800 (PST)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <e5ed867c-cb26-466c-694f-65d60254cd60@mender.io>
	<1484304092.4367.248.camel@linuxfoundation.org>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <94097740-4d39-525e-94d6-bbc7aaa69dc2@mender.io>
Date: Fri, 13 Jan 2017 13:35:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1484304092.4367.248.camel@linuxfoundation.org>
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
X-List-Received-Date: Fri, 13 Jan 2017 12:35:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 13/01/17 11:41, Richard Purdie wrote:
> On Fri, 2017-01-13 at 09:50 +0100, Kristian Amlie wrote:
>> For some time now, I've had the problem that SSTATE_MIRRORS does not
>> work properly for me. I can see that it downloads lots of packages
>> from the cache, but once the setscene stage is over, and runqueue
>> begins, it starts the whole build from scratch regardless.
>>
>> This used to work for me before, it would only run a small subset of
>> the tasks locally, taking full advantage of the cache, so I'm fairly
>> certain my setup is correct. For me it broke maybe six weeks ago or
>> so (master branch).
>>
>> I realize this question may be more appropriate for bitbake-devel,
>> and I can provide more details, but I thought I'd just hear if
>> anybody else has experienced the same, before I go digging.
> 
> Which SSTATE_MIRRORS are you using?

It's a private build machine in the cloud. It's simply the sstate-cache
folder exposed with Apache, and me pointing my mirror at it with:

  SSTATE_MIRRORS ?= "file://.* http://1.2.3.4/PATH"

> The build logs should show what is being rebuilt. The autobuilder does
> reuse sstate during its builds and we'd likely have noticed long build
> times if it was completely broken so its likely some mismatch between
> your setup and what is in the particular mirror you're using.

I'll try to do a more thorough check, and compare downloaded packages
with built packages.

-- 
Kristian


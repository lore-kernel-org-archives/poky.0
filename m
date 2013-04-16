Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81ED1E01469
	for <poky@yoctoproject.org>; Tue, 16 Apr 2013 08:26:11 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id 14so534890vea.1
	for <poky@yoctoproject.org>; Tue, 16 Apr 2013 08:26:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=WB/SHzlswraL4RPo1Q+siCWzXKbnu0BVhado8ZO10gA=;
	b=Eq3iTbuQ9yWCFfgHvUu81hi7WtkMW88SLsmyQfO5xfm+QbIzHCBn5Xb+C8iJP8a0lt
	XwC8mbefbBQSXWuD3/jn4utzSc1GhPthonsi1PS0nWrqgIDqYYPlVwTvIHq7Qp+xgd0s
	kYCzcWRfiWV4zPCbke3FIOSs57pfAN27jWbb5ALL4qMwOJowp1IbGFn8W3/+JLb7gktS
	3/xMJPagSgK6PSBIoy4zUG85HTuCDZ2pleFZy2ClRQIRcLkOyOXS8RDLoR7jyki/Sjww
	QTHFKAxFn7Uw21uJI3F7tQ1TR3rkRcFg42NV16urjcXo7REjkuy00D3eVSqOJRJGpw+o
	FBXQ==
X-Received: by 10.52.108.10 with SMTP id hg10mr1596609vdb.34.1366125970264;
	Tue, 16 Apr 2013 08:26:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Tue, 16 Apr 2013 08:25:47 -0700 (PDT)
In-Reply-To: <CA+aQ=ROmGF_PJ6Xm1Yx9cukoCe0VP5utm16v=9jhE_MfSp0HTg@mail.gmail.com>
References: <CA+aQ=RMndaWC8Suv2eouL3oNRQYu2yLsTST578+B2hZQ9GsJGg@mail.gmail.com>
	<CAJTo0LYGhwgVZOw+MHYMQd96UrH8PjMCEtcx5AkD3gSKo_gjhw@mail.gmail.com>
	<CA+aQ=ROmGF_PJ6Xm1Yx9cukoCe0VP5utm16v=9jhE_MfSp0HTg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Apr 2013 16:25:47 +0100
Message-ID: <CAJTo0LboWdiAjEK0OdPwHinnLQpj6d1TdX2i7wGrVtvGi-RoEQ@mail.gmail.com>
To: Robert Sheffield <rsheffield2011@my.fit.edu>
X-Gm-Message-State: ALoCoQkSFV7CrmAraaskltQ9yRZiQXX3pIO76wObtJI/GgirAuwpIxiMcAe3qA0p9KGBf1NyRVQR
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: NMEA data reader/parser
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
X-List-Received-Date: Tue, 16 Apr 2013 15:26:11 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

[Re-CCing poky@]

On 12 April 2013 18:24, Robert Sheffield <rsheffield2011@my.fit.edu> wrote:
> Our release is for the Cornell Cup. It is very stripped down and I am just
> having trouble understanding writing or downloading anything to this device.
> I have been working in circles for months now and seem to still be stuck on
> the point where I must be missing something basic.
>
> I have found the GPSD and its downloads, but am not sure how to apply that
> to this board.

I haven't used gpsd for several years, but a quick google revealed
this blog post which should be helpful:

http://thomasloughlin.com/gpspipe-gps-client/

meta-oe has a recipe for gpsd.

Ross


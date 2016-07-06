Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D404CE00DE1; Wed,  6 Jul 2016 03:52:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C796E00DDE
	for <poky@yoctoproject.org>; Wed,  6 Jul 2016 03:52:06 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id l188so151917947lfe.2
	for <poky@yoctoproject.org>; Wed, 06 Jul 2016 03:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=zausPv+HIkoMXr5gmweHnWu45igNwZnVeC3oWg1hOuM=;
	b=d4FjQqY4D8LdBvzxX4xb0APJyxX5okSUQrvq2ePLjH15/4sJYwwdDNTLq0nLqF1SYH
	3SXqimHn4tQdNcrvwQGtUllKeSwwMi46PJ/23lqqY2VK8Nre7MQ4xcPaIyp+rmBRAdb4
	Bnnj9msiClz5rdN4YYn8cKng5VHpGYXQUQch38XkTnTK/FtBkR0F3n/uy/EjMqRyKMmM
	hq85+YQxQJRZnVj69ACwS1ofcqlXbr02E13bX6PJH/tnMEB2VdhHlVyq9i6ri02dKWgJ
	KpjyL0IahnEVcD9Hcb+w1croJn18mpt09cM8CylXBzZH9jDTAqPBraQ2ApsJ+BzhxuPD
	zeOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:organization:user-agent;
	bh=zausPv+HIkoMXr5gmweHnWu45igNwZnVeC3oWg1hOuM=;
	b=OJFJ38aJu2HH2o3u+HXy9R6MSJREz1WUrfBqTM/276eY2eiMXGEAxENlHum9gi7ZxV
	x7yOUfDvb+fJr987RUFlMOX8jPpQYPASAMcz4rx6DfLbMmj6KpJ+vRdnOe3lpsV2HdaV
	6+5r8GyvTUZaaNZ/zkupoKhJigj4XMOD3OLHdmhs0UGNZvaL1S5DjZUL/GObKqetKYYk
	Z9uqSG/iFOWRb3mnwJiby4RZ4hfx5zUtQO5UhwiVNWR56Skq+pdLggEwmPpDfWGzBwZT
	08ckHaHXDXaTpU0D+6BNU5r6dRcP4NUs5Sv8KIFqglDQ/KUrBl5KTCFCuKkBAzQX9Zdy
	8Wsg==
X-Gm-Message-State: ALyK8tKNe8LKsnxoXuVR6lx8cIOciX1nkDcRrP1DI15+JaVGEC1WWyyBH+bCbsHWpD+MQw==
X-Received: by 10.25.15.213 with SMTP id 82mr4668534lfp.126.1467802325062;
	Wed, 06 Jul 2016 03:52:05 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-218-130-no126.business.telia.com.
	[213.64.218.130])
	by smtp.gmail.com with ESMTPSA id 70sm6286231lfp.34.2016.07.06.03.52.03
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 06 Jul 2016 03:52:03 -0700 (PDT)
Date: Wed, 6 Jul 2016 12:52:02 +0200
From: Anders Darander <anders@chargestorm.se>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160706105202.GC23993@ad.chargestorm.se>
Mail-Followup-To: "Burton, Ross" <ross.burton@intel.com>,
	Poky Project <poky@yoctoproject.org>
References: <1464718260-8333-1-git-send-email-anders@chargestorm.se>
	<CAJTo0LZiqq2kqrzGs-9_9d5Oi0D9q4FAmOCV7=YA9YWCzPeNQA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZiqq2kqrzGs-9_9d5Oi0D9q4FAmOCV7=YA9YWCzPeNQA@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] yocto-bsp: add BBG dtb
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
X-List-Received-Date: Wed, 06 Jul 2016 10:52:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Burton, Ross <ross.burton@intel.com> [160706 12:13]:

> On 31 May 2016 at 19:11, Anders Darander <anders@chargestorm.se> wrote:

> > As 4.4 is the default kernel version, we can add the dtb for the beaglebon
> > green
> > to the list of dtb's to generate.

> Default but not only: this breaks builds with the 4.1 kernel:

Ok, then I guess this one has to wait until we drop 4.1 (probably after
2.2 releases).

How does the autobuilder select the 4.1-kernel? I guess it wouldn't be
possible to remove the BBG at the same time...

Thanks for the feedback!

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB


Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFCAFE00DE1; Wed,  6 Jul 2016 04:03:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B27E00DDE
	for <poky@yoctoproject.org>; Wed,  6 Jul 2016 04:03:37 -0700 (PDT)
Received: by mail-lf0-f51.google.com with SMTP id q132so152171334lfe.3
	for <poky@yoctoproject.org>; Wed, 06 Jul 2016 04:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=i6DnJmjCAhPmqEUTULOUf+l6es6pu1Sy2wSv9jRYeD4=;
	b=AGA2Liy07V188tdIeQSwSyHdK6bUAt2BxtoW6oKgnegn8maFoIwc43v6CJcKGWzfWm
	xHLwl8ztM1shftN353ZctzO9TwzUofUEKf4HwfHWIngYvmn+7MYeHzNGtbBKBHWdEks2
	BCzvUPQE45JDKBrW/4O/TcKu3XErM9f+5nklYw0btybgVr2I3fjG12OFZGSTYpCVL5Og
	GFilyfRw/NMhK7CzRurS3C2d7yBsWg7WlOTPVooXomo5QMkZzJpSuHlcdiFXnC9kJlwF
	qzSDUEFkta/6FI8ekBspzpFKtNc39b4YABs/t7JfbAqljL/GyZdmk+GQU7O1WNNldN6P
	6VYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:organization:user-agent;
	bh=i6DnJmjCAhPmqEUTULOUf+l6es6pu1Sy2wSv9jRYeD4=;
	b=ebKNXXnDSodIpkXhSnckWDORRSs3iHhl1sVZWMNBm2qu1mD1ULv5iH4e9hw+BPsusT
	INP4nXTOxWdWNZKkyOghPqlODLpJjl/HSMRsh5nHE0y9U2RerjNnk4pTwdriTvduR9tS
	8ZD6iQubSpscLxpkPVb5jG2Fv8gC6RL+DybsHeE/VBR17BiJzBzt0vyZbhqcUXFbc5Ry
	VD7UQyNXhebpJzcaAH42C1Ml2uj+0ygK01Cm3/eLZdqmO7u0UCvYNKGvYnrtGBDnXFMQ
	XlgS+w2ZWLNc1BoRdiGlP6mFYuQ+nUrfOt/az2PJGoANIqxQYSxwyJAPVKbOWoysDd++
	ifnw==
X-Gm-Message-State: ALyK8tI4Q4GbLM2bu1FEGFpHxjFt3x1vI2Q+vagrs4JcIoFqaLGtTdrqbluGF9+PtLZN4Q==
X-Received: by 10.25.43.202 with SMTP id r193mr4710760lfr.80.1467803016190;
	Wed, 06 Jul 2016 04:03:36 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-218-130-no126.business.telia.com.
	[213.64.218.130])
	by smtp.gmail.com with ESMTPSA id 5sm144294lja.34.2016.07.06.04.03.34
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 06 Jul 2016 04:03:35 -0700 (PDT)
Date: Wed, 6 Jul 2016 13:03:32 +0200
From: Anders Darander <anders@chargestorm.se>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160706110332.GD23993@ad.chargestorm.se>
Mail-Followup-To: "Burton, Ross" <ross.burton@intel.com>,
	Poky Project <poky@yoctoproject.org>
References: <1464718260-8333-1-git-send-email-anders@chargestorm.se>
	<CAJTo0LZiqq2kqrzGs-9_9d5Oi0D9q4FAmOCV7=YA9YWCzPeNQA@mail.gmail.com>
	<20160706105202.GC23993@ad.chargestorm.se>
	<CAJTo0LawQHOkYEOidj=qyRxah-+oXWyd5otCQmKF9OFpZZVKhQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LawQHOkYEOidj=qyRxah-+oXWyd5otCQmKF9OFpZZVKhQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 06 Jul 2016 11:03:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Burton, Ross <ross.burton@intel.com> [160706 12:56]:

> On 6 July 2016 at 11:52, Anders Darander <anders@chargestorm.se> wrote:

> > How does the autobuilder select the 4.1-kernel? I guess it wouldn't be
> > possible to remove the BBG at the same time...


> The AB just selected the poky-lsb distribution, which in turn sets
> PREFERRED_VERSION.

Thanks, I had some trouble finding it prior to your directions.

I'll make a note to resubmit the patch later, when the 4.1 kernel has
been removed.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB


Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05083E00D13; Mon, 15 Apr 2019 13:15:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D983CE00C1B
	for <poky@yoctoproject.org>; Mon, 15 Apr 2019 13:15:53 -0700 (PDT)
Received: by mail-it1-f174.google.com with SMTP id w15so28959791itc.0
	for <poky@yoctoproject.org>; Mon, 15 Apr 2019 13:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:references:in-reply-to:mime-version:thread-index:date
	:message-id:subject:to:cc;
	bh=iDKoph6hOOUXhFkQc1jcEJALOfc+L6tYjQsG9NfPFKs=;
	b=QZLQIm0Q1lc3D1V07lS24erWADXZZGCoMrhu6G6G5lmkXaggbBbUYXc1FkjIOSyZ9f
	X8yUl8HYfXB+soyZ6FgLTLZ2Jh8E6nL+nV4fd4vpVpXWaKUujBJXu29BoNC46E03dlGV
	n0haX6k6IzgH3nOxG4HgLavcIgKAprQDv6lgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:references:in-reply-to:mime-version
	:thread-index:date:message-id:subject:to:cc;
	bh=iDKoph6hOOUXhFkQc1jcEJALOfc+L6tYjQsG9NfPFKs=;
	b=qwvYH54L/GscO4aUdBtW5oLRGRnHJKfqMDVkkwW5Zu69gctO8PFTV2khU6VBEPfYZi
	lnRYZTWKuhH2ckG/67kSnDRAjGT9Xk8kv3e9KVl+xT8PfgT05lo5CQseyOtSHhrRWUb+
	t05aJrfaD2ji9/KnWMESJk3YDzPlhgwqjTZL/e1c6D3EkDiBFaHCwoKsDQKBMIOYCKIU
	mrW76GH36ljIWjBZq5+SYB0yEFQQ2sxIkhz9dUsYOFzvhH6zcF+1kbrrIVA3fKthqvx1
	rWGvMXpThO/HUY1AgTdasNHLNpt1g7Id5oyvbwQ0bk2oqOJ3EnYrFXgNypVHZDOJgPj+
	qF0A==
X-Gm-Message-State: APjAAAVp+rrPyeXJSX1X1yGm8UXsL8UrL1RRkAMhBtSxirVolZQ9F4RN
	3uLEn/XchM7NZSbbsgtmjW+YKxXkY08LmBB0qc7IEg==
X-Google-Smtp-Source: APXvYqxeN91gxpu3y8WFoWvvyBEQxiqbcLxOIkWKYDycursgA5rubQyCkSN2g4c9G8znzIfIYf3F4R959TMLDbwhV0Q=
X-Received: by 2002:a24:247:: with SMTP id 68mr24439199itu.13.1555359353195;
	Mon, 15 Apr 2019 13:15:53 -0700 (PDT)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
References: <8c6201f9a7d14b56c3129fa9b0c80d44@mail.gmail.com>
	<CAMKF1spcRYnZd_cw++H2Zsi9aikkHw3nMRTQgPbcc6BSGyMcAA@mail.gmail.com>
In-Reply-To: <CAMKF1spcRYnZd_cw++H2Zsi9aikkHw3nMRTQgPbcc6BSGyMcAA@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQFoBC2bXR+iWIwzHVmrwh7nZTxsBgKmjbH7pwJSq/A=
Date: Mon, 15 Apr 2019 13:15:51 -0700
Message-ID: <79718ad1091c908c90b4580c0bdf4f4b@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: libc configuration of multilib config
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
X-List-Received-Date: Mon, 15 Apr 2019 20:15:55 -0000
Content-Type: text/plain; charset="UTF-8"

you might want to look into multi config feature.
https://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html#platdev-building-targets-with-multiple-configurations
https://wiki.yoctoproject.org/wiki/TipsAndTricks/BuildingZephyrImages#Arduino_101_and_Multiconfig

Not sure how I missed this section but it's exactly what I need. It's nice
that we
can configure it automatically without manually changing the MACHINE
variable
as well. Thanks Khem/Richard.


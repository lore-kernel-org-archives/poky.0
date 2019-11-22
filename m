Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2139.1574446370073798360
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 10:12:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GU4w7/U4;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9003E00E42; Fri, 22 Nov 2019 10:12:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.66 listed in list.dnswl.org]
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8796AE00E42
	for <poky@yoctoproject.org>; Fri, 22 Nov 2019 10:12:49 -0800 (PST)
Received: by mail-wr1-f66.google.com with SMTP id a15so9699421wrf.9
        for <poky@yoctoproject.org>; Fri, 22 Nov 2019 10:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=nytMnMxdEYHOdKlT4E2IgmyhOTe0Q2BFf/NL2kpiu44=;
        b=GU4w7/U4f8GEvqVC5GiX0IvHnE+Babm1zjtuo/FoADygETVf72cxaa95j9qPoG1aj6
         QjMBhh0lcrTffSXr2ihOxQ/KQmYbyRVmoPNpBzmeFu6oX6aGzm7g1gjF5bbRRFS4XVaD
         PYR6XGC70PCnjUzymY2j2azGTF6oq5o/aduEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=nytMnMxdEYHOdKlT4E2IgmyhOTe0Q2BFf/NL2kpiu44=;
        b=ljc8D3xGY8oJisEOK0y9cGQf3eAWcKGJ0u3Lz5z4zjUEy/apuS3GlMMV9rK+WVGKdu
         EEAaCZi0+190ywOVPWIyxjQoRnBexd2szrUGD7ltqaq4YiDXklfq0KNCqVk7kHs2nUaG
         iF5YDwcOwM52ZGG57JJBDGn5oYyeX8lKHM6pgMGvJOWSw8PYla9Vq26xbLIBWqdiTJTl
         gy/SbizKdREP6RLkWKOpdt9jLQlMJO+8wl5jnfvbCs1HQIGLZ+MuDqpBFu/vY7R7/L8q
         V224orN2lu/WJvFGmY7/tlIAwYYZeAY7WsxnHZ8RRvwWoNBVIL11JLv/VXcuIRVJ4ItU
         dpSg==
X-Gm-Message-State: APjAAAUiHoho2mASHDYcEbxmaJxA5Pva6mxq4LovILyJ+XRTbdqaaR6h
	OTrA1Fk9ooS68O1S/2SiQVrrhA==
X-Google-Smtp-Source: APXvYqzQdSKO/ZfKk7ulr6y9GVepZiUja/v19LRdFr23N/HpVzgjIPUVppUUzCO6VUSKgFp+HRSpdg==
X-Received: by 2002:adf:e78b:: with SMTP id n11mr2570500wrm.10.1574446368599;
        Fri, 22 Nov 2019 10:12:48 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id c11sm8045194wrv.92.2019.11.22.10.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2019 10:12:48 -0800 (PST)
Message-ID: <1c708581fdcbcc81e3fab40ef6d88175860eba0d.camel@linuxfoundation.org>
Subject: Re: [poky] Python2 maintenance will expired
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Junling Zheng <zhengjunling@huawei.com>, Poky Project
	 <poky@yoctoproject.org>, Wang Nan <wangnan0@huawei.com>
Date: Fri, 22 Nov 2019 18:12:46 +0000
In-Reply-To: <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
	 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
	 <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-11-21 at 12:07 +0100, Alexander Kanavin wrote:
> On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
> > The project has been working hard to remove python2 dependencies
> > where
> > we can and in OE-Core, on target usage has been removed and at
> > build
> > time, u-boot is one of the main remaining pieces that still needs
> > it.
> > Their next release should address that issue.
> > 
> > There is still a need for python2 in HOSTTOOLS but that is also
> > being
> > looked at.
> 
> I can confirm (from local testing) that as far as oe-core is
> concerned, u-boot is actually the last piece, and after it's been
> moved to use py3, py2 can be removed entirely, including a link in
> HOSTTOOLS, and native and target recipes.

FWIW I'm tempted to suggest we take a pre-release u-boot into OE-Core
for now until it does come out, letting us proceed with the rest of the
py2 rearrangement...

Cheers,

Richard




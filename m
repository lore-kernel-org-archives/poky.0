Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F758E00E13; Thu, 21 Nov 2019 00:35:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF562E00E13
	for <poky@yoctoproject.org>; Thu, 21 Nov 2019 00:35:11 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id t2so3306095wrr.1
	for <poky@yoctoproject.org>; Thu, 21 Nov 2019 00:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=NaWeXnEPapgiXBLCnce6aGLNR2Avb/7QybJWW9Q2qo0=;
	b=VEfV4jf7g+sbIW8AGVbGnvuQ1vjF+eKK3nAguDXT9/oUiHrafmilFqefoUTOo+iHtt
	Fyr4IVtACZL3pX5JkvqxtBu+5kgOx+hjmGz/93c3db4oCGyfUNKofD+Fks2kJjRCEk22
	GO/r9jkC9TsGUJr7jVjzYdnT2GfiNerv9rmmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=NaWeXnEPapgiXBLCnce6aGLNR2Avb/7QybJWW9Q2qo0=;
	b=KoWsfl+zj2YEvbH/138VREaQsh+DPrBLQngQlS1aYviUYyFh1tO7d24pSogmCQdlZG
	uzV4pV7GP+yxlunPAKBphbC9xy//2kvnYZBLXW8DshNK74BtJDXr8r6xsx62KWiDAYAu
	tBgT6tI1naPz+AUAhJUD3qupk6YGIrEQPr5zxnSp4Y+SgxYGTtKdSttJaDtxP/Gb4IgP
	SFlKrkn8B5PGLEpe6juQU2UJ9jeOGoEjk75tQfZwRdFFvClxIBc6W71OPkcCNZ7OIQuO
	IeUFtlUSOw3n9lab2/g9VLF6TDcH1aS0G5qMNVsy2A+PMF9PsRgN0q4OyQKcDWsBh6ng
	RZzQ==
X-Gm-Message-State: APjAAAVNVIvNZr/pv2YfF07Ng/kWBJF1e3frwwDmOUPNwFT8rvtjNvYw
	an2FfioMtO0Ca6TME7mbnFLcVw==
X-Google-Smtp-Source: APXvYqxVlpqG4shFWCNr1W+3eiQ/H8+usAPbQe6TYaEBGN6tjKqg0EyV72J7inZfDyadvQxJ6/abdw==
X-Received: by 2002:adf:9f43:: with SMTP id f3mr9046129wrg.76.1574325310853;
	Thu, 21 Nov 2019 00:35:10 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id j3sm2342754wrs.70.2019.11.21.00.35.09
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 21 Nov 2019 00:35:10 -0800 (PST)
Message-ID: <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Junling Zheng <zhengjunling@huawei.com>, poky@yoctoproject.org
Date: Thu, 21 Nov 2019 08:35:08 +0000
In-Reply-To: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: Wang Nan <wangnan0@huawei.com>
Subject: Re: Python2 maintenance will expired
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
X-List-Received-Date: Thu, 21 Nov 2019 08:35:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Thu, 2019-11-21 at 15:18 +0800, Junling Zheng wrote:
> Python 2.7 will not be maintained past January 1, 2020 :(
> 
> Some codes in yocto/poky are not compatible with Python 3.
> 
> Does yocto/poky have any measures for this?

The project has been working hard to remove python2 dependencies where
we can and in OE-Core, on target usage has been removed and at build
time, u-boot is one of the main remaining pieces that still needs it.
Their next release should address that issue.

There is still a need for python2 in HOSTTOOLS but that is also being
looked at.

People with time to work on issues like this are in short supply so any
help in fixing the remaining issues would be much appreciated.

Cheers,

Richard



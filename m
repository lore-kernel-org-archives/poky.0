Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D797E009AA; Tue, 24 Jul 2018 01:10:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79AA6E0080A
	for <poky@yoctoproject.org>; Tue, 24 Jul 2018 01:10:13 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id k81-v6so5962719oib.4
	for <poky@yoctoproject.org>; Tue, 24 Jul 2018 01:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d/GrlxKg/5uluSrGQxoPnnsV69DhXErU4gjEOA+ZpkQ=;
	b=amXvfEO/UuFIDcL9v2E88Oe9HhzPvrkP2fAd6xH6oWnVJ4JyFUFtOxrSv+izwbF3dM
	nwe+RthCB/hD9goD1nL6szKl/4tmLQNwHM5qW8oy8RAyk+apD3e1nr5uZOkXbSovqGGs
	MhDMGWKgTDBBMw6rsxiv5zWir+jrsYAeJ5pUl05ECtlkHAylSYpIKjdnGBrLNkIeFbGT
	DTG/R3T3ZAHXM9r23B//CDkoIyoeUI87vHmRMRxMt4fh9K964qp5ExNsKlxWzL9zoELT
	XN/Hat+7tYVIlo4/c6JmQ/4zwemqHrnIxutCEOUEMqxKlxlhrIITKjBz+l04MVqFsDZA
	RtYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d/GrlxKg/5uluSrGQxoPnnsV69DhXErU4gjEOA+ZpkQ=;
	b=mUIqBpVB3gOlAvLV6tuDjURrBCygA3e74Z12Yo1ER57VNUqwGkmTMdWfFP+f0sTbdK
	63g523TYQ618Y3eZuRUB+V/yAQZHv6h+McG0NLgANQUoF7eFzFvMyNAMqDxE4a+hSK4H
	Og/fEY2mwLwtm5h5uKVkjYYtj5ESvjl7CRi2CIdqLNsJ3sImo5ooFro7V1XNbj8Y3aUV
	UvcdNvcBST9jOjWFcBPKUSqToOdy38DmlC3sVTG+AP5cOlgS50BDKwV9GBv2cE/srU3Z
	q/QdXKRBYsDtIkbMCpsrtiNP32NPx0VnQsv1Ie/ki8ZFVWuupaq0vjQwMc6L3DaVPEgW
	qlWw==
X-Gm-Message-State: AOUpUlHqLbQ58n0euK3qjVDe7fZ5oToNOC2wSMJz7JjSVqiPy+thQ1HN
	STcpN/NDMY6kpCpairtQAh31cbk1i97mrcCBu9dYT7SJ
X-Google-Smtp-Source: AAOMgpd8ADFAP697ndn8Qi1o54vY27V/5E467Qhwae2mqnOPIbhheMoBsKXHCL02YW3AkCbzn3rP9j6jgrOGJlCSo8w=
X-Received: by 2002:aca:5dc5:: with SMTP id
	r188-v6mr2226162oib.320.1532419812992; 
	Tue, 24 Jul 2018 01:10:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Tue, 24 Jul 2018 01:09:52
	-0700 (PDT)
In-Reply-To: <1986949339.1309580.1532416272151@mail.yahoo.com>
References: <1986949339.1309580.1532416272151.ref@mail.yahoo.com>
	<1986949339.1309580.1532416272151@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Jul 2018 09:09:52 +0100
Message-ID: <CAJTo0LbM4WH0JK4V7mYgMyNjf_S9v=uZEoWG_LMx-2B9mrjASA@mail.gmail.com>
To: hardik vala <hardik.vala@aumraj.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Build Error
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
X-List-Received-Date: Tue, 24 Jul 2018 08:10:14 -0000
Content-Type: text/plain; charset="UTF-8"

On 24 July 2018 at 08:11, hardik vala <hardik.vala@aumraj.com> wrote:
> meta
> meta-poky
> meta-yocto-bsp       = "sumo:96fbd39ba32362416c18d90bb7a81eb6a76912e0"
> meta                 = "master:ff0b682b807959521c85716296de7a1d26d7d18f"
> meta-oe
> meta-python
> meta-networking      = "master:0aff7abedc1c7727c88029a123107f4faf5ba4f1"
> meta-java            = "master:ecb637a8cf5eb0cbff67e9e568858f7bfed061fc"

Why do you have meta twice, one with sumo and once with master?   What
branch do you want to be using?

Ross


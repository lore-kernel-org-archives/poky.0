Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F330AE00901; Mon,  1 Oct 2018 03:59:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF813E00826
	for <poky@yoctoproject.org>; Mon,  1 Oct 2018 03:59:15 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id m23-v6so12612827otf.0
	for <poky@yoctoproject.org>; Mon, 01 Oct 2018 03:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FyFasRAu2APmkndvOibif3EjcP1iMajP3egmCpYIz1Q=;
	b=a/9hnUoPBk/7QVY24LWp7RKPGcTS91tIoyiVw3NjDmNrAsLqZp/BOg/02ncJ/oO0Bf
	zO9+UybvgSHE3KTLeOnEeq1E1zkPnC5/IBoRHlDohVMJdwmYKYI4rNg/D+qAoeN7nnSK
	degpV1s79zzkNPSHoOCsgpjuca/qnRpOlV7gZ681HGSSI9M1NWSY24fZ76d1+5SlYUTN
	PgWjEqF/WT+kWH2rtJr7qxYIHC9fbfwtJmdAzUubH0ceZEPyVQq6xNSSGzI45UYtzayU
	Z2MXejGwi6gKtIgDak33VgQ4vX0YwJ1NOBlKhqWVocNMPAJjHyTQy66dj4GMz3DEysEo
	1U9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FyFasRAu2APmkndvOibif3EjcP1iMajP3egmCpYIz1Q=;
	b=VVQRvLRDsXICdSnBrSuNP0NryanytXnVkMysunazsMZOnXcquU1WRVzGfi6IjxQJND
	n05eIuKyP0qHwPmKk+jcCH6dvw7brB5HY0QHvoyzHdl4z+30mGggujuhDjeWe2JpTLz0
	94pe8WLAfUvJ9HJJxN+oj69ntKA6r38rkAeygPY7am2S1GpMpJZaBavxZmwSGT68l0Xh
	dqxf83S9m1LWwh6tOZ+mrxG2pwPE6N6+ry3GwtZXF+yAWbExjmLBYxJcSLA6cBBHacu3
	RtqhYsa4W40kHK/0cN0GiVappozx7rlqf3dLRyeGBX2O2vI9gWX0G3SmEr0mK+5KgwEe
	uFhQ==
X-Gm-Message-State: ABuFfoiTV+8REA6wChZJmYPBr+RQf9gXVlXjPuSaz0h2ikuU14EgZoB7
	vDznbF4ztrKf7+qLkhI+UBmf6oIbxWJzs9x1Mwcpzw==
X-Google-Smtp-Source: ACcGV62LCz4dKrmvLUbhySgbY04CpoQIhpbUx56K06KUjEuFlGREYNSL8RXLbQNp/uYU0AKqELFOzhrL7/TkJWl8RME=
X-Received: by 2002:a9d:4d8d:: with SMTP id
	u13-v6mr6413939otk.133.1538391555279; 
	Mon, 01 Oct 2018 03:59:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
In-Reply-To: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Oct 2018 11:59:03 +0100
Message-ID: <CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
To: stangerm2@gmail.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Systemd on Sumo without python3(runtime)
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
X-List-Received-Date: Mon, 01 Oct 2018 10:59:18 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, 30 Sep 2018 at 20:02, matthew stanger <stangerm2@gmail.com> wrote:
> I'm having trouble removing python3 from being installed as a runtime
> package using the Sumo branch. Per the systemd(v237) build
> spec's(https://github.com/systemd/systemd/blob/v237/README) line 167
> there isn't runtime requirements for python3, only build time.
>
> It looks to me when running a .dot on the systemd dependencies that
> python3 is being pulled in by 'meson' as a non'-native' dependency,
> but this is where I'm lost. Could anyone clarify the logic here on how
> to trim python3 to a native only dependency for systemd? Or is there
> something fundamental I'm missing?

Looking at the recipe I don't see where a Python 3 dependency comes
from.  Have you verified that it's coming from systemd?

Ross


Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0183CE00A1C; Mon, 26 Mar 2018 13:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C997AE008E4
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 13:56:09 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id 19-v6so12498910itw.3
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 13:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AYTXb7PrFMJQBbXrTCenY3Z/PoQgmcegOaWYrLdwD0I=;
	b=FJxZSKFNIsgSboMm8TdJIXufccE6/FWDLzBf9OgFYMkbI0mOfDOkNsbyuA49Tucsoh
	WTTZHaWeHiJsi1ARvfdKGAdznGpw884Jp1usQWtkKNNwYvSRnHlqzZbv+MV5bUhdHzCe
	awKa37kb6WQP/JTVf8mWBoV2CC3XVLZ+cKeL+9SuFqou6NqEUv0erqeSy1Dl4z4fSr+K
	v8O5Smo+27ridPBz5CA+2p1GzeIj6dNi2sqoIKNO9oyNN9uj+VLxmGECwpJqsVwDnDQe
	68dftTu5P4ChDiP16w3Oxjzy/429KABKVY6J77VRlWuYbpBmilYEexJav/hv0UNtwcXF
	Lu/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AYTXb7PrFMJQBbXrTCenY3Z/PoQgmcegOaWYrLdwD0I=;
	b=k3lYQEqbAK6u3Lo3kQIeqhyX+J5MlGk5RWrqnELaTgCYO1t0VQStf3m0mVTYBWePSJ
	platvQd2AK6qbFEJ87ylwd5ksq/I7hviA7wJTvnG4P2/E5Llb1l2zXdSz4DmOPJJkAPj
	BuET1b7fqzwwlRn2pCQIr8lO7NxCIc5UMXIqeYHx9uktp9w8dIyGVF+i26RvC8tLQy7t
	kN6gAzBGRkhxeOmMDcV9YD52ZWrFGLgnD0C3Qf5lM96RXC2vJOPvUefUsOVySCSWIV4d
	Cro5ifEdDdg8OFElI+UpHYQg36Eq8NGyM0GBtMx6LUjlAFekIVIickeA7wnoGuutdEUm
	edkA==
X-Gm-Message-State: AElRT7GT0LUa6eMfGjS8PAhgzvg1YCbilQueRLvHWXV7+5ZxP7zHC6L9
	vzvsZEa39YAZ1crANoxBxhouOp4Kbl/3ZQEIWdnTAw==
X-Google-Smtp-Source: AG47ELsZFmrmRCfz4cyFTIPvQ1xK4U40+rkD/GLDAW6aRpAHD2cqm6Mz4lwHCtir4f3fnVgjd0dsetgkF1/gR/D475c=
X-Received: by 2002:a24:f685:: with SMTP id
	u127-v6mr23684182ith.131.1522097769043; 
	Mon, 26 Mar 2018 13:56:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 26 Mar 2018 13:55:48 -0700 (PDT)
In-Reply-To: <cover.1522085586.git.soemoe.a@gmail.com>
References: <cover.1522085586.git.soemoe.a@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Mar 2018 21:55:48 +0100
Message-ID: <CAJTo0LZcVrPqJgEcZSobi-QO8YBg0GeDy94VwPFqV0MC4NDfuw@mail.gmail.com>
To: Soemoe Aung <soemoe.a@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PULL] *** Fix build issue with html5lib in bitbake ***
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
X-List-Received-Date: Mon, 26 Mar 2018 20:56:11 -0000
Content-Type: text/plain; charset="UTF-8"

What branch is this meant to be applied to?

Also, as it's a bitbake change, this should go to the bitbake list.

On 26 March 2018 at 21:51, Soemoe Aung <soemoe.a@gmail.com> wrote:
> This fixes a build issue where bitbake won't run because of an issue with one of the libraries it depends on.
>
> The following changes since commit ea6d21066a7cce2fef08ad66287170c5995bb1e2:
>
>   bitbake: bitbake-user-manual: Fixed porno hack for hello world example (2018-01-17 22:32:46 +0000)
>
> are available in the Git repository at:
>
>   git://push.yoctoproject.org/poky-contrib saung/bitbake-html5lib
>
> Soemoe Aung (2):
>   fix build error in included html5lib in bitbake
>   fix html5lib fix to be the same as in the krogoth branch
>
>  bitbake/lib/bs4/builder/_html5lib.py | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>
> --
> 2.17.0.rc0.231.g781580f067-goog
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


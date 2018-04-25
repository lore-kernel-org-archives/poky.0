Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82B45E00B30; Wed, 25 Apr 2018 04:56:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C26F2E00A4F
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 04:56:05 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id p3-v6so19099710itc.0
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 04:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AsqfU2ncj2Lp4buW0g7TQKwEUKAjpbdeVAirWVEPGs0=;
	b=rMJWyY8q8XZe3WrQWmAVMVZIE+Qix9CxPhzbsbAwmPk3Exe2yfNMF/RN8e1/Pzdoso
	pqC2R2sqGdgEi1GDno2ICUaSINveBiBL6f5gDgTkpGkRROwmbJtBdF+J1OffqnIkfW42
	YRdP4xGksStX+QYwsy1ZrW+L+g5UeHtKNU8iHQ9kJtNXHjWgm5n1ZqV+Pfv/dMxdmMxB
	3P8F+hqSGnjdV4mOc9tp/SwGUaBYvoqCj3RuRi3nmPTN72sM+z4XbI+GYQzcprMBqPGL
	YSOi6eeLzDrhTV1+eG1CY3xA6rHGYN6+t+wvMtYArTBw/WEJjnFdUrsD/UIOkhZbHTCc
	wB/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AsqfU2ncj2Lp4buW0g7TQKwEUKAjpbdeVAirWVEPGs0=;
	b=JAodCJxChiWiAgeGk7ziioe7xExRVfzE06Ceqs5j0s7GhGk0OseEgUs8pjIoAeN0/x
	OjnAqAPGA+Dq5sbRlsMqq5yUCYRgfN5YOxtvnAtb7yS1YUUpMEba4llebPgLMoEoBwSc
	QMpebtHJ76wzj5m8ZDdaESGT9zScfUNvZ/eQ06x6GB/tawiP2nyIQBqqdkhaYMSQizQL
	h+QzSAqh88VzOYKBbNNMT63OwiIigaVrolfuH06NxaPOymLGOtoJIHTCOLc2BBgOG55C
	5leNGNCeh0c+fvSG2DacOXxGMpWH04msB3yf+qQXHM/wbib45LBBR0J3+wl1lME2sGsY
	zocQ==
X-Gm-Message-State: ALQs6tDL5ELv+1LvztBCnsz3tC73dYW2kgl5Ftq8me9+LpBsgwA23aXC
	+9vLZKPrd/IEXAUAEfqk75MzwO6R0TEsJT3RKJbusw==
X-Google-Smtp-Source: AB8JxZq0t5/Q5cMLa8OWhvzyY0Fl/Kdj5lH21SXs4X49BN0Jn8Vbcx2H8rL8moLT8GoCshzdqssDQzFf2Sw7sXxA7To=
X-Received: by 2002:a24:9493:: with SMTP id
	j141-v6mr5314408ite.60.1524657364829; 
	Wed, 25 Apr 2018 04:56:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 04:55:44 -0700 (PDT)
In-Reply-To: <DB3PR04MB07615375106BB51453EA61BDA18F0@DB3PR04MB0761.eurprd04.prod.outlook.com>
References: <DB3PR04MB07615375106BB51453EA61BDA18F0@DB3PR04MB0761.eurprd04.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 12:55:44 +0100
Message-ID: <CAJTo0LZ10s9BvXo2_TKdMAmSA0QzX2C+N5rwVbeuX2K9bbaKkw@mail.gmail.com>
To: Martin Lund <malu@gomspace.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL][PATCH 0/1] mtd-utils: Add mtd-utils-tests package
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
X-List-Received-Date: Wed, 25 Apr 2018 11:56:06 -0000
Content-Type: text/plain; charset="UTF-8"

Please post patches, not just cover letters.

Ross

On 25 April 2018 at 08:11, Martin Lund <malu@gomspace.com> wrote:
>
>     Add mtd-utils-tests package which includes the test suites mtd-tests,
>     ubi-tests, fs-tests, etc.
>
>     These test suites are useful for verifying flash features and stress
>     testing.
>
>
> The following changes since commit da3625c52e1ab8985fba4fc3d133edf92142f182:
>
>   build-appliance-image: Update to sumo head revision (2018-04-23 17:54:32 +0100)
>
> are available in the git repository at:
>
>   git://push.yoctoproject.org/poky-contrib malu/mtd-utils-tests
>
> Martin Lund (1):
>   mtd-utils: Add mtd-utils-tests package
>
>  meta/recipes-devtools/mtd/mtd-utils_git.bb | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


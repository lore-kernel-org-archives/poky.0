Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BBD0E00A48; Sat, 28 Jul 2018 15:15:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE27FE006EC
	for <poky@yoctoproject.org>; Sat, 28 Jul 2018 15:15:16 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id s198-v6so15133033oih.11
	for <poky@yoctoproject.org>; Sat, 28 Jul 2018 15:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vf0eyN9LOw2jdrogE/hRV+ereqYgMCDgsbC3JrgrGmk=;
	b=hrsqQEqsxgtmy6Wzacea2i/F9PkLeEzod9xizCLrS0JkEoPzZ4yAlCkVJ1zuNjEb5Q
	X5QD9qRl1g3CV3hO5knYwM63bCrdlNEQWOH3ruk+7+Y7sCQQA50XtG5JmXNO+QbeShiV
	NBHhiikrQafCHbFtOp9VC+Cv3kUuv10+H5lMttjR9jTotqNO7Gt681ADHD0fwRYPqfFh
	NST1B2THUol3V/BfzxEsYUIj+Q/zt0KuMSihZBd9TxqJl3HluQDZbygO6UmzyoEkQB2q
	AUmglEs1xOi56iQ/Nm1EkLkpUiFL2dpkLnroEbLHDZDBOHCbziypwpvZ4yL4Ui//Op8j
	AUAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vf0eyN9LOw2jdrogE/hRV+ereqYgMCDgsbC3JrgrGmk=;
	b=aM2Q+qZLI0ftqD7qlkz/lm3t20JXaprhrzMGpwRKEvQvgstOwQRA02yZ6rNjVojeC8
	rrIcRVHHU98x8TjcwbsOI/krPQ/F4QaOh8aOUtlQSJNVPdUfpcPRby8wh9Fzhv7NZElf
	UpwwEY45OxSkUciJhPy2k+PAchiE+CPbeqL+PAd5wPjYlFpXsroXiOckIt82nNsu9mCn
	hGw9Wn7yNzGfTGS4RpuIJlqHYOVaDeU8pi0KX5S8H8oOVgAkm3mipbbJsklekOicME1e
	XnMqWl10G4v05pIIDoGOtWrb4oFMDuICfVdWHrQbhEqvvCW3tx7c0VntRgqiMdfhhXWN
	dXYQ==
X-Gm-Message-State: AOUpUlHbuFKryG0olUJQYqpaPqacvqE7twT8rWMKbwMhp21DdK4ixs3D
	Vs/d4VLegIVT94TBSoxOpwsZjHgtP2XlwUNj5/tR+w==
X-Google-Smtp-Source: AAOMgpeeR58vzwSTcy9FnGvIUFbENaBsCVKbDl56nMJCxSaZW8jsRWcxxhivl7RPyIBqMHNEJyZAn/QssDbg7K09oJA=
X-Received: by 2002:aca:4c8e:: with SMTP id
	z136-v6mr12970524oia.170.1532816116049; 
	Sat, 28 Jul 2018 15:15:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Sat, 28 Jul 2018 15:14:55
	-0700 (PDT)
In-Reply-To: <20180728024614.10888-1-raj.khem@gmail.com>
References: <20180728024614.10888-1-raj.khem@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 28 Jul 2018 23:14:55 +0100
Message-ID: <CAJTo0LYk=tYeJsO84-_jVggersyWEvua6eKX+8GFg1Ymq=r+=g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [meta-poky][PATCH] poky.conf: Enable security flags+pie by defaultEnable security flags+pie by default
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
X-List-Received-Date: Sat, 28 Jul 2018 22:15:18 -0000
Content-Type: text/plain; charset="UTF-8"

Interestingly, considering that poky-lsb used to do this, the
autobuilder is failing.  See the ross/flags row on
https://autobuilder.yocto.io/tgrid.

Ross

On 28 July 2018 at 03:46, Khem Raj <raj.khem@gmail.com> wrote:
> This has been an opt-in for so long, some distributions e.g.
> poky-lsb uses it by default however, since most of linux
> distros have started to default to these settings for security
> enhancements, time has come for OE to make it default too
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  meta-poky/conf/distro/poky.conf | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index 1c4feeceaa9..392c2383ee4 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -98,4 +98,5 @@ ERROR_QA_append = " ${WARN_TO_ERROR_QA}"
>  require conf/distro/include/poky-world-exclude.inc
>  require conf/distro/include/no-static-libs.inc
>  require conf/distro/include/yocto-uninative.inc
> +require conf/distro/include/security_flags.inc
>  INHERIT += "uninative"
> --
> 2.18.0
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


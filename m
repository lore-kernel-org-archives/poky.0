Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D64E8E00ADD; Tue,  2 Oct 2018 07:58:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
	[209.85.167.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84E4EE00718
	for <poky@yoctoproject.org>; Tue,  2 Oct 2018 07:58:30 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id w81-v6so1735016oiw.9
	for <poky@yoctoproject.org>; Tue, 02 Oct 2018 07:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nQqr72Y+jPIGpyxwG6+G5cBcuFbbr8GPxcvXqqcDgAA=;
	b=PwYfH5N/BaByVY+6jabBvvi5DjqliIsAjqjEzOjwWLdbSABm8Dzps8fBbsqIdsCh6e
	aWUzOwLb3EUh/sA6zWdTDmeEPO/5hxWZQIkq/hzHR34YoRE7auwmHEnhZDyDNjjEUuw0
	kIBRujKe5aHp5B2fL6LOwepNagzRDDkjC4nLw9GwtoIC8b/65ZiaZuVr3Jbn6Nx7/beL
	h4vEg/FcAKwcNsM3WC3V1K+AEhBhwuUEnXf7MMVUM6QPEuTNn7R3ZFQNS2Iuiipx5IMF
	lvAOxkWeCoV8PCEzg+jzObZynyAy8PdQvSZjyF5KLQk/rOzQgUdc0W1rQ/7BfrxA/qIM
	IU8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nQqr72Y+jPIGpyxwG6+G5cBcuFbbr8GPxcvXqqcDgAA=;
	b=CokJI5Covw4c+bQRrVQV3Eme7hlBvogZJJM4cWYVoJ/bOXVDMhYTB3jR68TJ2ytygG
	wzioaLydBsKXmOiW7i0T2mNrog6knjEAiW7wenXzL2ocQ0rCXctFNyVHc0FRloOFjJYZ
	KVMAYnG7arek8QuvMJD/QeDKcIGCbYQ+1/YstLTYDfhSVRLbNXbG+XcOyBSYMsda62xU
	UTmXcmN1x8gR/068QretpRTwK+UBunFImqJWhbMF/pkvJ8hj4bHuIFQBgSlHmOVzywpp
	2Cee8rgfNtu2yabUKcsnvnUUkFj12yJZgwD/a1MCYohXSit99Su8a3xk611rfoyj79u7
	vHiA==
X-Gm-Message-State: ABuFfohH1Z+ccH/Eu0Aot6spvzwEuUCxegcuG9O1/Qy9ialKMFn1k0q6
	6N9YyIczTyKC08Gj2e66CoMjsaSZyz3AyZyAWuCrhg==
X-Google-Smtp-Source: ACcGV63srl+vqEXCREyQl+zf31OqEXFk243A1eONOhzHQn1grCs/1r9xnmG5h2IVIv8fypB9fHBpG/+UvkdMYIPlF3Q=
X-Received: by 2002:aca:2c5:: with SMTP id
	188-v6mr7181023oic.192.1538492309888; 
	Tue, 02 Oct 2018 07:58:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
	<CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
	<CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
	<CAJTo0LYB5rm_d0VFN+TnrRy2c4f1on86cM60Tm9yru6E9AXxuQ@mail.gmail.com>
	<CAGni2MjLkvOASyD=+yDrVLr2nCisq57a3KoKkhD8xVbu2CvDSQ@mail.gmail.com>
	<CAMKF1sp2dp7BeP4z4n7tBnH08o+0gsGtxJdm-pLAwumj_2rx5A@mail.gmail.com>
	<CAGni2Mhd2O_fBkgZH6rh+UGZfVugSsOtM1pdtxe9TYQcQy7P+A@mail.gmail.com>
	<CAJTo0LZKHHAbg_cwqo0=tvcbd8VeU=2KGU6ZV0T4KhrcpXq+fg@mail.gmail.com>
	<CAGni2MhuW81k=DtE-mQ+Lk2VS2drFhEdSLbKkup9dvpJwqaKig@mail.gmail.com>
In-Reply-To: <CAGni2MhuW81k=DtE-mQ+Lk2VS2drFhEdSLbKkup9dvpJwqaKig@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 Oct 2018 15:58:17 +0100
Message-ID: <CAJTo0LZYfKr=Z5p43tnL4UsLj8Ni9QT8aZxSBw5=JPgPXgFncw@mail.gmail.com>
To: matthew stanger <stangerm2@gmail.com>
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
X-List-Received-Date: Tue, 02 Oct 2018 14:58:30 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Oct 2018 at 15:45, matthew stanger <stangerm2@gmail.com> wrote:
> Yes, I've gone over it many times and I'm sure there is no direct delectation for Py3 in the image.

Have you verified that Python3 is *actually installed in the image*,
as being built does not imply in the image.  If it is in the image, a
simple "opkg remove python3-core" will tell you what is pulling it in.

Ross


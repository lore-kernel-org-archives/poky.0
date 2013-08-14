Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5062FE013DF
	for <poky@yoctoproject.org>; Wed, 14 Aug 2013 01:34:23 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id w16so7379673vbf.7
	for <poky@yoctoproject.org>; Wed, 14 Aug 2013 01:34:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=euZx77lbN8FwPvibEvYkOgMIgB2cSQ/yWO85wW8CoZw=;
	b=kT5aKjpzyu6hINo9NXWYlaS4F96ya0psg58W9/ZcBFe933GhkRfPc2Dq08jKWzdXH8
	nDiRVcezdp7UY+Pgvv51Fyr+/2puNjVA2FG1t4gnpv0fZDrtAIJSitqVNRN3BJMFYsGh
	qQW8o2o6Zr9rQmVrN4zLVwATn96A+0Q1DWkZ+LsdyG/dGoX30lRBddPFrUfhoPPLan9s
	vvoB9AcM0GPT+xdaRE6VKDK6dfWPIxCNt+H89TvMY405pGXvmyxl9u4gi2IwF7y8bJkw
	FpRp7+uhD0yW1DlSxYljtsGJzRrDZQCEOIdQtld5VXmJ/V8GxxBLktGU35PXdN6U7jua
	7Ggw==
X-Gm-Message-State: ALoCoQnZz5H9iK2CC5KObUhaiQp+Lus285k33CTPT5Go8gcoGL3AExHjd0alOvMUt8MGSSBXRhc+
X-Received: by 10.220.11.7 with SMTP id r7mr8545952vcr.12.1376469262708; Wed,
	14 Aug 2013 01:34:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 14 Aug 2013 01:34:02 -0700 (PDT)
In-Reply-To: <CAOMwXhP1MH7aYWAf7_WPm1_5-GX6ugUOtyzZtC6q_+0Wp9jZBg@mail.gmail.com>
References: <CAOMwXhP1MH7aYWAf7_WPm1_5-GX6ugUOtyzZtC6q_+0Wp9jZBg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 Aug 2013 09:34:02 +0100
Message-ID: <CAJTo0LZH_tEGaom5n9a7Dd2q8bzfVHNm6sFRTFBqD_JKGKe-dA@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
Cc: poky@yoctoproject.org
Subject: Re: Stunnel recipe
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
X-List-Received-Date: Wed, 14 Aug 2013 08:34:25 -0000
Content-Type: text/plain; charset=UTF-8

On 14 August 2013 09:31, Laszlo Papp <lpapp@kde.org> wrote:
> I am having an stunnel recipe for my distribution, but it would be nice to
> share with the wider audience. Which layer should I submit it against?

There's a meta-networking layer in the meta-oe repository which is
probably a good place to start.

Ross


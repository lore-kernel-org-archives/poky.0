Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B24E8E00BBC; Sun, 20 Dec 2015 13:52:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6291FE00AD2
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 13:52:27 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id e126so137969667ioa.1
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 13:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=K2NgbY0oAWtBvhIvrHlC4DM8kQlac7W0280e9PDNy7k=;
	b=f8SPBjSE/u3CE8SlqFJrbuFOyPTPZdcWlERaT0o/ylonruKnrk9dO95QLJ1TLuk7Pd
	u42/NL4Gku97kbZA0YJgRVeIHva0yGVErVTpKWh4aRUewsh1SjF3YZAHQONUpXAyJMLv
	JMiV4MQGB4a4Dp3FJwUsMWXUKYattu0Ilwo09FCzlEJ9RY/RZkEZoT0b2bALVbPNNics
	1BN3eRujTx+3u+BwPjTrT80JAGz3fi7yB8FVetEyaglvBDHitrHnNV70moQPYHjgXQEY
	CdjxQKCVOcdKVr7ViUNZsuRqje/lFQmWAxq25TSohMi90E80OntfRFY5ASrp0VEhvLUs
	fRRQ==
X-Received: by 10.107.4.213 with SMTP id 204mr18307947ioe.195.1450648347665;
	Sun, 20 Dec 2015 13:52:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Sun, 20 Dec 2015 13:51:58 -0800 (PST)
In-Reply-To: <CAA2DH4tQFdkTJg45Y3GSGQyJEOzMoO=fuXCrQ+jtcPJzQE3S-g@mail.gmail.com>
References: <CAA2DH4tQFdkTJg45Y3GSGQyJEOzMoO=fuXCrQ+jtcPJzQE3S-g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 20 Dec 2015 13:51:58 -0800
Message-ID: <CAMKF1srDcSFkNA60HwoStyt5sSOyE_yVm36sV_EPJcQdX3K03A@mail.gmail.com>
To: Prasant J <pj0585@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Custom Kernel Recipe: How to specify KCFLAGS args during kernel build?
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
X-List-Received-Date: Sun, 20 Dec 2015 21:52:30 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 20, 2015 at 4:38 AM, Prasant J <pj0585@gmail.com> wrote:
> Hi,
>
> When I was building the kernel outside the yocto project, I used to pass
> "KCFLAGS+=" argument during command line (make arguments). This would
> include my custom code, if I needed during the build.
>
>
> In my custom yocto layer, I am adding linux kernel recipe. How can I specify
> "KCFLAGS+=" args in the bitbake recipe?

Just like this. may be you can presend it with export if you want to
make it available to all tasks for that recipe

>
>
> Any inputs will be of help. Is there any example kernel recipe that uses
> this feature?
>
>
> Regards, PJ
>
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


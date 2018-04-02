Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4B15E00B01; Mon,  2 Apr 2018 06:31:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f53.google.com (mail-pl0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A54D9E00857
	for <poky@yoctoproject.org>; Mon,  2 Apr 2018 06:31:34 -0700 (PDT)
Received: by mail-pl0-f53.google.com with SMTP id v18-v6so2134041ply.12
	for <poky@yoctoproject.org>; Mon, 02 Apr 2018 06:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qlzAVcmw9paWeZjBPTGLmM8aHvssxh21Hlvuwzy9uFc=;
	b=pVrWHtKn7RopRwx38xbTyeYNfthX2nl4BnL3ClazqZNk9zdZnF6utg3zJjyqR6oVyt
	ys98Nln7be98hwRboPsxXhnz8svIMexpDGM73qDDKqjw1345UTs4DGcCrmeRLpglxPaD
	Dn9M1iU4cix539HhGEzmMKzdlhaTreqWLQkuFVoaUICSG/rC4mne4XXMHgvoF4p7aJjo
	xbWe5ZvNpq1AZZavbWFaCTJbexaAieAdj39hduXliTJLYq3jCGyRfK6pZkDwePmUtS7c
	Fd+Pq8W2CUXEz8IAyzOGLP3TSYD2ZhJReyalwAB9FvEwCSIveieWNPj9bmKfb6N/QW7T
	4gng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qlzAVcmw9paWeZjBPTGLmM8aHvssxh21Hlvuwzy9uFc=;
	b=FyZP/Vnk/oJ0TngZetv5iqyYyMVHVyXD700RvKtCAvxdB33oSqEY7BHey79QexpNcZ
	kSp08bSYJaSXpjbH7Vmt3cbDue9LOmHeJ/pxeh3mZGb+iyyovfTiXFe/F9El3YGIB5OU
	HjzeQSAYSMp47JRbfwrHs1Fg6CRQnonrJlfKsOKjJYF/V2JoPo/GbaJII1ICGhMTOVjh
	E3dHzhOiCs2c0rNbcNEUtgEMNt9KvWHwSqHbClGxo8mhgqMBqYb3PBOZB79Bbjgg53H3
	JrLv5PFqaDfdMNOPi8YRlzjPxWApa1ofXVzFMpfjHPLVmaUARK+0MqH/PytEze1lVWGF
	jeqw==
X-Gm-Message-State: AElRT7EkvKDezoUCBAK6OpwBuqYy+V//80klu/KBBkhLqp6x0k/WHTpn
	yjBlc2f604VO4Z7YpmWNKuIyYTYFtSrH3mQ7RbU=
X-Google-Smtp-Source: AIpwx4/IJRe/25D26gaQdazU033YbSykrSHAsJaSi5nYFfs6BjNR3etDpntJu91QTHX8pGBA3l7xtOjKY4xQtdcVi8I=
X-Received: by 10.101.73.207 with SMTP id t15mr6469917pgs.204.1522675893527;
	Mon, 02 Apr 2018 06:31:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.227.8 with HTTP; Mon, 2 Apr 2018 06:31:03 -0700 (PDT)
In-Reply-To: <MAXPR01MB0348CE087E02E7FA2D8A799391A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB0348308E57E30FA8D6824DCB91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
	<MAXPR01MB0348CE087E02E7FA2D8A799391A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 2 Apr 2018 06:31:03 -0700
Message-ID: <CAMKF1srNpfx_Zt+LTQhZe8ZowoYQ+3rYX=1NcnQDmHq+h+B_fA@mail.gmail.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: ERROR: problem:package openssh-7.6p1-r0.i586 conflicts with dropbear provided by dropbear-2017.75-r0.i586
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
X-List-Received-Date: Mon, 02 Apr 2018 13:31:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 2, 2018 at 6:02 AM, Aditya Tayade <Aditya.Tayade@kpit.com> wrote:
>
> Hi,
>
>
> I trying to build core-image-sato using yocto 2.5 with new package openssh.
>
>
> Added openssh entry in the local.conf file as follows:
>
> IMAGE_INSTALL_append = "openssh"
>
>
> But facing some conflicts error. Please refer attached log file for more
> information.
>
>
> Could you please help to resolve the issue. I need to use use openssh for
> ssh rather than dropbear.
>
>

you can use image features,

something like EXTRA_IMAGE_FEATURES_append = " ssh-server-openssh" in
local.conf

For more info read the particular subsection in manual

https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-features-image

>
> Regards,
>
> Aditya Tayade
>
> This message contains information that may be privileged or confidential and
> is the property of the KPIT Technologies Ltd. It is intended only for the
> person to whom it is addressed. If you are not the intended recipient, you
> are not authorized to read, print, retain copy, disseminate, distribute, or
> use this message or any part thereof. If you receive this message in error,
> please notify the sender immediately and delete all copies of this message.
> KPIT Technologies Ltd. does not accept any liability for virus infected
> mails.
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


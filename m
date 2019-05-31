Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4946AE00D52; Fri, 31 May 2019 06:46:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D156E00A0C
	for <poky@yoctoproject.org>; Fri, 31 May 2019 06:46:09 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id v19so7644843wmh.0
	for <poky@yoctoproject.org>; Fri, 31 May 2019 06:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=fhrL+n+o8bKqm1L+w0pbjYs0+TdBG8lHCRXVuGUvtU0=;
	b=YMuzvl9g/uXyssEp+xEHhrt6knO2YEpfCmwpOBLbxn1E71BmnoGdxoLIFuGP6/dHdd
	TlVe6SMLh66Y40r1kErYDLJQyGtQCdMxezk/DLEjkDWG5T4E3lhqi3sCskQqUR6XB/7V
	2DmIJABVU4yex2fvuaWB8Nba4SNVKHOSE2N/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=fhrL+n+o8bKqm1L+w0pbjYs0+TdBG8lHCRXVuGUvtU0=;
	b=pkIO7rqkHbywuzHVYXBDoi+bqj44Z/d/NLgJev4rUHZQyoc2/ylhTUq3MLjfY/mHew
	wfXSww7bW3B7Hu1E2Y7dQ5GEY4RtnVlvKN98/dsILvlZwBCuMxERcB8RKUvWBJxHya6J
	Eaad+jk8Y2cT6kJf6yeh8bwiE6ObHJGbz+ExQ8H9sLmNZNPGv4Mcitmo288/BYbpjW6C
	ogIktML8sqysLrtvSOwYzMnfIWO3SYkEFc+XBuDBY5jFtaAtciQ+GaB3z1t0yLHTXQXp
	gBRAu06MxiiUvQ5mPRnAW8SB6Qwm+rf0qZrqhXbiol7yaviJyMzFQgd38q5pGXqwxD8W
	3L/Q==
X-Gm-Message-State: APjAAAVwvSSitSmzXPIXB4OTeckDjcD1XnJylHkncjtyrTiJnL29JWcO
	aR1M7UERkKETFnsi/xDiB/zuOw==
X-Google-Smtp-Source: APXvYqxiqfMyWUzcm4dzjD+bcR2LBQ/jimoPVEPf1hJ0A/vs69ffGyTeEWiRFxlhnXxb0sb/5Xd9Yw==
X-Received: by 2002:a7b:c928:: with SMTP id h8mr5673262wml.7.1559310368856;
	Fri, 31 May 2019 06:46:08 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	v184sm11776712wma.6.2019.05.31.06.46.07
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 31 May 2019 06:46:08 -0700 (PDT)
Message-ID: <0e978a095cb3397f06c0d67a44b592ab875aadf8.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Date: Fri, 31 May 2019 14:46:07 +0100
In-Reply-To: <20190531133925.vn5xb2n6hpl73sup@qschulz>
References: <20190531090953.shdqfcmj27ei4evb@qschulz>
	<f5917aa1aeba82bf983822060561e231ab8378fe.camel@linuxfoundation.org>
	<20190531133925.vn5xb2n6hpl73sup@qschulz>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Fri, 31 May 2019 13:46:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-05-31 at 15:39 +0200, Quentin Schulz wrote:
> Hi Richard,
> 
> On Fri, May 31, 2019 at 02:35:30PM +0100, Richard Purdie wrote:
> > On Fri, 2019-05-31 at 11:09 +0200, Quentin Schulz wrote:
> > > CORE_IMAGE_EXTRA_INSTALL += "plop"
> > > 
> > > BAD_RECOMMENDATIONS += "bluez5"
> > > 
> > > with plop.bb being:
> > > DESCRIPTION = "Plap"
> > > LICENSE = "CLOSED"
> > > 
> > > RDEPENDS_${PN} += "bluez5"
> > > 
> > > do_install() {
> > >         install -d ${D}${bindir}
> > >         echo "plip" > ${D}${bindir}/plep
> > > }
> > 
> > Do you mean RDEPENDS_${PN} += "bluez5" above or RRECOMMENDS?
> > 
> 
> I mean RDEPENDS_${PN}. If it is RRECOMMENDS, then my understanding is
> that it won't be packaged

That is not correct.

> , in that case BAD_RECOMMENDATIONS and
> RRECOMMENDS works as expected.
> 
> However, BAD_RECOMMENDATIONS and RDEPENDS_${PN} (we have RRECOMMENDS
> elsewhere but I think it does not really matter for the big picture
> as
> it gets "cancelled" by BAD_RECOMMENDATIONS anyway?) don't seem to
> work
> well together in that case.

RDEPENDS is a hard dependency. BAD_RECOMMENDATIONS only affects
RRECOMMENDS, not RDEPENDS.

Cheers,

Richard



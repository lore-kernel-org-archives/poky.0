Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B533BE00D8C; Wed,  9 Oct 2019 08:58:54 -0700 (PDT)
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
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A1B8E00BB5
	for <poky@yoctoproject.org>; Wed,  9 Oct 2019 08:58:53 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id o18so3631039wrv.13
	for <poky@yoctoproject.org>; Wed, 09 Oct 2019 08:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=MFsDYQdPDFgHrBDK5XTVFlolVc0Dw9F/n0C6xhs6w9U=;
	b=Im3RLfT3TG6naM/jklj5aFhR0T3EFb1xu80Hz+LrTqWSuU+ubIT/HyR3hM8W33XIX2
	KfHVMj3B4OpWmf9NqufOQQgsyVEvDiNwvvUztcRMEXpu6/kivBYbCZTHiVxPWJY4Fjyb
	JMi3u5QHBPLY11cr1VQw+/zapdXYMRSArzOQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=MFsDYQdPDFgHrBDK5XTVFlolVc0Dw9F/n0C6xhs6w9U=;
	b=NJy01dxrUOkHEYXzOOzL8ydA5tcOQeoOHBE0G1E3d44MwFYw2NMTYxj9+6x8eYYWsv
	PkARxW4FYGJkqp4EdSCg3dVNnlplUGHUQJ7AazctBgte0dRPB6QqCIMGCwHSAL4oko78
	DLonG6SFUcQoyBekfv+8OIfQdzEX/oK57f4s+sNVAWmmw9fLYGKWZ64k6qSJZ138EWK0
	H+MO7zltS7W/iC35vvi0Ol50LE7SIQ8+PvgM5AqKEgwFNo0p0ASSk8jFqqqZ4Jc2BChY
	LTw41LkRYTIsZNgbEBqK7aSRp68yEMWFohPRa537Opgz+KbOK7RHY4h+mZG3dg6TgDPk
	J8Jg==
X-Gm-Message-State: APjAAAVyG3HQihcaukGhE/F2RBGtAgu0VTCBjTdQQDS9qKqEJbDiUkZr
	gsh2fnsuX1urg61D9G6sWY9OZQ==
X-Google-Smtp-Source: APXvYqwXrBEr3l96gAlhONHhFiBQgiDTEKUgGwTSJpmXADbu2tyyY1lDbQyiF6UllYbjLAuceHd3Vw==
X-Received: by 2002:a5d:6349:: with SMTP id b9mr3647056wrw.387.1570636732270; 
	Wed, 09 Oct 2019 08:58:52 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id s1sm3867283wrg.80.2019.10.09.08.58.50
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 09 Oct 2019 08:58:51 -0700 (PDT)
Message-ID: <e2a14762da670bce8c3a9922caadcf9b29a9ad28.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ross Burton <ross.burton@intel.com>, Adrian Bunk <bunk@stusta.de>
Date: Wed, 09 Oct 2019 16:58:50 +0100
In-Reply-To: <984ca0e5-aa21-aed7-a208-1268760983a6@intel.com>
References: <20191009130328.28520-1-ross.burton@intel.com>
	<20191009133153.GA29168@localhost>
	<984ca0e5-aa21-aed7-a208-1268760983a6@intel.com>
User-Agent: Evolution 3.34.0-1 
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky: add Ubuntu 19.04 as a supported distribution
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
X-List-Received-Date: Wed, 09 Oct 2019 15:58:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-10-09 at 16:20 +0100, Ross Burton wrote:
> On 09/10/2019 14:31, Adrian Bunk wrote:
> > On Wed, Oct 09, 2019 at 02:03:28PM +0100, Ross Burton wrote:
> > > Signed-off-by: Ross Burton <ross.burton@intel.com>
> > > ---
> > >   meta-poky/conf/distro/poky.conf | 1 +
> > >   1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> > > poky/conf/distro/poky.conf
> > > index f999992c90a..e3df6be2ac5 100644
> > > --- a/meta-poky/conf/distro/poky.conf
> > > +++ b/meta-poky/conf/distro/poky.conf
> > > @@ -54,6 +54,7 @@ SANITY_TESTED_DISTROS ?= " \
> > >               poky-2.7 \n \
> > >               ubuntu-16.04 \n \
> > >               ubuntu-18.04 \n \
> > > +            ubuntu-19.04 \n \
> > > ...
> > 
> > I am not convinced that declaring (and testing?) support for
> > non-LTS Ubuntu releases is a good idea.
>  > Ubuntu 19.04 will be EOL in January, and 19.10 will be released in
> a 
> week.
> 
> Ah, I wasn't aware it was EOL so soon.  Maybe we should stick with
> LTS for the officially supported list after all.

The policy is to list what we've tested against which we could expect a
user to try the release with. Tumbleweed is excluded on the basis its a
rolling release so it doesn't actually mean anything version wise. It
was an experiment in the autobuilder which is having mixed results.

I'm not sure we want to start trying to second guess when EOL for
distros is and filter based on that...

Cheers,

Richard



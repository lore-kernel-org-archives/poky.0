Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0157FE00CEE; Wed,  2 Jan 2019 14:06:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59AFFE00CEC
	for <poky@yoctoproject.org>; Wed,  2 Jan 2019 14:06:43 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id v13so31889372wrw.5
	for <poky@yoctoproject.org>; Wed, 02 Jan 2019 14:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=tY8VR5nw+l5PyzXCzElIhFn8yBecr2Z4NABLr8aLyp4=;
	b=fPcVNDzmolIwsVP4SCaWtIaF/CWohDNBznvsE0mIGfZ7M7wtltILd/6bgwC843mEBY
	6Y6raOaPJD23DRSI/wsX6biJmzb/WVzhiI/XpltO9uCzpbhWl5fXtmVhjDEwMj3wYjtO
	ZdSG8fFfEFrtUSn/5CTVapFX4JhSFe70qWnQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=tY8VR5nw+l5PyzXCzElIhFn8yBecr2Z4NABLr8aLyp4=;
	b=iUf079Sq9rM4F531zHswvTopJ0/jrPUUWNNg9MITZ10ZZn2scVHnlIDvNisf1nQ4Oc
	QAAa4xTEg0vbp8I9TnTQYjKeucGAh6cr99e/OuGtG9dnoFfBk3x1nukBdEqRJzlysrk+
	qKIy3PVb/2+ED2wCj3HlHlBQYZrHcHcDCndOi9/GXrEiWGEWwxbCIO3biIOrkbuYztv2
	bgXSasOoyVhT9I+kXyfQ7TMrrfPDtKOja4kwkq2ZTaXHvirK9yNn+g+15EfQ5oh0QvP6
	kM7FWE0MZwquUz4qOr3Rw2LfhPCfhByqeABUXkCAJv6m1XIak+VHDXq7Q0mXd0G1kcBC
	4Etw==
X-Gm-Message-State: AJcUukc+Q3nQFxpz/CDmTB4Ui/xMO+KzO8dIJYQspYkdYJj8VBV2Wwc8
	FgfQfoWhCRRCuxpYw9NYyHMq8kxfjT988g==
X-Google-Smtp-Source: ALg8bN7AUeFur+LLEzKVPX56EMQ/S5dr6oU0avpVVHqBnNrib/KSKcyRGviTxgBIo/ws1kRSAeOWhA==
X-Received: by 2002:a5d:5443:: with SMTP id w3mr36934719wrv.4.1546466802316;
	Wed, 02 Jan 2019 14:06:42 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	a6sm36890135wmh.10.2019.01.02.14.06.41
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 02 Jan 2019 14:06:41 -0800 (PST)
Message-ID: <379f68373e68c56796034229c765388517e3b8e5.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Matthew Stanger <matthew_stanger@trimble.com>
Date: Wed, 02 Jan 2019 22:06:40 +0000
In-Reply-To: <CANr77M31z20u=4j+2Eo2_Y4eqYdCtekKjEJARwHvg0HpWm68=Q@mail.gmail.com>
References: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
	<19502b0e7af03d079fba940f817c355dd5d2c1de.camel@linuxfoundation.org>
	<CANr77M31z20u=4j+2Eo2_Y4eqYdCtekKjEJARwHvg0HpWm68=Q@mail.gmail.com>
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: glibc-initial fails to build in Thud with arm926ejs tune
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
X-List-Received-Date: Wed, 02 Jan 2019 22:06:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-01-02 at 14:26 -0700, Matthew Stanger wrote:
> > Can give follow on config.log's and such as required.
> 
> Yep, I'm using the default 8.2.0 default. 
> 
> > The mcpu verses mtune is open to debate, it depends what your
> > priority
> > is, feed compatibility across multiple processors or potential
> > micro
> > optimisation for the processor.
> 
> This machine.conf/meta layer just needs to support a single target -
> micro optimization is definitely desired since it's a potato ARM. I'm
> guessing I could just override the 'TUNE_CCARGS' in my machine.conf
> to '-mtune' then?

Yes. 

I am puzzled why the defaults aren't working though as I thought we
used something like that for qemuarm which we do test... :/

Cheers,

Richard



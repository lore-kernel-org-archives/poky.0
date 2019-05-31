Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74361E00D61; Fri, 31 May 2019 06:35:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81531E00D5F
	for <poky@yoctoproject.org>; Fri, 31 May 2019 06:35:33 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id n4so1312930wrw.13
	for <poky@yoctoproject.org>; Fri, 31 May 2019 06:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=aqz2p3rXCHaz3h6nynOgNXdujN26o6i4Ct2s/o2P3m4=;
	b=cXgnOw//z5ZArvIPVxWAE41TRhb8/4wghiGBcTGsFnp5bfzkuapZ2fMCiMeBkX5Vjz
	kxdMqnjUubLjf+WGkjZOEajTiZmPpapFqjORGrhCIhFvtX5P60snMcv3nFjPmRH2E492
	NbdnPfK/AMIsVBzZXW/5cesFaFPR+XmXFnppQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=aqz2p3rXCHaz3h6nynOgNXdujN26o6i4Ct2s/o2P3m4=;
	b=k7+++L4OTO0+0bU7gqbaOs0Urn0JR6vU2HRPxK9RuJsFL5rvawCZJ+T4P5KHISVjXC
	XNSopMNB3nZF4+Vm3dZ8CweLy2/m5otyuOmbcPV5owZczbYlAv+tvFbEhaeqDKcdD007
	FR8R9rlZu5Okmq5utjH0QDO4G5nwpuTDU3MOP/BDa8AnVtg17W2Ej2GoL+y/tAoJK3O6
	ANDfXTZ3yPYaaIOBYdmcRY/K1ngA4ZcpddzZB4hSwrGr8u1vEEsuc3nfL16uOBHyCNy3
	SXUJvfzyGIZdQRQdqJfHOL+Bi3GQcktoyAgjcqPe4NP/DOiy+rQ8ZqM4wfvQzMH6Jj8R
	KRig==
X-Gm-Message-State: APjAAAV4BCGKAFODxtUm6D1rct1gZ1Ocxhs16j2HkM98r8jf79w23uxB
	9MnW8Q+j2UrCZYiwQS+3dedZyQ==
X-Google-Smtp-Source: APXvYqx3/xgFGw8IS00fYKlz/X/yREqyXvt4Nz6GUeIMha6mR+5uosSqHv8+Xdbyv6HO/r1RZXU0/A==
X-Received: by 2002:a5d:4803:: with SMTP id l3mr6606032wrq.148.1559309732549; 
	Fri, 31 May 2019 06:35:32 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id h8sm13127858wmf.5.2019.05.31.06.35.31
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 31 May 2019 06:35:32 -0700 (PDT)
Message-ID: <f5917aa1aeba82bf983822060561e231ab8378fe.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>, poky@yoctoproject.org
Date: Fri, 31 May 2019 14:35:30 +0100
In-Reply-To: <20190531090953.shdqfcmj27ei4evb@qschulz>
References: <20190531090953.shdqfcmj27ei4evb@qschulz>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 31 May 2019 13:35:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-05-31 at 11:09 +0200, Quentin Schulz wrote:
> CORE_IMAGE_EXTRA_INSTALL += "plop"
> 
> BAD_RECOMMENDATIONS += "bluez5"
> 
> with plop.bb being:
> DESCRIPTION = "Plap"
> LICENSE = "CLOSED"
> 
> RDEPENDS_${PN} += "bluez5"
> 
> do_install() {
>         install -d ${D}${bindir}
>         echo "plip" > ${D}${bindir}/plep
> }

Do you mean RDEPENDS_${PN} += "bluez5" above or RRECOMMENDS?

Cheers,

Richard



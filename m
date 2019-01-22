Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E085BE00CDE; Tue, 22 Jan 2019 12:50:28 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E88FE00CC9
	for <poky@yoctoproject.org>; Tue, 22 Jan 2019 12:50:28 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id f7so30073wrp.1
	for <poky@yoctoproject.org>; Tue, 22 Jan 2019 12:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=pOIpEkolpY/wC9sHH0c0e5HtfGVfWcC8NV3CNgDggyc=;
	b=SBaVzaLJ8r45tEJ78KoaFQh1Nwhr9ttGJzJgx+YJEa3Duxt8KrsRJoxnSQN2C75GLf
	U9AYgHEd1Ce324AX6enJnVlkoO9etMhVTBlbPbblr0kHzkxSGYTOqznwrlGfZ2NdDGs4
	NQEPfLh5p7YmfletsuZgNP0SWtpAYsaqTJRJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=pOIpEkolpY/wC9sHH0c0e5HtfGVfWcC8NV3CNgDggyc=;
	b=ffFCF3DT9woFoj4jqao2kSr4O2k0TzJh/vW8izy9JWt5eecYjmVpD4zpTIlY5wZ5j9
	TlvQpqYczAmThgoCcfhFz3AlfkEg6OiohIuHZCZL22ppJ8MU/C1ETmv6mw/fa5umcU97
	kokG9CS30sTfzm52HdZLELtfdrMw/Y59yyYSLljYHJdDKAuvElED10mRLh3y8wBzwZVm
	HVlXeijVKmN6dUrJihgyqkILM0MG24tb9ThZcAYmZptSoMpb96a3vLW9FAn3N2m7VXX5
	zuh5LbGctVe3/LTMLB88Qup4X/zwbBunCVyBFIlwpuTP4ImSeEsi1bfXJiXshS3mg+ap
	Ls4w==
X-Gm-Message-State: AJcUukdDfuAU39poeaNNYNMhoGt+Qby7kwbORNjukr16pq9XzkEpn3dY
	ZW3LhjwHFfLGxRUL6xLsh2TtVg==
X-Google-Smtp-Source: ALg8bN4nbJ4bwj3YQI5SQAwlJPNgb66DPkp2A+JKK3alVCS33oADUZeeYOIu/2m6fKGcQlBl/syA8Q==
X-Received: by 2002:adf:e5d0:: with SMTP id a16mr34266748wrn.89.1548190227289; 
	Tue, 22 Jan 2019 12:50:27 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	c10sm94433109wrw.49.2019.01.22.12.50.26
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 22 Jan 2019 12:50:26 -0800 (PST)
Message-ID: <e11a82db236e8978c8bd0a282d1d0db2acf3120e.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Rifenbark <srifenbark@gmail.com>, Peter Kjellerstedt
	<peter.kjellerstedt@axis.com>
Date: Tue, 22 Jan 2019 20:50:25 +0000
In-Reply-To: <CAFNP8OumWA1-6hDhLcxML=tO9LK13ETqGekZ_uqTKd1dAoKzcQ@mail.gmail.com>
References: <20190118154920.15457-1-pkj@axis.com>
	<CABcZANm6JqmzyiV3cJ-t6x1KAqzwCXMbo_h1ATDNsS7vW6sYmA@mail.gmail.com>
	<a5f956a72a11498a9370ce99491bf940@XBOX04.axis.com>
	<CAFNP8OumWA1-6hDhLcxML=tO9LK13ETqGekZ_uqTKd1dAoKzcQ@mail.gmail.com>
User-Agent: Evolution 3.30.4-1 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: Define SDK_VERSION so DISTRO_VERSION overrides are supported
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
X-List-Received-Date: Tue, 22 Jan 2019 20:50:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-01-22 at 10:15 -0800, Scott Rifenbark wrote:
> oops... are we cool on the docs?
> 
> Scott
> 
> On Tue, Jan 22, 2019 at 5:42 AM Peter Kjellerstedt <
> peter.kjellerstedt@axis.com> wrote:
> > Not sure if it is needed as such, but in the lights of the recent
> > problem with base-files, it seemed better to change it here as
> > well. Also, since Scott and RP were a bit trigger happy, the manual
> > has already been updated to state that the below is how SDK_VERSION
> > is defined in poky.conf. ;)

I tweaked the commit message and merged it so yes, we're good now.

Cheers,

Richard




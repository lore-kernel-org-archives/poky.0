Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90B69E00D4C; Thu, 30 May 2019 04:44:29 -0700 (PDT)
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
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F577E00D45
	for <poky@yoctoproject.org>; Thu, 30 May 2019 04:44:28 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id b18so3967000wrq.12
	for <poky@yoctoproject.org>; Thu, 30 May 2019 04:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=12KazM48HAd0H8a6KIXSVIekSPWaoqueUni4qnEQOa0=;
	b=MYVMyTTIkqKFaydLuHdMF0PfcrAHvUmMtmelc/s9ljB/2Uj7uZt4gFQJ8j9AJNL5A8
	uYEblPnAkpZkovlRmCUD+ECyqlyJdCR/p79yp9Rx6U75zOyJ2m+17FL7btUfy/mPuKl5
	RyJAnLhGPboNda/xlk1X7e9okoQomM5pxXf6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=12KazM48HAd0H8a6KIXSVIekSPWaoqueUni4qnEQOa0=;
	b=dDhTGyk9ku8rGc4aPGEUXpuhOKUPv6ailNAwxgEtuhwyLUV0vwCRWdNYi90OnRXpxS
	HudqcC0NFU/E9IePev7pd1rU7xeO1Dpl7oh7wvKJIIV1R3UYQ626gUxfBNcRpazF1plF
	AzesjgFzuOGv6MYW0lr+xkgWxba9wMMH0LDFoPcbI63PoeabTYyGI71PbYoTP6KetsWN
	EgFy4CGYfsQVDySiExHdHIzKWvh0PFsFYpz+btgwopB8lLp3U1PaNzNaNbWiM+2H4ky8
	bccYbUHps32/Jg3ronH4J6qSVZ4dh8xW8fWuhZw+F+iBkPh5acLKvMSPoy6w4o3n0ohd
	yKzg==
X-Gm-Message-State: APjAAAW/f9pKP7yXcH2lXcDl+DA92QfKsHuUOQGmlEcQep1ifn5ADhxi
	OiR7KEfJNO/aaEU9d1EK+rOnGg==
X-Google-Smtp-Source: APXvYqy9xPcpPSRGdlRL5zBkOrJETSuJfhNiU68hepyyAIxL7QaN2SOXOuxdEr4YBVsRzD6s4uwKgg==
X-Received: by 2002:a5d:4310:: with SMTP id h16mr2415883wrq.331.1559216667544; 
	Thu, 30 May 2019 04:44:27 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id r9sm2681931wrq.0.2019.05.30.04.44.26
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 30 May 2019 04:44:26 -0700 (PDT)
Message-ID: <39d1e5c522b70d7c6dad4cb37641c0c1ae7cbd41.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: kai.kang@windriver.com
Date: Thu, 30 May 2019 12:44:25 +0100
In-Reply-To: <20190530092232.169453-2-kai.kang@windriver.com>
References: <20190530092232.169453-1-kai.kang@windriver.com>
	<20190530092232.169453-2-kai.kang@windriver.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [meta-poky][PATCH v4 1/3] poky.conf: make systemd as default init manager
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
X-List-Received-Date: Thu, 30 May 2019 11:44:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-05-30 at 05:22 -0400, kai.kang@windriver.com wrote:
> From: Kai Kang <kai.kang@windriver.com>
> 
> Move configurations from local.conf.sample.extended to poky.conf to
> make
> systemd as default init manager for poky. Introduce a new variable
> 'POKY_INIT_MANAGER' whose value should be either 'systemd' or
> 'sysvinit'
> to configure the init manager setting.
> 
> For users who still want to use sysvinit, set in local.conf or any
> other
> configure file with:
> 
>   POKY_INIT_MANAGER = "sysvinit"
> 
> [YOCTO #13031]
> 
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  meta-poky/conf/distro/poky.conf           | 10 ++++++++++
>  meta-poky/conf/local.conf.sample.extended |  9 ---------
>  2 files changed, 10 insertions(+), 9 deletions(-)

Thanks for working on this patchset, I think its nearly there. I'm
wondering if we should set 

POKY_INIT_MANAGER_libc-musl = "sysvinit"

since I am worried about what I read about musl and systemd from a
security perspective.

I'm also wondering what we need to do with the autobuilder init system
tests, I think those may need rewriting to add some sysvinit tests.

Does POKY_INIT_MANAGER = "sysvinit systemd" work for the mode where we
allow old sysvinit scripts for compatibility?

Cheers,

Richard



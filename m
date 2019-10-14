Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAF68E00D7E; Mon, 14 Oct 2019 01:30:07 -0700 (PDT)
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
	*      [209.85.128.67 listed in list.dnswl.org]
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D795E00D00
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 01:30:06 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id m18so15808919wmc.1
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 01:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=E7e1yNVyBCXRNO+xkEV8NEE0D+NeVqUOuTvsQC7Mu1s=;
	b=LNDPu774QY4AiisRQ3NMUefz6yO/TWmI7YwMPtFPxGy/4JL0u14lDhcssqoZTFjKv9
	L7iqKRfDjk5QmbGfILqRVTiN0Q1vFLE+X1iGhcY0yhZqubwiM7h75V18Mw6LkbNXSMbF
	UbZfJK6LPVeOiIhST7BJleBeiAwq0bmslDb50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=E7e1yNVyBCXRNO+xkEV8NEE0D+NeVqUOuTvsQC7Mu1s=;
	b=KnZ5eP+WmCzTCsiEvJ0DnSgO+kpsN+roN6i0K+pnfajciMkYEVZQHvXVFgr2o1yxdN
	FqF2smOK0VXTSoZEnBvuNTkwpmaLMa2wEaKmhf6qJGw/Cxf68FssI4hnYjOmbrAm6Hnw
	9HVqxeozybiND9lX6c/xTSaAVPGig4ux6lQXeN6GE1asSF7xpIMJ32uw5xwRrOnPd/8n
	rj81zAHKTG43Bca0MqNWPGLzEHfvog6JQTvXnZ7OkZSaDjVbkRjAPU2/YOiwufesaXuG
	KcI0KuulmxmyP3LEbM+2U6zoMPyCTKfPjHkKIhYig6i349xv2oqXmeEdV5HiHU1ywsKx
	1tNg==
X-Gm-Message-State: APjAAAWGg8q77JcDI4VkKfNrr0/pzR5tYVFD+j1sfIaap4IHlMjEW5/r
	qrfkYatlbWoAZD6xXLuwvrCZYQ==
X-Google-Smtp-Source: APXvYqwZoWVWkKrQ6w3jH+CbtDA6IzjR/fwEpmhDvJoklxZcCmHteIYX4IUH7NTgv/9ygkN2ij/PhQ==
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr13803073wmh.40.1571041806002; 
	Mon, 14 Oct 2019 01:30:06 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	l11sm19016052wmh.34.2019.10.14.01.30.04
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 14 Oct 2019 01:30:05 -0700 (PDT)
Message-ID: <fb55cc695965290bf6767a8ab0aeb0a2aee396f0.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: AshishKumar Mishra <ashish.emailaddress@gmail.com>, poky@yoctoproject.org
Date: Mon, 14 Oct 2019 09:30:03 +0100
In-Reply-To: <CAOe0dAVhYOMbonHS_TMPAh3WtSXGvNaRjECU1faMm8N4gFbmNw@mail.gmail.com>
References: <CAOe0dAW_-NRUPdVk-1Fb4v3PQpA3h0um-CwvjD2pkskQfd4G+w@mail.gmail.com>
	<CAOe0dAUCXc0zF---SitaCZkVr3i=mc6YZUWuT8tL0UdYopKy-A@mail.gmail.com>
	<CAOe0dAWMfbuS9=E2Vx5zrd+KuAs1-Wm7n3EWykC0ETjeFyT9dQ@mail.gmail.com>
	<CAOe0dAVhYOMbonHS_TMPAh3WtSXGvNaRjECU1faMm8N4gFbmNw@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: Re: Poky build failure with "Could not invoke dnf" error message.
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
X-List-Received-Date: Mon, 14 Oct 2019 08:30:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-10-14 at 13:40 +0530, AshishKumar Mishra wrote:
> Hi All , 
> 
> I am trying to build an image with my custom layer and getting error
> of 
> "ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf.". 
> 
> ( i have added an basic ethernet up/down systemd service in my layer)
> The details of service file & log are attached in  (poky-error.txt)

The error says it can't find a package named eth0. Was such a package
generated? It should be somewhere like tmp/deploy/rpm/XXX/eth0_*.rpm

Cheers,

Richard



Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7080E00CAD; Fri,  8 Feb 2019 15:31:05 -0800 (PST)
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
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AD45E00C8F
	for <poky@yoctoproject.org>; Fri,  8 Feb 2019 15:31:04 -0800 (PST)
Received: by mail-wm1-f67.google.com with SMTP id r17so6110626wmh.5
	for <poky@yoctoproject.org>; Fri, 08 Feb 2019 15:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=vDLmS7RzwZ3oj3XbMPxxg4b0IqA+yDtIyEdvmetiBPs=;
	b=LJiVmY+iUmdaqLC0msdRTcon3Kh1agr+cmJpQzPfSU5KPnD+/xCszKSAajdzuHxmMJ
	dV2ASL04K6VM1+a4lRgwjk4h8bxhbeocqvPhZbUybZ0G+oINgLmUimnffquWr/+LJZse
	DnqyWQEGKeA46wwQHrMWhT584i0MV3AreG5Ag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=vDLmS7RzwZ3oj3XbMPxxg4b0IqA+yDtIyEdvmetiBPs=;
	b=UYSzJFJJhdAMyTq94o4PWSC+WnteQQoy8apyY3mKSgP3OWh6FrHOVW4bGG2g01zpTo
	lAj2bae77mEv8j6yF5MQzVm+C6X9yqMOW+ZNWWIERKZdq9Pquli7XEPQCOLNwwW+yFP5
	oGRx4B0YRBjSeJRTV0WQvhmhFekIkM85UfNK3A9TwTCQi/ORJV72z3XvlJ52RkZ3rLHW
	joBw/C5oUTsyB/25+CT7urmvmezYQj9eTtJRhIkf6JO5USBFaJSYvXpHOafqGjO1kkr+
	Il2cnpp32YpEfcGtSeVO0YIrZyi1zc2pvFU5FyA6dRpY/NdPeyp34E6r0+LCJa32VEuc
	Y8zg==
X-Gm-Message-State: AHQUAuYLJKJUBAI8LOVzyVMQwYF8L6VVEd4PFchZ07h0hqvlq5tHviBn
	LgPw/JhjFw1en1RFWG5YGKM6Qg==
X-Google-Smtp-Source: AHgI3IZM5bbCRLzzgt6bFbMrCL4ShVuD32xOK80DaKyXjlA1zpnJnfmXXca5M9Hw1iB0+6hlTJBzjg==
X-Received: by 2002:a5d:5289:: with SMTP id c9mr16766833wrv.11.1549668663689; 
	Fri, 08 Feb 2019 15:31:03 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	z18sm2283447wml.36.2019.02.08.15.31.02
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 08 Feb 2019 15:31:02 -0800 (PST)
Message-ID: <f2b548dcc420172e618b832bcfe364344de10c2c.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: William Bourque <wbourque@gmail.com>, poky@yoctoproject.org
Date: Fri, 08 Feb 2019 23:31:01 +0000
In-Reply-To: <CANBSh+ND=jB8ho1Y1KdE2hPC2NjE=DBUumefoAmzrGn3LU-QZg@mail.gmail.com>
References: <CANBSh+ND=jB8ho1Y1KdE2hPC2NjE=DBUumefoAmzrGn3LU-QZg@mail.gmail.com>
User-Agent: Evolution 3.30.4-1 
Mime-Version: 1.0
Subject: Re: [PATCH] wic: Various improvement in engine PATH
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
X-List-Received-Date: Fri, 08 Feb 2019 23:31:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-02-08 at 16:35 -0500, William Bourque wrote:
> - Load PATH from environment variable PATH first
> before falling back to hardcoded list.
> This is required for users that would need to load
> different e2fsprogs binaries if their system's ones
> are not recent enought
> 
> - Use path to get system "echo" (typically /bin/echo)
> instead of one internal to the shell.
> System echo is safer to use since a lot of
> distribution use minimal (ex: /bin/dash) that does not
> support "-e" argument to echo.
> 
> Signed-off-by: William Bourque <wbourque@gmail.com>
> ---
>  scripts/lib/wic/engine.py | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)

FWIW there is a slightly simpler version of a patch for this problem
being discussed on the OE-Core mailing list using printf as a
replacement for echo...

OE-Core patches need to go to the openembedded-core list.

Cheers,

Richard



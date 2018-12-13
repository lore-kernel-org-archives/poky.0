Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BB65E00CB0; Thu, 13 Dec 2018 07:15:30 -0800 (PST)
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
	*      [209.85.221.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82F03E00C4E
	for <poky@yoctoproject.org>; Thu, 13 Dec 2018 07:15:29 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id j2so2411144wrw.1
	for <poky@yoctoproject.org>; Thu, 13 Dec 2018 07:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=FBmPpjpVGjcHHBL/nTAf4f6X7OHDaV4oDm4Ul6MNpLQ=;
	b=WF3NVuP5oQy1MVCCjHsqdmBSjBxmzsY7OzS9nKuWgNz73PJPgJl6zdouuMRiMUVR//
	pn63YjxhhcsVjqM9MgMiEFlXaQa1i6wSpZHPojwxhR6Asi7vyWhqnN5ff5jHx1Dfzx3D
	B174/A/uy6/cGyBDil1MaclORyqBuelSJ0PWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=FBmPpjpVGjcHHBL/nTAf4f6X7OHDaV4oDm4Ul6MNpLQ=;
	b=BAvoMRe4/Ti22UtEHl+PwziV6Gxygd2w0rD/u+uj7664iX405xthBJl22IowDmoxCY
	+he7EYWelojVDsj7NKQLOwbliUgYk2T8d9hlsoHh2UZAZ1McLbV8JbkoqFzPEDsZjFw8
	cgp8cHXGRYFS2B//X6H76Dyxlv4UnkhLvA8EqHw2ipP+XPxODhfs1CI4GG24jjE68CPG
	18ObpqsZHR532+aqYgfo01iCRqFxJNyFfrhjObx0+cOhjNYPfO3NZxeNJziJb28pBVxz
	XFXmRtodDofpZwH0YITJcZ6Pc8ojhYVQHOK7giWUKrDoaXe/nBh2xVkeX1W2StPd+93K
	OR3g==
X-Gm-Message-State: AA+aEWboU33JKpLYgzbiSBJ9IhXjMYEExM4bqVrpJA5pGbejsXw/8QC8
	f4QR7mq/cX5pq8cAzOcx32MPMg==
X-Google-Smtp-Source: AFSGD/WOuHwhLG54Olgy8GuNJ1VmWaYgwSweQbo8+koKNt8hdPg8jp325uSilw4rRu3bdZBgtQc+7g==
X-Received: by 2002:a05:6000:110f:: with SMTP id
	z15mr20628918wrw.136.1544714128472; 
	Thu, 13 Dec 2018 07:15:28 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	g129sm2423762wmf.39.2018.12.13.07.15.27
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 13 Dec 2018 07:15:27 -0800 (PST)
Message-ID: <14b88b6a1c4bdf3f004028e13917a4db57c02633.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Burton, Ross" <ross.burton@intel.com>, matti kaasinen
	<matti.kaasinen@gmail.com>
Date: Thu, 13 Dec 2018 15:15:26 +0000
In-Reply-To: <CAJTo0Lb8R6vuVuJSMys2SaJG6G2nn7x-QqexT47KWHLofoKKQA@mail.gmail.com>
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
	<CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
	<CADnUhn2siMqwsf1GfMdOEEK9vpjmXX-uxWSHtr36xf9Vjy8vgg@mail.gmail.com>
	<CADnUhn3_MjwJvcEDT8ikfGZ2eBhnBKOOzXsJ+D4ncntWT18vUQ@mail.gmail.com>
	<CADnUhn1SDTZPr4_StAqUBUehF206S-OA+ZHmyBbM_UAWKWp3fA@mail.gmail.com>
	<CADnUhn3Er1dR8rr4bDDHniRmFYnCr9h+33a64Hn8C+xLhmApWQ@mail.gmail.com>
	<CADnUhn0-GgH9=4ow4SV25b7etaKP19Eb3jH6HxL2-xm80yrkbw@mail.gmail.com>
	<CAJTo0Lb8R6vuVuJSMys2SaJG6G2nn7x-QqexT47KWHLofoKKQA@mail.gmail.com>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
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
X-List-Received-Date: Thu, 13 Dec 2018 15:15:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2018-12-13 at 14:23 +0000, Burton, Ross wrote:
> On Thu, 13 Dec 2018 at 14:14, matti kaasinen <
> matti.kaasinen@gmail.com> wrote:
> > This cleared out. However, I faced with a new problems that seems
> > also hitting to same bbclass. It seems that convention has changed
> > since Yocto/krogoth (now Rocko) how autotools handles .debug
> > directory. Then I just had statements:
> > FILES_pam-oath-dbg = "${libdir}/security/.debug"
> > FILES_pam-oath = "${libdir}/security"
> > Then I got both pam-oath and pam-oath-dbg. However, now I cant find
> > a way either to get QA error about .debug directory (without pam-
> > oath-dbg line) or not getting pam-oath (with pam-oath-dbg line).
> > Is there any reference handling this issue? I did not find any. Or
> > should I write a new question with proper title?
> 
> The best practise is to ship only one -dbg package per recipe
> (${PN}-dbg is in the default PACKAGES), and you don't nee to list any
> FILES for it because it will automatically sweep up all the .debug/
> directories.

Incidentally, this happened in the 2.1 (krogoth) release:

https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#migration-2.1-miscellaneous-changes

Cheers,

Richard





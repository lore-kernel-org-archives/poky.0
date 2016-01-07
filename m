Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48341E00CBF; Thu,  7 Jan 2016 00:56:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F47FE00C9E
	for <poky@yoctoproject.org>; Thu,  7 Jan 2016 00:56:41 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id f206so88348145wmf.0
	for <poky@yoctoproject.org>; Thu, 07 Jan 2016 00:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=rDy9QI1MzYgMSmM/1Ojc10H8afKhfnjKWxoBropBWGs=;
	b=KYua4sr1RcJUXzYJc7BWDoEcZljHJK8sqBFG8oi+vLqLPdIkL2dV/yBpC87zAthj+e
	z87jJCUXeO4BzWaddj9sCJrW9EVeQVp7A0euZ6cNEWadPdARckxw6j9bdeQ6F5frWinA
	dqBVkgR+Z4UuudoqhjDhDWcSCTTIyEBfH5IVdoAk+qN2aDaFO8DdCOY4LQhCNpYIQwsy
	w0d0kB7Qor/MHwfU3KwGHIMaGyzDbz3+ZEIUASXEHysXC8l6MGjpee5S2X7QVqARH+qD
	0FPkFGmSCuSDs2CLKPg+yEzJ4UCoEDv0hsNCu0kYNUQPzgfdSOLUd9z4jIWsxApMW2Mu
	DtRQ==
MIME-Version: 1.0
X-Received: by 10.194.87.39 with SMTP id u7mr112590721wjz.11.1452157000703;
	Thu, 07 Jan 2016 00:56:40 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Thu, 7 Jan 2016 00:56:40 -0800 (PST)
In-Reply-To: <CAA2DH4uwne3WO4h7JpGpr=_M=A_yZeTQuZqdq0Bo0w2w7gZUsw@mail.gmail.com>
References: <CAA2DH4uwne3WO4h7JpGpr=_M=A_yZeTQuZqdq0Bo0w2w7gZUsw@mail.gmail.com>
Date: Thu, 7 Jan 2016 14:26:40 +0530
Message-ID: <CAA2DH4s1sF22ihWNxF1KP-JgY84adt78wWO0xNrmPpxuO1A8UQ@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: Custom recipe not able to create init script symlinks
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
X-List-Received-Date: Thu, 07 Jan 2016 08:56:42 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 7, 2016 at 12:45 PM, Prasant J <pj0585@gmail.com> wrote:
> Hi,
>
> I'm trying to create a system service recipe that will install
> SysVInit initscripts.
>
> I have 2 recipes:
>
> Recipe 1: compiles a source code and also installs SysVInit (Works as expected)
> Recipe 2: only installs a initscript
>
>
> Recipe 2 is only installing as a postinst task (I see an entry in
> /etc/rpm-postinst/) but SysVinit symlinks are not created in
> /etc/rc?.d/ directories.
>
> Any idea on how I can force it to create symlinks during image creation?
>
>
> There is no difference in Recipe 1 & Recipe 2 (update-rc.d wise) but
> still one installs during image creation and the other one is deferred
> post installation. I do not understand this behavior.
>
>
> Any inputs will be of help!
>

Found it. Typo in INITSCRIPT_PARAMS
Recipe works now.

Back to school for me!


Regards,, PJ


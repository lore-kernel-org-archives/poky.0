Return-Path: <jpetri@izotope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4AE1E00C3C; Mon, 21 Mar 2016 09:42:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73F58E00951
	for <poky@yoctoproject.org>; Mon, 21 Mar 2016 09:42:36 -0700 (PDT)
Received: by mail-ob0-f174.google.com with SMTP id ts10so179351583obc.1
	for <poky@yoctoproject.org>; Mon, 21 Mar 2016 09:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=izotope-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=gudLoN52C9b/+g7SG2wtIu+Xrvuohc1DybXhkZZdzS4=;
	b=02GxUdVOEU6vwGXfo0skACMQ2PcrE1Q4aO+HTtSyxp7qwgt0z55YuGfCZUzoe6CZgx
	cL4nszZ0om7Z+AlRcRlbPrk6CHAxoAe5/KByYHFKt/j+PHt3czdfgf28AObVi81bD+r+
	qwo6krTafgtdqKTDy5+4SszgpLsqbbjOVKnOAYSjAJoxtWNvlp6vm9+ft0vhiLOJ2Rdu
	DviUMvj6wjQWQc4nPws1ppYXnD+O5xeQPIPhUK4e7cIX6fSK1JsWl5tQ9yQ+WeNugMTT
	M1mJYHwZ3bFYUHJ9JbpGG1Dx+BgC/REmURb7BpvFE6Ey/LsGmSV8Kke+n6iPdZqAbFjS
	mC/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=gudLoN52C9b/+g7SG2wtIu+Xrvuohc1DybXhkZZdzS4=;
	b=myvpR25yFZJBrDMpoKTbGILo8j5piYpZOtvSR9pqiUsFnr+Zxb/4rYDEfZfz2Trmdb
	CxPA5F2bTh9zpPj2nyyCk4j8KY9m0BLM7BGN8oe0TkibAu9dCHhRuRZ/kO6sArACaeDe
	ghS5JGByT3fOubqEHbFnBxDRRX9xYoAIT3cvSZHXhqvvp3N+QVHkrnPCje7W1jMnUsXo
	WaifkV2pZfRjkwcEUkDQ1INmbc3ZVHhx4ctDUOKXLmrzGRO0yVytedi0UeYWRtwMr8cR
	7AIUhC7FjN9EOS1VtHDySeptHknhyL9YjB0bayJLH+BUkWLe7gexDVnqVN75DKWyMlIE
	RlLA==
X-Gm-Message-State: AD7BkJKObtsecnOEUxmzNW1vOfA82T+R4EoN+FfDShWhzpxrkGgb6pAjDruenFiUvEbssxl1oLNht/bkOzXibdUJ
MIME-Version: 1.0
X-Received: by 10.182.230.136 with SMTP id sy8mr17449402obc.76.1458578556064; 
	Mon, 21 Mar 2016 09:42:36 -0700 (PDT)
Received: by 10.157.54.206 with HTTP; Mon, 21 Mar 2016 09:42:36 -0700 (PDT)
Date: Mon, 21 Mar 2016 12:42:36 -0400
Message-ID: <CAJOrw7wBdySvGnuNdu7=wekVEp6n1=1RYGem3UVJrapMXfHCsQ@mail.gmail.com>
From: Jonah Petri <jpetri@izotope.com>
To: poky@yoctoproject.org
Subject: gdb readline problems (1.8 and 2.0.1)
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
X-List-Received-Date: Mon, 21 Mar 2016 16:42:40 -0000
Content-Type: text/plain; charset=UTF-8

Hello!
Does anyone know why some gdbs (in this case 7.8.1 and 7.9.1, as built
into a jethro or fido sdk) might not have working tab completion?

If I type "break wr" and then press <tab>, it does nothing.  However
gdb does know about the symbols!  To wit, if I type:
(gdb) complete b wr<return>
b write
b write@got.plt
b write@plt
b writer.h

So, the completions are there, but something is not hooked up
properly... Strangely, it seems that the tab key is hooked up to
something, as when I press <tab> from an empty gdb prompt, I get lots
of good completions, like "actions", "add-auto-load-safe-path", etc.
However, completion on symbols, like "write" above, seems to not work.

I have one possible solution for this, which is a bbappend file like so:
EXTRA_OECONF_append = " --without-system-readline"
...but I'm not sure why I would be the only one to notice this problem!

FWIW I'm building Jethro on top of Ubuntu 15.10.

Do others experience completion issues with GDB?  Or maybe everyone
else is using a GUI layer on top?  I never realized how much I depend
on tab completion for productivity while debugging, so any help would
be much appreciated!

Thanks!


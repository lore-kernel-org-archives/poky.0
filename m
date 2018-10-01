Return-Path: <stangerm2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DED3FE009B8; Mon,  1 Oct 2018 07:54:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stangerm2[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.179 listed in list.dnswl.org]
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92762E0090C
	for <poky@yoctoproject.org>; Mon,  1 Oct 2018 07:54:33 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id a203-v6so11454259oib.0
	for <poky@yoctoproject.org>; Mon, 01 Oct 2018 07:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=brdfyo8cdWf2LLhpl1f5r+B42C3BbelQoFDNrCeBouA=;
	b=njxbHuOgu7g/9v78/9noPCZf8sbKb82s+pgoixo8AIGtT35qwV8be9cujRH/QvOr6H
	/6KbKo4xQT7x/Ytjpw6W4vx3946f2TJOa61ErOv9W772RbPfbnBsETxXMrPGeIGiWt+L
	VfHvXQ7/myMoxmu+zj4V9tt//AYrq0YIuVtPoC1pDUhLaMVUJcpGAII9VWq2l7ex+Ppi
	lQey5xcw6id2M9sjCuL6UDhc/sCAwk9qAzL0O35YwITMG5qEFrrY1suda/Y05bWbRWYk
	uYd1con4LgXs+3cn//kp6cip4AfPDXUth5vIgtEWkvpKvzUmWDNZSjsqasR2O6zJoQC4
	vv5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=brdfyo8cdWf2LLhpl1f5r+B42C3BbelQoFDNrCeBouA=;
	b=BvBtlpgD8vVgLl+TQ8zg6b1AaUEg3rT4zi2WW5F/q7GNhgKkpwpqxf+sMyHLE7WOue
	4kZSanGGbJlqt8qPyEVFyiuh7LNZdrBxdaJyiySN2dTgF9Xdac0/V35MEfHfvg87ZRlY
	bFDksVuor0ZYzOD9WbF1P0U51HqGsnEvP50gf7slF6eIGXQtX+QS5AKS6Bo+jx8KIQJq
	q0HIltBQ2ohq/yK92U/731S3jqm3EZWNu646F/OKQmAKzyVyDr1hYkIQ7VFyJEMwx1XV
	GvPjRuGvXNvQuZLQTwiQ0m2+ZcDu5f7spTUgNQtKD3yKFXTn6V6mGCCcq4b9jaU7ynlH
	Mqgw==
X-Gm-Message-State: ABuFfojTgcBDZnDdCVdH3BE2JSVkOa1hOqmljEGHTNxUBIilM86i7buT
	3ik4GIXGSefo3c6V+t3fJXo1q+/2YrlbNCSGBA==
X-Google-Smtp-Source: ACcGV6289kyJhzjAW1LWm3cNTpprBgilY5pBnoOn/8LBdkkhMAhFD5Rsfg20K3fbvnp4QM60eywSL3++RjH5rDU2vys=
X-Received: by 2002:aca:895:: with SMTP id
	143-v6mr3520294oii.309.1538405672878; 
	Mon, 01 Oct 2018 07:54:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
	<CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
From: matthew stanger <stangerm2@gmail.com>
Date: Mon, 1 Oct 2018 08:53:57 -0600
Message-ID: <CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
To: ross.burton@intel.com
Cc: poky@yoctoproject.org
Subject: Re: Systemd on Sumo without python3(runtime)
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
X-List-Received-Date: Mon, 01 Oct 2018 14:54:35 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

Thanks for the reply. It seems running 'bitbake -g systemd' yields:
"systemd" -> "opkg-utils"
"opkg-utils" -> "python3"

I actually used a previous ML post about this from you to address that
aspect (https://lists.yoctoproject.org/pipermail/poky/2016-January/010342.html).
However I still don't understand why opkg-utils are listed as
dependencies for systemd. I do have opkg as part of my image via
'IMAGE_FEATURES+=package-managment' but I thought they should be
unrelated in this context?
On Mon, Oct 1, 2018 at 4:59 AM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Sun, 30 Sep 2018 at 20:02, matthew stanger <stangerm2@gmail.com> wrote:
> > I'm having trouble removing python3 from being installed as a runtime
> > package using the Sumo branch. Per the systemd(v237) build
> > spec's(https://github.com/systemd/systemd/blob/v237/README) line 167
> > there isn't runtime requirements for python3, only build time.
> >
> > It looks to me when running a .dot on the systemd dependencies that
> > python3 is being pulled in by 'meson' as a non'-native' dependency,
> > but this is where I'm lost. Could anyone clarify the logic here on how
> > to trim python3 to a native only dependency for systemd? Or is there
> > something fundamental I'm missing?
>
> Looking at the recipe I don't see where a Python 3 dependency comes
> from.  Have you verified that it's coming from systemd?
>
> Ross


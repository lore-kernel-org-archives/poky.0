Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.16482.1594636288574179154
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Jul 2020 03:31:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=suctrUnQ;
 spf=softfail (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21000E01E6F; Mon, 13 Jul 2020 03:31:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30F6AE01E20
	for <poky@yoctoproject.org>; Mon, 13 Jul 2020 03:31:25 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id k15so8590130lfc.4
        for <poky@yoctoproject.org>; Mon, 13 Jul 2020 03:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e3pSlhqAiE5XE1OE00YyULoNpAr/RSkUEB5CG8eVup4=;
        b=suctrUnQpY7FtiuaIxBpqVI6L/331TGYtkKtXoe6R1dle/mo3qqwVAy1n4B46V7+y5
         qFiNVM+fqnVT0rt1BXCZMO7T8Bs0yod37M3JdKFSP908Aa6zj0ogzUinVb9gCfSgtzvP
         G2xcehsODKTpL1osOCj3BPKfV1JWJ85WpJFzKpsgmmyUdLGV07guWVBKUBRNYm0Gt/HQ
         1x4L8PGJ3azGLzi8h/gda4KxCVc4oEHg0qKCQpG/9F0CLFyzsATmXJXwHUb/yAz+WXcz
         5VUN+nOY6fmVYihHe88x9uHLk/DtJ9oSWimIMIw+hAuhOwXw5Ux2YaTtHkmeROxC1Gt3
         pAxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e3pSlhqAiE5XE1OE00YyULoNpAr/RSkUEB5CG8eVup4=;
        b=hV0Lc62kPTRMWLQzIJUGdC+tKbkJguFrAU17GzKZj8ot+HvqB8E8wG5B8TigRdFqKm
         zyB6tzcYSNh1LLLLoAqC4TUKblm5YoHCNQ5OmrrJPLyEPrhabXk2JHoIE2YhSrNJQ8gP
         DoJbtehRzK5zhd1uzqQznKxCJ7j4IWQZtXcxDbSqJRr/RXRiiMO4YZDO3sgPiI7lbw5S
         jjGPjui9kiOB4EC1jNFHFBJZ700MlEKqBIHFIwRK8VTM2bQLNBVG98xWbzW1C/uNj/Q+
         C5Ttj/OXeMC03w22EugRXCGK4hZOY9WI0HzwsLqxF53Vsyw3frCBsM+oFRjbGaolqxkB
         HvAg==
X-Gm-Message-State: AOAM532C07SNTrije4g30qyAruSL9e4E5mzhkegyWyeLJxHZiL9wCuJd
	Z+F2rYHwnSpA2+UvgMtEPCOTKE0oFhOc9xD8CTevE/aKaDo=
X-Google-Smtp-Source: ABdhPJxEjCNhcfSXdHeBy+w8kXSd/bG2+HVRQ9OdWi+lED3vQxIgL68D13/adVE0HH+omMXMKRA413Gp5iQsrOB+REU=
X-Received: by 2002:ac2:5a4b:: with SMTP id r11mr52486385lfn.39.1594636284942;
 Mon, 13 Jul 2020 03:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAGNn0hYDMk+pSXarT1XbUOPmhyajUvcwTt7FmD78BEmeqZySzg@mail.gmail.com>
In-Reply-To: <CAGNn0hYDMk+pSXarT1XbUOPmhyajUvcwTt7FmD78BEmeqZySzg@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 13 Jul 2020 11:31:13 +0100
Message-ID: <CAAnfSTvnVfziABYju=3p5vU7Ud=h6v8Uq027yeUeTow8piRvRA@mail.gmail.com>
Subject: Re: [poky] yocto under WSL
To: R Srinivasan <s@srin.me>
Cc: poky@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

WSL2 should work out of the box, no need for Docker.

Ross

On Sat, 11 Jul 2020 at 10:02, R Srinivasan <s@srin.me> wrote:
>
> I got myself a new laptop. Trying to decide whether to setup a VM for yocto development.
>
> Will the above work?
>
> thanks, srini
> 

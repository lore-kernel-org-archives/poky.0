Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web11.9883.1576764311505878101
 for <poky@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 06:05:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BAKDwXMR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id f129so5742521wmf.2
        for <poky@lists.yoctoproject.org>; Thu, 19 Dec 2019 06:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Z8pos68A5aiiIpcFA4h+YhmprGJigRSX6MOftF/BgaM=;
        b=BAKDwXMRVCmWZ80KK18y6nyL+eFjeeYw2qsOeY2uuY3MGvHsDGBbgtJMJ65j4+y18C
         ifE5jsv+kt23gvCaKBr6Fbdcv+7nHQpp/rMmDMA1pNVCAxQjONkkMKUdXCg4oDRTfSMl
         W3KDmrcNsNipS9g4Gel3V/x2VGyS+UyTD7t1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Z8pos68A5aiiIpcFA4h+YhmprGJigRSX6MOftF/BgaM=;
        b=KlQBiwCGbfGr7RBraEZTqeiqBMSnoerwW6aQYUklIUrOXzyJca/tkg1r7kloFkXFmW
         WNInYqTwnoco/ZlTu0M3G6KJj69Hxlumikx2tefHdtnbv+iRvOINENNMDRmF5b+3OyJf
         QU9XinK7txK42gMj/J8UzPGAwG7P3NdMp/wVEwaKqnjAxukt4TOvMH9bqb2g3uF7m/C7
         RvPBxEFl6b7jV9sPP1O72tSujIY8nXK9jNBU63yWlQhJRPEJoTVoFxcIj594HB9qiz+N
         R1HD0weMlBYB8B2X7k56jhTokqEn4255Exs45q7CVixg00ESYVXpYbLn0UjRThP2A+Y4
         s6sg==
X-Gm-Message-State: APjAAAWML8eEWrIZyJeJw31IyWxGlorHzU5NAwHQMnaVoJlEEmh0V6um
	QaSvcaifWi2Cek7NAhh9I2bmtQ==
X-Google-Smtp-Source: APXvYqz6eB3CTTlcPf9Z4sh+pjsfIxP+3tEFJv/SkzJkFke6N5n97U8iuIw2/EHX2Kbxacr4lS5BQQ==
X-Received: by 2002:a1c:7901:: with SMTP id l1mr10067588wme.67.1576764310021;
        Thu, 19 Dec 2019 06:05:10 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id f1sm6662483wro.85.2019.12.19.06.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2019 06:05:09 -0800 (PST)
Message-ID: <be0c8a76ab8ef3a42a3d83e44f0fb73bb256a143.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] bitbake: fetch2/clearcase: Fix tar command
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Christian Herzig <cherzig@gauselmann.de>, poky@lists.yoctoproject.org
Date: Thu, 19 Dec 2019 14:05:07 +0000
In-Reply-To: <OF0F51A1C8.E86D40CA-ONC12584D5.004CC303-C12584D5.004CEB63@gauselmann.com>
References: 
	<OF0F51A1C8.E86D40CA-ONC12584D5.004CC303-C12584D5.004CEB63@gauselmann.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-12-19 at 15:00 +0100, Christian Herzig wrote:
> Signed-off-by: Christian Herzig <cherzig@gauselmann.de>
> ---
> bitbake/lib/bb/fetch2/clearcase.py | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/bitbake/lib/bb/fetch2/clearcase.py b/bitbake/lib/bb/fetch2/clearcase.py
> index e2934ef9fc..4dc712b080 100644
> --- a/bitbake/lib/bb/fetch2/clearcase.py
> +++ b/bitbake/lib/bb/fetch2/clearcase.py
> @@ -237,8 +237,8 @@ class ClearCase(FetchMethod):
>         shutil.copyfile(ud.configspecfile, os.path.join(ud.viewdir, ud.csname))
> 
>         # Clean clearcase meta-data before tar
> -
> -        runfetchcmd('tar -czf "%s" .' % (ud.localpath), d, cleanup = [ud.localpath])
> +        os.chdir(ud.viewdir)
> +        runfetchcmd('tar -czf "%s" .' % (ud.localpath), d, cleanup = [ud.localpath], workdir = ud.viewdir)

The fetcher shouldn't change the working directory after its completed
as that leads to subtle other bugs. Do we need the chdir and the
workdir or is the workdir alone enough?

Cheers,

Richard


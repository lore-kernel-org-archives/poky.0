Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.5576.1670602310217394767
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Dec 2022 08:11:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IOlBrG1v;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id u12so5662919wrr.11
        for <poky@lists.yoctoproject.org>; Fri, 09 Dec 2022 08:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KuknRw2JdIlbbPHaNLLkUYkhhmVcUP5xv1Tk5lqsmYI=;
        b=IOlBrG1vn4IXfQ5d9LsacpD2DcR1ghdoktgbU3smPwnnEV+I7pxRQpvWlIWHy55lDd
         mSEqV5mbFvEpXS1HXM6Dla1hyQiUKu6Sz8x6umAU28AGBkueqZkha7w8/iXcCcNkSbE6
         LLG63jGk0DU4wJI+sgo8QF9zLuikqr0rBUahM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KuknRw2JdIlbbPHaNLLkUYkhhmVcUP5xv1Tk5lqsmYI=;
        b=3vjwTJEXGNj0XswHAoAH/8rEMojC4HPUaSozotNupdkEe2xafwrebOKsUNJJT3kxJS
         rLimdKcxvXrJaYyDhlS+bKWqL7mZF/g+T+yNrHm0n8LZYlcJP0fGbosf/Y0X3dsfEfi8
         N1xNbIG6fw1p+FRacrOAuP+LDtRzpzguqHEQ2Rjyn2f+L3SpfIraA89YXj9aXUH1Xl/r
         ucYlpcvZfmDG3LU4Ow4W3wywQ4PIVG3F77i7ffR+Ql7e3jBRIuOKWSUwkWpylN3VhxGJ
         vXDGyZUK7i0qYPygNfbY2xYSM4qg3C8ks4xskBS9CyMc5dS3KxhtyGW9YrjIp4fnAJxo
         /Muw==
X-Gm-Message-State: ANoB5pm4dK89Vj2cRynwUxFl++tnR+rwMYVIq70mHgnzuW6izXOE6as2
	BnQ2NXcjsDGNMxjvie0jbhRjpg==
X-Google-Smtp-Source: AA0mqf64wX0LFuRVcicr0HELsMZ4MFXPeuBcGW+P/uBjZ80TtNMV3YHA66ERum+1IroP4+y7Dogidg==
X-Received: by 2002:adf:e283:0:b0:241:63d8:6741 with SMTP id v3-20020adfe283000000b0024163d86741mr3698949wri.9.1670602308402;
        Fri, 09 Dec 2022 08:11:48 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:9b77:8930:5aaa:e9c4? ([2001:8b0:aba:5f3c:9b77:8930:5aaa:e9c4])
        by smtp.gmail.com with ESMTPSA id x4-20020a5d54c4000000b00241b5af8697sm1726334wrv.85.2022.12.09.08.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 08:11:47 -0800 (PST)
Message-ID: <d73115cd38d439c919ab6fa9448fcdce29545809.camel@linuxfoundation.org>
Subject: Re: [poky] Unexpected package version going backwards warnings.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Daniel Squires <dan@engineeredarts.co.uk>, poky@lists.yoctoproject.org
Date: Fri, 09 Dec 2022 16:11:46 +0000
In-Reply-To: <CAC+ji7EOT6D35madOZvx6tS8Nj43Tiq-cg06WYO8xue8MnBhiQ@mail.gmail.com>
References: 
	<CAC+ji7EOT6D35madOZvx6tS8Nj43Tiq-cg06WYO8xue8MnBhiQ@mail.gmail.com>
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2022-12-09 at 16:02 +0000, Daniel Squires wrote:
> Hi!
> We're using kirkstone, though not the very latest at present.=C2=A0
> Every now and then a a number of packages will unexpectedly give the
> error re package versions going backwards and teh version may have
> done something like go from git5-######-r0.1 to git3-#######-r0.0.
> We always see this if we've been using devtool for a given recipe and
> then do a devtool reset, it complains about going back from git999 to
> e.g. git5 but this makes sense and we just run the build again and
> forget about it. However sometimes this just seems to happen randomly
> for a given recipe when it picks up a new commit from our repos and
> the git autoinc number will have gone back a few.
> Does anybody know why and if it is a bug or an be fixed?

We probably need to know a bit more about how you're building things.
Do you have a pool of workers building against a common sstate?

Are you using hash equivalence? Are you using a PR server?=20

I ask the questions as the answer is probably somewhere in the way data
is being shared/reused between builds.

If you're not using package management on device to upgrade them, it
probably isn't a big issue but it is worth understanding the sstate
reuse in this context.

Cheers,

Richard

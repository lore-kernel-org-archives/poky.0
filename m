Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.52572.1673522534668037896
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Jan 2023 03:22:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gQ5M0oVA;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id v25so27908567lfe.12
        for <poky@lists.yoctoproject.org>; Thu, 12 Jan 2023 03:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cj39nZyzZB3yLd0XT9sdmXlN749M36DR2U0bxTHZNDU=;
        b=gQ5M0oVALYWjM8w4qUrFnGN4GNLiBrP3IjpK1L8/M6I3QtT0htO5gHRCsXeG+GlWyC
         4HHtjDPKS1z+PJwhAqEVshqLO1bRGGW46jEtlx4QvL6u4NY/T5f6m5I/muXmLgVTV5zU
         48vNbKNCBlKO8GiVSPT0NKUHH/eWfOWNIjT3728S9dMMZuU9LxAQMT/idhURHl9SuSDq
         eQ+l5AOoApnLrP98mW2Oe1nAP7qQCrRMAQjdVpan7QwWExoTSkPtMX6InaG8k4WlScKP
         wvzKQ+L3vBSUgkwHF44EYzqIXHsOOk/an0B8X6dvMbMFBLxSjhOSTcgqbxjxaG37yU3H
         wmgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cj39nZyzZB3yLd0XT9sdmXlN749M36DR2U0bxTHZNDU=;
        b=6qwk7Om1tpi6umB5LtPKAZYSJZJl3qfi8tWz5m335HBtilpw9vAttjGLoNpeVbKsqf
         tZqe95aor0Nv6QTYxy7ZmaaWViAU5q7tM5jvqepK+uwF69dAuHb4NbGQUkCGiwl4coPa
         7wm63yUV1xYqAjtBqwjQrDZbgaj23C2NwSeYXKtuAU5qzSQGeDpxVByDQ0jOGcebSVMJ
         086ZNxfqDmDNr3len1gMgExysPFyENz2JrQsVbYmyckL5I4CkaP+wVzw/mAlPo7yiFMv
         jOV3Ki+xiOd+dJ9psV2h5S81p87QsRpxWemR7hootr7USeCuT/yhGhA0v9Ama6vHDoNK
         NH1A==
X-Gm-Message-State: AFqh2koMVyufmtnmQ23vBydawGL5fLjH6Xpr/ZCZMOZnYE0JKIp4yPv7
	GQsQNEFiZ6UtZ9dUiX16HEPvYE33uFMY50Z9bDU=
X-Google-Smtp-Source: AMrXdXsQTxORIcAgo8rsLEzifK3joZ3uTj4YoyhnuC5b2TVbJNVBGP1gp0gMLSrLgxUioQDkXhtH0PrsSrRDwqCl9pA=
X-Received: by 2002:a05:6512:239d:b0:4b5:62e4:bff2 with SMTP id
 c29-20020a056512239d00b004b562e4bff2mr4219197lfv.492.1673522532588; Thu, 12
 Jan 2023 03:22:12 -0800 (PST)
MIME-Version: 1.0
References: <cover.1673521664.git.bmauduit@beneth.fr> <4415ab7387d6c4466b693b4fc7c2dd4438c1d6aa.1673521664.git.bmauduit@beneth.fr>
In-Reply-To: <4415ab7387d6c4466b693b4fc7c2dd4438c1d6aa.1673521664.git.bmauduit@beneth.fr>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 12 Jan 2023 12:22:01 +0100
Message-ID: <CANNYZj_t95UH9ah0cdMtz7W0ApL03eZ3mv-QH+NHEcnAuRs2uQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] lib/oe/reproducible: Use git log without gpg signature
To: bmauduit@beneth.fr
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

please send this to the oe-core mailing list, as changes in poky/meta/
should go there. It's something of a historical baggage :-)

Alex

On Thu, 12 Jan 2023 at 12:11, Beno=C3=AEt Mauduit via
lists.yoctoproject.org <bmauduit=3Dbeneth.fr@lists.yoctoproject.org>
wrote:
>
> Previously, if "showSignature" is present in user gitconfig, parsing
> of the timestamp will fail.
>
> Ideally we should replace this command with a git plumbing command.
>
> Signed-off-by: Beno=C3=AEt Mauduit <bmauduit@beneth.fr>
> ---
>  meta/lib/oe/reproducible.py | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/meta/lib/oe/reproducible.py b/meta/lib/oe/reproducible.py
> index 04a1810d4f2..9ac75c02e38 100644
> --- a/meta/lib/oe/reproducible.py
> +++ b/meta/lib/oe/reproducible.py
> @@ -115,7 +115,8 @@ def get_source_date_epoch_from_git(d, sourcedir):
>          return None
>
>      bb.debug(1, "git repository: %s" % gitpath)
> -    p =3D subprocess.run(['git', '--git-dir', gitpath, 'log', '-1', '--p=
retty=3D%ct'], check=3DTrue, stdout=3Dsubprocess.PIPE)
> +    p =3D subprocess.run(['git', '-c', 'log.showSignature=3Dfalse', '--g=
it-dir', gitpath, 'log', '-1', '--pretty=3D%ct'],
> +                       check=3DTrue, stdout=3Dsubprocess.PIPE)
>      return int(p.stdout.decode('utf-8'))
>
>  def get_source_date_epoch_from_youngest_file(d, sourcedir):
> --
> 2.39.0
>
>
>=20
>

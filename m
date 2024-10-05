Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B1BECF8866
	for <webhook@archiver.kernel.org>; Sat,  5 Oct 2024 00:30:24 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.2968.1728088219488947279
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Oct 2024 17:30:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ErcwNt1D;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-27e1f62e30eso1479359fac.0
        for <poky@lists.yoctoproject.org>; Fri, 04 Oct 2024 17:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728088219; x=1728693019; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W88EjXbOsge8/sP28Wg/TP2DGrnnzTEDbXgahnQmzCY=;
        b=ErcwNt1D80WkLqcCHyaYaiHRXsJ+5PPm7HfeAsz4hUau4dyZWP11zj/UyKsgML7w46
         NjUp1Dnxzdp6c4xi0r0nTz7gtopAnwRQMlCg7crzHaLl0Bp+hIyp7GdFg2ZPm4MT2Lrj
         JKLmPqOYyAT9ua+oG4Q2YcrgST5uMeZ8BBQequM3e0SFqaJtcR26t6nLaLi6dFSOOWMU
         i1sw30EaUG2YdmzNDUctpNcM+vtvFHrPyjug93UfXnej2x2XjyBWliC9qWni0uv7pg3k
         9UkVOpcRAk/O5dmkZKwoAyGydK9Pl16ltubqQQizR7QgJPhO1GbIX9quyFlmSoIRWMeA
         YUbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728088219; x=1728693019;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W88EjXbOsge8/sP28Wg/TP2DGrnnzTEDbXgahnQmzCY=;
        b=mUWAvALS1olu7omgGCCAT3MiNmdoMN2m/00e6YZW5Yg8Pf5u4DXs6DygvOnqa+uSxO
         qvHM0gqCiRkC+XoL2bzKOiYjWHSrFsEohu/FKGwQqdJeuCACJTKHVC0V1XfMCc52iYF4
         Kvx4ywyBnJi2qt/Obkk+beg5K9DqPgzD2FHKyE52Zi6kMkdc11UanDQmajKVVc4Wt4ak
         WBi1YCmsm7aUo58NWRGvRT8Hs6NdKfkLiGefUkn+km7ah1vzuiTOmw2az/kSPLL6FMzh
         7gUcoYe4usUSO4kF+NBj4DCQhjw3JkRu+Kxe+H42EK/94kYj+RzSg4dtk1BkE1tTU8g2
         r/pg==
X-Gm-Message-State: AOJu0Yzg5e0WKB1tJRcNdA+Uj8erv19kfd0hMF1kLWNondmf17dHiV7b
	PRKs8gMlB8OZ/EejHfyyUIgXsYq14uhGilopUePH5kiqa9mS2G0C4EuRawHwzKTCW6ML/Mp3juU
	oKoIPDLD1NiW2/0p3atFRxTEyxOQ=
X-Google-Smtp-Source: AGHT+IGNk5JeJxgt0qsUttQ4JWkgvj3S5c7BDDS4pVD3aZ9grsi0EFEQHdF0qUUwnifNwCZBa3fWgiXm/ZuKGVB5lIM=
X-Received: by 2002:a05:6870:494f:b0:265:b32b:c465 with SMTP id
 586e51a60fabf-287a3e35cb5mr5434105fac.9.1728088218741; Fri, 04 Oct 2024
 17:30:18 -0700 (PDT)
MIME-Version: 1.0
References: <20241005001606.51818-1-yumx@amazon.com>
In-Reply-To: <20241005001606.51818-1-yumx@amazon.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 Oct 2024 17:29:52 -0700
Message-ID: <CAMKF1sqdvShd4N7RLSf-K+6sNKybzrBfASF_Pq4yHBa3WZz1sw@mail.gmail.com>
Subject: Re: [poky] [PATCH] sstate: remove corrupted artifacts from local mirror
To: yumx@amazon.com
Cc: poky@lists.yoctoproject.org, Przemyslaw Sobon <psobon@amazon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 05 Oct 2024 00:30:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13450

On Fri, Oct 4, 2024 at 5:16=E2=80=AFPM Yu, Max via lists.yoctoproject.org
<yumx=3Damazon.com@lists.yoctoproject.org> wrote:
>
> We observe sstate cache corruptions sometimes which cause rebuilds. That =
is not
> a fatal error as the package has to be rebuilt and updated artifact needs=
 to be
> pushed to remote sstate cache mirror. Currently, Yocto does not handle
> corruptions properly, where the corrupted artifact is not deleted or
> renamed. Later, after the package is built the same corrupted artifact is=
 pushed
> to remote mirror and the same procedure is circled again and again.
>
> This change verifies the outcome of the unpacking action and renames the
> artifact if a fatal error occurred ("tar" tool returns error 2). In such =
case we
> rename the artifact what causes that a proper one is created and uploaded
> overwriting the exisiting one - the corrupted one - in the remote mirror.=
 That
> way we break the loop of uploading corrupted file again and again.
>

Thanks for contributing and trying to make the yocto project better.
I think the patch seems ok to me. However, please send it to
openembedded-core mailing list
openembedded-core@lists.openembedded.org since this is part of oe-core
which poky uses.
I would also suggest to peruse through -
https://docs.yoctoproject.org/dev/contributor-guide/submit-changes.html

> Suggested-by: Przemyslaw Sobon <psobon@amazon.com>
> Signed-off-by: Max Yu <yumx@amazon.com>
> ---
>  meta/classes-global/sstate.bbclass | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/meta/classes-global/sstate.bbclass b/meta/classes-global/sst=
ate.bbclass
> index 11bb892a42..5a7ce35341 100644
> --- a/meta/classes-global/sstate.bbclass
> +++ b/meta/classes-global/sstate.bbclass
> @@ -937,7 +937,12 @@ sstate_unpack_package () {
>                 ZSTD=3D"pzstd -p ${ZSTD_THREADS}"
>         fi
>
> -       tar -I "$ZSTD" -xvpf ${SSTATE_PKG}
> +       if ! tar -I "$ZSTD" -xvpf ${SSTATE_PKG}; then
> +               echo "Fatal error extracting sstate cache artifacts, file=
 might be corrupted or truncated, renaming"
> +               mv ${SSTATE_PKG} ${SSTATE_PKG}.unpack_error
> +               exit 2
> +       fi
> +
>         # update .siginfo atime on local/NFS mirror if it is a symbolic l=
ink
>         [ ! -h ${SSTATE_PKG}.siginfo ] || [ ! -e ${SSTATE_PKG}.siginfo ] =
|| touch -a ${SSTATE_PKG}.siginfo 2>/dev/null || true
>         # update each symbolic link instead of any referenced file
> --
> 2.40.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13449): https://lists.yoctoproject.org/g/poky/message=
/13449
> Mute This Topic: https://lists.yoctoproject.org/mt/108827961/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


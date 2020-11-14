Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web09.6648.1605364238752225129
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 06:30:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@madison-systems.20150623.gappssmtp.com header.s=20150623 header.b=MKgQ6XSz;
 spf=none, err=SPF record not found (domain: madison.systems, ip: 209.85.167.53, mailfrom: matt@madison.systems)
Received: by mail-lf1-f53.google.com with SMTP id s30so18393074lfc.4
        for <poky@lists.yoctoproject.org>; Sat, 14 Nov 2020 06:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=madison-systems.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=H5CScCAFsolWBIruHM7hCB8hkzpKvvMbrmbXPOpxZmw=;
        b=MKgQ6XSzglrh22FJUL3gPipQI77xxWpI4+87MeT+hrnURBHmiJHnqPFiljSfN6aA2P
         AMlYsoLlDtIkpCRUIULZubkol1WKujBAqX1VDR5PfDnalmLILbhWIcJq1ReWUrS4YSBs
         FcYkAjdb958cPJPzgxdbTYkdqI3WwVsVTaOKMr+SYvCGD7ZuOjNdmrwuoeyAz8e+RQ1n
         cnC/WYcYYhvVAtCd7XILhoQbZg43kELMU0Sm8uPzJbHrRJGukIqWg2oxM4J1rpXiv7ve
         BDlaAk48qpsj86VjhreMZXqH/jPCqdF6d4bDAydoXM3D4tOjqGf9YJw//7qBFDuwmzde
         PG2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=H5CScCAFsolWBIruHM7hCB8hkzpKvvMbrmbXPOpxZmw=;
        b=lbU+mMdHy+KuaSGCfTwiqR5WWp0CFirzu/v1tM8E4/YNO7h9EmKPXgfDveCpOJgxzX
         r50DOlil6sj3Oum1af9JykNX1levMsuT3d4TgqIpoOZyN5hqU7YDh5png2Mc3I3BT42c
         RXlytYrm7BHT21aFv63hfm1EUupVg9q3xbYWJ4mjnC1BJXg1KUSgXRqa+2ARfUV2PGIq
         ZA5P4HBqzddaPCvxg8CzshkotPE5YwwC28B0L3UgVcHM6krHUp96N5MpXNcmEAIMZyux
         ZZBv2tHrsW2gVL3RivPxDlSZb1Yf9Vg99WOeGN/Jb0QdAqVZRv2BVtaz/NSmlP9BlRDt
         CGHg==
X-Gm-Message-State: AOAM531LbPQaPVEn08xU4vnI8FiJ62JxbUVl+vrPY3VpOIisQTcxO0tM
	zF+YjD+WvdZ3NHoJ+TBSPq4SiNFtkvjgvfZyXg1iSA==
X-Google-Smtp-Source: ABdhPJyZh1DZwqYv/DItzDohK5X5rYtGeimZHUMHBRCnrgp2spiauV2Ab2tyHX6khGAxk35KxAJB+PkPWobyc1hGc5E=
X-Received: by 2002:a19:85c2:: with SMTP id h185mr2792536lfd.494.1605364236665;
 Sat, 14 Nov 2020 06:30:36 -0800 (PST)
MIME-Version: 1.0
References: <63DA0CC5-889D-4A42-BA28-31EEBD45BF07@bitshift-dynamics.com>
In-Reply-To: <63DA0CC5-889D-4A42-BA28-31EEBD45BF07@bitshift-dynamics.com>
From: "Matt Madison" <matt@madison.systems>
Date: Sat, 14 Nov 2020 06:30:25 -0800
Message-ID: <CAGgRHJovndgs_7zFTGuZv9eDBP60kT+hGpqRYY_o5tymx9k-Kw@mail.gmail.com>
Subject: Re: [poky] Adding S3 as option for sstate
To: Alexander Nassian <nassian@bitshift-dynamics.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 13, 2020 at 11:50 PM Alexander Nassian
<nassian@bitshift-dynamics.com> wrote:
>
> Hi together,
>
> We would like to extend poky to be able to write and read sstate package=
s not only from HTTP and FILE but also S3 buckets which would fit our CI se=
tup much better than our current =E2=80=9Ezip everything and upload to S3=
=E2=80=9C in terms of incremental speed up builds. I already did some rese=
arch if there is something read-to-use but didn=E2=80=99t find anything.
>
> My two questions are:
> 1. Do you have any hint where to hook into? I already went through runqu=
eue.py but I=E2=80=99m just a extensive user of poky, never worked on itsel=
f.
> 2. Would that change have any chance to be accepted upstream, or is this=
 something too special for the project?

I have a CI setup that I host in EC2 using an S3 bucket for mirroring
and have implemented some hooks that make it work better for me.  The
basic parts consist of a replacement for the built-in S3 fetcher and a
bbclass to assist with populating the S3-hosted mirror.  I have a
writeup on it at
https://github.com/madisongh/tegra-test-distro/wiki/Using-AWS-S3-for-sstat=
e-and-downloads-mirrors
if you're interested.  It may not be the right answer for you, but it
may give you some ideas.

Regards,
-Matt

>
> Best regards,
> Alexander
> --
>
>
>
>
>
>
>
>
>
>
>
>
>
> =E2=80=94
>
>
> bitshift dynamics GmbH
> Neudorfer Str. 1, 79541 L=C3=B6rrach
> Registergericht: Amtsgericht Freiburg i. Breisgau, HRB 713747
> Gesch=C3=A4ftsf=C3=BChrer: Alexander Nassian, Markus Pfaffinger
>
>
> http://www.bitshift-dynamics.de <http://www.bitshift-dynamics.de/>
>
> Zentrale: +49 762158673 - 0
> Fax: +49 7621 58673 - 90
>
>
> Allgemeine Anfragen:
> info@bitshift-dynamics.com <mailto:info@bitshift-dynamics.com>
> Technischer
> Support: support@bitshift-dynamics.com
> <mailto:support@bitshift-dynamics.com>
> Buchhaltung:
> invoice@bitshift-dynamics.com <mailto:invoice@bitshift-dynamics.com>
>
>=20
>

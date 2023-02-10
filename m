Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.8172.1676010567164898864
 for <poky@lists.yoctoproject.org>;
 Thu, 09 Feb 2023 22:29:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IqmImnc6;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id d8so4889836ljq.9
        for <poky@lists.yoctoproject.org>; Thu, 09 Feb 2023 22:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1YL8Gr13rZ8QBVy90JB/92qorLCTG6r5ssyFJJjOsEk=;
        b=IqmImnc6XhFs6pSoBG6ZF51VFVJJ0D7JnKlxhDayVG4sTSmUP+MaAFihaAGKOyn4lC
         wIJ/IsjhNAx8A/YkLxkPel6TJ7WRBTLxY5sEGuH1/KECU8b+UENmB7gpBQxWAI4NH0TC
         6RHOadcK1z6G5m7aXrxVKCUVhcZSwMp68D7OvWv24ypcQL3MSr43aLAqbkw1XO18cMSy
         DBIMuICIVT/yURHWg/Z3r26Ru58WXKtTh31jv4UBHF3I/LyW6/SSH1bqsDuFpb+dWaV9
         lYe2jQP64JPhP2eyuIHFR1aXpeumRePrickproL1c/zhGdmLNX70CrejiagO/sQ5N3tL
         M3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1YL8Gr13rZ8QBVy90JB/92qorLCTG6r5ssyFJJjOsEk=;
        b=c6qc8ZawKKC84aw5sD60jwPIcfzO4ntEnnBXlDmammx0KA2MZCADQi+tItRNbMk7OG
         TC7pyVwUb5q368Q5gKB+6wa/h25qhvDqg7adUGOqMCTwORtV4alD78RaWUqk9kXAwn4v
         1+xhY4NSWSB8IVg0WAGmI6eadgAZknOn1e6oHYdNsr745Nh3Stcghqmxh7a6b6OGk1Yq
         2cVcBba1jdHER20OWW8GJP5MeWFGsPACyGWoABjly0jAwprZCrTeuFjj1Rou9Co30vpt
         M7SjLgHLJ2KkxBZxv0LwBYDUpASuc1hRrm+pHfeljcDmfe5rhW5Sjv+7HsSaI83cBDsv
         +ftQ==
X-Gm-Message-State: AO0yUKUQgA3XkDo4afuFIGMUV+r7jq+j51ODwIa/20B45ODDSSK4J2ZI
	uShfv7XPLqgEu2DxK2hERHVZLU9biXndj0YoV2U=
X-Google-Smtp-Source: AK7set+GkddGhPOnkCStRfV0vW2vDBO2+5CwQ2g620A+3Z3q8y7veB0flXNQtbKWte7SqzwKLbrtZ0ZcGC38bE/fhIk=
X-Received: by 2002:a2e:97cd:0:b0:293:28a4:d884 with SMTP id
 m13-20020a2e97cd000000b0029328a4d884mr1855114ljj.55.1676010565010; Thu, 09
 Feb 2023 22:29:25 -0800 (PST)
MIME-Version: 1.0
References: <M1pL.1676002873271916598.XiKH@lists.yoctoproject.org>
In-Reply-To: <M1pL.1676002873271916598.XiKH@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 10 Feb 2023 07:29:13 +0100
Message-ID: <CANNYZj_zrCfVvNdXeHrVv3PHztm_O2+SBkXGqkp-JwNXxthdnA@mail.gmail.com>
Subject: Re: [poky] Kirkstone python3-git recipe patch issue
To: phil@sutherland.id.au
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You need to submit a commit for the layer repository that the modified
or regenerated patch file is in. The correct mailing list is
openembedded-core.

Alex

On Fri, 10 Feb 2023 at 05:21, Phil Sutherland <phil@sutherland.id.au> wrote=
:
>
> Greetings all,
> There's an error in the recent Kirkstone branch patches to meta/recipes-d=
evtools/python/python3-git here. Specifically, line 294 of the PR1521 patch=
 results in an indentation error on line 700 of remote.py after the patch i=
s applied. What's the appropriate way to fix this? Should I submit a patch =
to the patch (seems odd - though that's effectively what I've done locally)=
, or instead submit a complete regenerated patch file?
> Thanks
> phil
>=20
>

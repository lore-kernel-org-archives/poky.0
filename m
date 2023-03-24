Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web11.97511.1679653932864732388
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 03:32:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VOhmbNkp;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id h9so1223485ljq.2
        for <poky@lists.yoctoproject.org>; Fri, 24 Mar 2023 03:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679653931;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/e0bQs9QRrM7uhdyb5QJeBeOgtxLfjQCcKEoWhXqVQ8=;
        b=VOhmbNkpVFILrzDBGzehnu8vSbUzj0S0qpZMoVpJN4ShpNqA+FHUtlinmscK5Y8JkW
         H2a7GtB+e6Cs/EO/UrER80AjoLZHhRfxGd2jccRab3JKWbEjLMIP/KSKF2XHlh4/qXxy
         5gNI0mJcN2FKoRVUtElf3uK556PuPhK+Pnzezi2ZK938NA7G7IJyenty7RSIt8BcER8c
         5PcZNO9JiOeM/lbiyKOfx3uk4Nkw8MhcHUa+LvimiL+v3ARHQZoPaCRn2f9yQmwhlxYJ
         sKMhRsPsJ5KjsyZ7dr3WwzzM5Ac0OjYqyKg2uN7Q0ut3adgzLEEENamcdr6T3vOzStfV
         JLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679653931;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/e0bQs9QRrM7uhdyb5QJeBeOgtxLfjQCcKEoWhXqVQ8=;
        b=FOizt0EQ/irN9LS/NpvVun9g7lwrEgSqrp0A30bKGIHJ/IXXdiGP3FpZHsQ6bRGRm5
         CW6uZb1dQEJRkSKl7ymIQbb6W1qn9W4+bgjVZpoysswNwptCyVsgi/fnd1o0VzL9tajc
         CSpJY5x2ywjh2F7/064x8VxFDPEeB+3MO5a890cckAxNNpT+drJEjTOBOZvzP3E8bozM
         cNRDQ+NL3yjk9/wJBOu2qvo0hCDQaoEhH4cxO7gO9ANrW+M85EteXNRtx26LMubh+Irc
         DJl2NjFmw1Jrzc+nL7xODcm9i9i6jERTOOCYGwQp/7JRdUtncYwOfCzutpFhMt8t0Axo
         1lOQ==
X-Gm-Message-State: AAQBX9dzH0ydBz7sYSn4V/SS+O38Jqw+z26qZHNf8A3pBYOdDnhioJGT
	jnBN1OAyzLLqN+Qm+QwdXBNKdGpIyciGgwO4Iko=
X-Google-Smtp-Source: AKy350a/3Jj3vIj0iZzT0ELGSzI9bHUhUJjzk8PPDhQNzrkePKNrsWRcr+Z4iQds+uH24QxmZEbP9oSROGtV9vwQly4=
X-Received: by 2002:a2e:86d9:0:b0:298:b3c7:293d with SMTP id
 n25-20020a2e86d9000000b00298b3c7293dmr689224ljj.7.1679653930878; Fri, 24 Mar
 2023 03:32:10 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1679649125.git.nicomueller1991@googlemail.com>
In-Reply-To: <cover.1679649125.git.nicomueller1991@googlemail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 24 Mar 2023 11:31:59 +0100
Message-ID: <CANNYZj_7_5fr-5maZ2633R6=mkbd2+Jufuejy+wfnxUWmmB4Bg@mail.gmail.com>
Subject: Re: [poky] [PATCH 0/2] git/gitsm do_clean fixes
To: =?UTF-8?B?TmljbyBNw7xsbGVy?= <nicomueller1991@gmail.com>
Cc: poky@lists.yoctoproject.org, =?UTF-8?B?TmljbyBNw7xsbGVy?= <nico.mueller@de.bosch.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The patches need to go to bitbake-devel.

Also, are they for dunfell? Have they been tested on top of master,
are they maybe no longer needed?

Alex

On Fri, 24 Mar 2023 at 11:26, "Nico M=C3=BCller <nicomueller1991@gmail.com>=
 wrote:
>
> This pull request adds two fixes to the fetch2 git and gitsm modules.
> Previously `do_cleanall` did not correctly remove all tarballs when
> different combinations of BB_GENERATE_MIRROR_TARBALLS BB_GENERATE_SHALLOW=
_TARBALLS
> and gitsm have been used.
>
> The following changes since commit aec83663aadc871354b441eef0a3a41eb3780b=
13:
>
>   build-appliance-image: Update to dunfell head revision (2023-02-13 07:4=
8:24 +0000)
>
> are available in the Git repository at:
>
>   https://git.yoctoproject.org/poky-contrib niecore/fix-clean-tasks-for-g=
it-and-gitsm
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dniecore/fix-=
clean-tasks-for-git-and-gitsm
>
> Nico M=C3=BCller (2):
>   bitbake: fetch2/git: Clean all mirrortarballs
>   bitbake: fetch2/gitsm: Add clean function
>
>  bitbake/lib/bb/fetch2/git.py   |  6 +++++-
>  bitbake/lib/bb/fetch2/gitsm.py | 19 +++++++++++++++++++
>  2 files changed, 24 insertions(+), 1 deletion(-)
>
> --
> 2.39.0
>
>
>=20
>

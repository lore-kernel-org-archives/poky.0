Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
 by mx.groups.io with SMTP id smtpd.web11.22220.1588512489584929558
 for <poky@lists.yoctoproject.org>;
 Sun, 03 May 2020 06:28:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SGg4L5bi;
 spf=pass (domain: gmail.com, ip: 209.85.166.193, mailfrom: gizero@gmail.com)
Received: by mail-il1-f193.google.com with SMTP id i16so8766520ils.12
        for <poky@lists.yoctoproject.org>; Sun, 03 May 2020 06:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=8cu2lcnSKXwQJ7thVd9UVbgF6AyO1j9r48Ry4jtJFiM=;
        b=SGg4L5biF41M9hj48zWMS5zd7ifs/h4Do9AIlNXR5Fir3x2WISPkCsLT6ScG2jbitR
         dZayeTjw8PNimTuPN29fqodQxaZpcIXd7Q4Pt9FvoT7GvBs0rQNjbowL+yQkgc1dbMw4
         bFFZWfojmqGZYaJU7mWo/x24mW3bIJ/LMRwpqDnTWxV3TEEht9K7aTPJ0GOAmwUgEgFk
         VdYZapWPTXfNQOo6veovAr0VGaXXnsHMmX+bPTn2VAUgjRwq9CkWL/P/7SBwUz0HHx+/
         gFEl0zgFPLLQbZv3UMurtIMarvcngq3VcooHwuqJzUyKMO6B1Fv1RM4ePv6WoVD8JaU1
         BzMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=8cu2lcnSKXwQJ7thVd9UVbgF6AyO1j9r48Ry4jtJFiM=;
        b=EgAyYRsDtjcpQFrmI5PEOEDzS0FpV29FSQv0rb2nzxBnrKRgAjV82YfIpDWlb0d6XL
         2B7ikzqG3TX1jiZ+Mhz0dvfSWvPjk2sL+nSYPpA3fc70lA4eY/YblHMfTAs+qhyebIAI
         kWYMP7wASXwj8uLdnvescfNKSzuWNlZjZWx9n0KJAAT16+4Mr57rrLkvN8s3BWdlleeM
         RSlgNs5sftO7o28efpAyAg0KiHw+jYOPBhvZ5VCpUooJaM92rNiA/LjuD8lI3qA6H7Rz
         i/DxmCjPq46PfJJEwG2+KYqx6bS4yXdAtf9FvnArtSYzwYU88hEjrKA+5GsPNzuEjHcG
         mSUA==
X-Gm-Message-State: AGi0PubnpwZAFlvjx/iZjgwFxlmBqHcgKb6xErzo0pPDtbdQiFGLXqTv
	jZKiMPRfBru8Tgyw1nX9IV2EjyLAAaM9vBMt+wrljrk/4IA=
X-Google-Smtp-Source: APiQypKrUxOikcPro7mx+1dg1up09D/8FVQFAyNxLNdKAKNzFCDIXOyeYk7TwKV+uQeWkUJYCNXgrHJskH0z234ifog=
X-Received: by 2002:a92:5b05:: with SMTP id p5mr11376057ilb.94.1588512488466;
 Sun, 03 May 2020 06:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1wPpqhBLXBu9qNLtbRmjz=-R3TBROZrch0SzTcGToBzo0vzA@mail.gmail.com>
In-Reply-To: <CAP1wPpqhBLXBu9qNLtbRmjz=-R3TBROZrch0SzTcGToBzo0vzA@mail.gmail.com>
From: "Andrea Galbusera" <gizero@gmail.com>
Date: Sun, 3 May 2020 15:27:57 +0200
Message-ID: <CAC+thW22+fhv_qCy-+X2eioONk1WwN0G2Wf5KdoFVNS175c61w@mail.gmail.com>
Subject: Re: [poky] Dunfell poky version
To: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi Gianni,

On Sat, May 2, 2020 at 5:51 PM Gianni Pino <giannipinounavolta@gmail.com> wrote:
>
> Hi everyone,
>
> last month the poky version Dunfell was released. How long does it take to be a stable release?

I was a little bit "away" from the list, but I'll try to answer your
question anyway, which led me the occasion to go through some email
backlog and to read updated wiki pages (see references below) on the
topic as well. Happy to be corrected by anyone here with more insight.

This is how it worked before Dunfell release, up to Zeus (3.0.x): the
yocto project released on an approximately six month schedule. Once
released, a new version entered the "stable" support level for 1-2
years. After this maintenance window expired, stable branches moved to
a "community backed" support level, before going EOL and fading out.
Even though the release frequency haven't changed, last fall the Yocto
Project decided for introducing a new "support level" for some of its
releases which is called "Long Term Stable" (LTS). "Stable" releases
are now maintained for a shorter period of time (7 months) before
moving to "community only" support. LTSs, instead, will receive
support for 2 years. There's a lot of commitment behind maintaining
releases and the Project wanted to better distribute the effort with
more emphasis on a less frequent, but longer supported selection of
releases. Dunfell (3.1) is the first one to be declared as LTS.

To answer your original question, "stable" and "long term stable" are
mutually exclusive and they specify how long a release will be
supported for (LTS being itself stable by definition). That said,
Dunfell will technically never be labeled as a "stable" release, since
it's already an LTS, but, of course, it is by no mean less stable
than, i.e. Zeus. So maybe you should be more interested in asking "for
how long will Dunfell be in LTS before moving into community"?
Moreover, if you have to choose a release to base a new project on (or
to migrate an existing one as well), beside being the latest (which
already should be your best bet), for the fact of being an LTS,
Dunfell will definitely be the one to pick.

I suggest you go through [1] and [2] for more details and maybe [3] as
well, if interested in historical perspective of how the LTS idea came
about.

[1] https://wiki.yoctoproject.org/wiki/Releases
[2] https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS
[3] https://wiki.yoctoproject.org/wiki/LTS_Background

Hope this helps clarifying releases plans and maintenance windows for
the project.
Regards

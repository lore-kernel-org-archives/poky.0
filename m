Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web09.2307.1580669743762442852
 for <poky@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 10:55:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SDN7C50t;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id n8so5785753qvg.11
        for <poky@lists.yoctoproject.org>; Sun, 02 Feb 2020 10:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=JtyVpY5og/xGrjCRUOoJC3i0GDvWz/Ptq7r3Pe+MBH8=;
        b=SDN7C50t0ZihcgVqPKcKxzFjYzZNjUuFObD1OCBpp1Qd2XW2gGOLiS7x7tSG7tE0Ig
         nbjUDb9UZLRk0/RmyVz4qLxK51+5x1q3vjZqjhNZNvDnd0f6ItFXABZD9A1xbdDClR05
         vH76xGIcDrWEyzxdwAAg1zK1Q8EU/50YyEO+q4RFdUlFNjSr3h8pKkmYpT3Ik5FRgzdE
         xZQImQC1kETVqLMrGjBo2Yzeiqd1FsKg3pneLmK+TA95Hk/km8a3oRgi95XgEq2tgetj
         5jsFoRBouYHTSDWreHEyUfHRazhoyumDcqJV6fZltCPjJAW+0cr9Dsnv222MeIo4uYtb
         svBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=JtyVpY5og/xGrjCRUOoJC3i0GDvWz/Ptq7r3Pe+MBH8=;
        b=lhi1Y1d++pDoe43bMD4pOPbST+zXBkyVhnOmBr5nHrfUH3n++ca/RpijTCUwc1OWye
         ecm2nGLYfKC92hnCkKXoY08tuRWzf6xxZG7mob2C5mbWEEV8ds0o0uLVl9ZrmppgC8wB
         XwJaeKd6fHu6EYqZybaNqjN/xOQlmj2dq+lWWwzu4jKc1Cp7sZRz0gWeNQN2g5tcK1bi
         aZcpX9L+lILTABKcwaRiNOya+fXGZWmXoievn2aQcIKXsX3LvD5JmHqKXkle93FHWqxc
         IPMTNrSoP7Or4UePyzTtMzpr8hK4+P5HsdzCpixijOZvktlXubR6Q+2SeqV0T7LpbKPV
         DlEQ==
X-Gm-Message-State: APjAAAXzFqMPkXEo7ARoJnaGT8NnA8oqyF/tVFVW1xSXbkQuJhllkou8
	43Tn9ahZ1o/e3r4UCIMsGCUxT+wZqnegkaE/XJvXn8YGGZU=
X-Google-Smtp-Source: APXvYqzctvkPvEarEePZrl8BZGG7t/wonTWoFX9TB6qV+Kd+MsHiX7UmVK68uXMJViF8KFc8a5BtIPAr0ixIzOaWqvU=
X-Received: by 2002:ad4:4d94:: with SMTP id cv20mr19015085qvb.99.1580669742591;
 Sun, 02 Feb 2020 10:55:42 -0800 (PST)
MIME-Version: 1.0
References: <fXtW.1580596875003428513.iSVn@lists.yoctoproject.org>
In-Reply-To: <fXtW.1580596875003428513.iSVn@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 2 Feb 2020 10:55:14 -0800
Message-ID: <CAMKF1sqv8-_7=RtpDq9sxE6Oy4E0uZ13yY=xi76Y9ixieaF3ZA@mail.gmail.com>
Subject: Re: [poky] file utility killed (SIGSYS)
To: sven@svenschwermer.de
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 1, 2020 at 2:41 PM Sven via Lists.Yoctoproject.Org
<sven=3Dsvenschwermer.de@lists.yoctoproject.org> wrote:
>
> Hi,
> I noticed a regression after updating the file utility on my host system=
 to a version that has seccomp enabled. See https://git.archlinux.org/svnto=
git/packages.git/commit/trunk?h=3Dpackages/file&id=3Da52fa0a37bad1f4ab67a93=
4a4e0025e70aa1fd0e (I know that Arch is not officially supported). This lea=
ds to error messages that look as follows:
>
> Command '['file', '-b', '/home/sven/mys-dac/yocto/build/tmp/work/cortexa=
7t2hf-neon-poky-linux-gnueabi/initscripts/1.0-r155/package/etc/init.d/umoun=
tnfs.sh']' died with <Signals.SIGSYS: 31>.: Traceback (most recent call las=
t):
>   File "/home/sven/mys-dac/yocto/poky/meta/lib/oe/utils.py", line 276, i=
n run
>     ret =3D self._target(*self._args, **self._kwargs)
>   File "/home/sven/mys-dac/yocto/poky/meta/lib/oe/package.py", line 74, =
in is_elf
>     result =3D subprocess.check_output(["file", "-b", path], stderr=3Dsu=
bprocess.STDOUT).decode("utf-8")
>   File "/usr/lib/python3.8/subprocess.py", line 411, in check_output
>     return run(*popenargs, stdout=3DPIPE, timeout=3Dtimeout, check=3DTru=
e,
>   File "/usr/lib/python3.8/subprocess.py", line 512, in run
>     raise CalledProcessError(retcode, process.args,
> subprocess.CalledProcessError: Command '['file', '-b', '/home/sven/mys-d=
ac/yocto/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/initscripts/1.=
0-r155/package/etc/init.d/umountnfs.sh']' died with <Signals.SIGSYS: 31>.
>
> This error doesn't appear when running the file command from the host sy=
stem. The culprit is the LD_PRELOAD of libpseudo. As soon as libpseudo is l=
oaded, the file process is killed with SIGSYS by seccomp, see http://man7.o=
rg/linux/man-pages/man2/seccomp.2.html
> Downgrading to a file version that doesn't have seccomp enabled fixes th=
e issue.
>

Yeah, I think few other folks have also hit similar issue ( Tumbleweed
users too ),  its pseudo perhaps breaking the syscall
contract with the app.

Add
in /etc/pacman.conf
IgnorePkg   =3D file

I am living with this workaround until fixed.

> I am on the zeus branch. This happens on today's zeus HEAD (69cfd69410).
>
> Best regards,
> Sven
>=20

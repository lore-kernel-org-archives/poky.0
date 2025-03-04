Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 112EDC282D2
	for <webhook@archiver.kernel.org>; Tue,  4 Mar 2025 15:27:16 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.24487.1741102030619517457
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Mar 2025 07:27:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Nk6nhYQy;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7c0848d475cso735841485a.2
        for <poky@lists.yoctoproject.org>; Tue, 04 Mar 2025 07:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741102029; x=1741706829; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BuPrd6n5fnCQwRDGEUFpRznwOgqsp9dZ38X+HDZuzEc=;
        b=Nk6nhYQyhapstma70/FGqPpu3gj7sJKZOxCFD9MI3IRFn7Q4FV1+R9397mqaK4m5D0
         Z4avYPwmoLaaTI/MulnT9oNiqnZEtyn7XnXZUvE5XQEAEHdU/b5Fa0bHjd4btWJqhQta
         xwWRztSUHyyNY8HdjsONFrUCHBEmC9T2h6BESreiN/1tuFVrlgeH0DiCg2B4ZmTPX+Xr
         GvIuZMiYLTqlcZIHJDU504dwTds4Af6G+o5W4aufUGaFAn91blguDgb1F7T8bzr/bq8S
         PNyF7ZiwRnon6ZKRB64zR8zBBSmrCUfZe9nnXmQ1lSZOJ233CdzDHbTuUypRGUis/nOl
         b+qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741102029; x=1741706829;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BuPrd6n5fnCQwRDGEUFpRznwOgqsp9dZ38X+HDZuzEc=;
        b=qcubl2TmXcqgi22plAFrUN9DLA3eVtqRktO8fj/YkQX4g4sWvXbWpxOeWEQYA6bbtc
         x2Mr/HVovu2NHY86ETyjzVIkwJjnOT7KjlYbIzC0XwApjdXCFe7BOPblvLB3eUQu+PxU
         1YNZtKLTdTzdl4DwxiYMGefZfyVVhIjIviBJUSNSog3RIUOqtl587rvlJgjGDRo/Je6y
         yMV6GVHywk5ipe5edDFeWv7eBo6mXoQKgT3WTKEfrazliap8dsVm6iV+aI6KCZqtSZsq
         1MplKLUi1qaVCRlTYKxVBQkvW8BAKmudhtmarmrv/DwbQIMcOsj528MusV0O+y5RH2BO
         TnBQ==
X-Gm-Message-State: AOJu0Yz810FT2wjB8o6IHZvP5nW4TG1dZsP/xW/Ac3/c1aImyF87loBn
	o2NHgsGC8wekvU7++gQBXBBXorTEBBxvN2jz3N63OJpoL1OyfeWurvadJuCZ+IkJp/IuZAYGXTg
	0dOAG9icQnFRhvQgHS3YuCSWGVCEvH0jF
X-Gm-Gg: ASbGnct1Q0LY9lB03jN5VaI0ILPHECqgZYXd+NpWwWZBUPF7N74WH/AoYKXwQboJHVK
	/qpvfEYJIDl9HrYTTeC9J0E2W6HisMGQX95jjxakZpTuWfk0LcpeDAHpbApSS2r5oh5JPfVOxr1
	0RDQZLMPYqDjYxashCx0kn2d8DR6lWAwB/ImWUMr36Zsv4FBOc/gSuJsvVvHM8
X-Google-Smtp-Source: AGHT+IGbapFbD8D2UOG9ciMeQGMtXuc6IKyZKOUJ5Rb2c6EF7R433lSadfdtt6XcYX8TobL/RqO3F5wgGvVI/7a59hk=
X-Received: by 2002:a05:620a:460c:b0:7c0:a46d:fa92 with SMTP id
 af79cd13be357-7c39c4bebd1mr2335476885a.19.1741102029482; Tue, 04 Mar 2025
 07:27:09 -0800 (PST)
MIME-Version: 1.0
References: <npf1.1740865335355684020.Dc5N@lists.yoctoproject.org>
In-Reply-To: <npf1.1740865335355684020.Dc5N@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 4 Mar 2025 16:26:58 +0100
X-Gm-Features: AQ5f1JqzAHxR23CfcFYLzyPXYjzPQAeGD28pdlnj_oel1xkp5iSbvcSgmszYCfA
Message-ID: <CANNYZj8UTJwUsg=f1CsXYO8rjNUmdaTprwEZWaOfiyn9bfXAmQ@mail.gmail.com>
Subject: Re: [poky] Creating a hash of a password for my recipe to add a user
To: jdowd@slashdevslashnull.org
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Mar 2025 15:27:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13552

You probably need to study the logs for the recipe (in
${WORKDIR}/temp) to see what useradd command line actually looks like.
Possibly something gets mangled?

You can also experiment with this on the target (e.g add more users
and see if you can login as them).

Alex

On Sat, 1 Mar 2025 at 22:42, John via lists.yoctoproject.org
<jdowd=3Dslashdevslashnull.org@lists.yoctoproject.org> wrote:
>
> I tried the extrausers class and I didn't get any errors but I also got n=
o joy. Nothing was created on the target and I moved onto using the adduser=
 example from the meta-skeleton directories. I have joy now, the additional=
 user is created and I can see the user's home directory various entries re=
quired in all of the relevant files. yay!
>
> However I have this line in my recipe (ignore the underline):
>
>
> NEWGUY_PASSWORD =3D "\$6\$zap5cUSDzKQyKfmL\$g8RRKqDw8U9BlmQFO2GLDPvcGe5mW=
SnwhMtYbDeKpPEDULJ2yLUhI6oHP4xq/p7fbE2SftFy4bvPd.ZsHVS55."
>
>
> I then have this to set the parameters for the added user:
>
>
> USERADD_PARAM:${PN} =3D " -d /home/newguy \
>                         -m \
>                         -G tty,audio \
>                         -p ${NEWGUY_PASSWORD} \
>                         -U newguy \
>                       "
>
> I can't login to the board using the password I created using the command=
:
>
> mkpasswd -m sha512crypt <yeah right... nice try>
>
>
> I escaped the character '$' as you can see and cut & pasted it to my reci=
pe file. When I boot the board, I can't login using those credentials (logi=
n via ssh). I then login via the root account and here is what I find in th=
e "/etc/shadow" file:
>
> newguy:/p7fbE2SftFy4bvPd.ZsHVS55.:15069:0:99999:7:::
>
>
> Now I presume the actual hash is the part that I've underlined and I gues=
s the rest is the SALT(?). Is there some other thing I have to do to the ha=
sh to make it usable by the login application?
>
> Thanks in advance for any advice.
>
> Cheers!!
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13548): https://lists.yoctoproject.org/g/poky/message=
/13548
> Mute This Topic: https://lists.yoctoproject.org/mt/111460955/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


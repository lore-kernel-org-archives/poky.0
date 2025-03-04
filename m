Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D2BC021B8
	for <webhook@archiver.kernel.org>; Tue,  4 Mar 2025 17:31:26 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web10.27857.1741109477557053211
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Mar 2025 09:31:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MoGeq0LQ;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-2bcbfad2f8cso2893883fac.1
        for <poky@lists.yoctoproject.org>; Tue, 04 Mar 2025 09:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741109477; x=1741714277; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sD5ixwErCOren+rlNoD3JwmlsC+20CtDXbaNlvu/7ak=;
        b=MoGeq0LQVLG+1OZFOgyFJuBXFP/arZY+cUAiFgEQAFBiNSu4l56AUpZqqJs18vQ7Mr
         GRlEah7G4HgBM6qt7yJ4HQyXuYgR9Tjy2ZCpEWNiHSHaiasn6aUljrqNGVSRAYqM4m28
         2M+UlHyF13hU4nKqZw0ZqmuC3hkCA+wcywzkrTppyC0hJJXv+bNWND/6opahfB+JnVCT
         oBCr5R2feavl3COX+B8s2KKwWUKdL3g5o9eJXQAZXJ9dnjRVkuQ2H1gOS8kZlWcSJDKS
         8mkyrVxjbULGwib88wjKPHaalmT2k+OHtWe2O31Ad74bP44WvF0TSZ+oVupcXCc+W0mV
         bfQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741109477; x=1741714277;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sD5ixwErCOren+rlNoD3JwmlsC+20CtDXbaNlvu/7ak=;
        b=PAFq3NiIlUkwSjeSxBx3M54d6fgoihYS6Xhn4JnUbwlj/BFU5bjyWQSwQpf8m5sXGF
         /QFi3rI4X/vc46w0FMN1COrY/R+1dH3jTXZU4EDtwVKMO+tlIsQlfOARyvWnITy70+CE
         pgqdjgx02KyA/k1G0zcUnRtnNor2Ne2P18CBdpkBKTdauyBRcCcvnMn1WgNEFj8grNd8
         oJuo/m1Q8fYDC4lurwQGULrLuSDDwMzsZGQyQSfEt8mSeCkQZ5L8lB0eANhM1UHEJhic
         a8mskUA0AiJBLz5YfU6Zf1PBDN3xPY9fVSqlNlgdhA7N2nYDzMAkGWh1hbNz+pS0Y8TO
         aI3A==
X-Gm-Message-State: AOJu0YzAWC0Z6kNTGQzV4fjMAVj2PoiujS1LZZM0WdX5jE0M00ozIQw4
	j8oR+tIZ/cAr1ej2B7hFvt//X8Q8BzMZ6kknOzkPonavULf0nZ8ObCbjUPuiGWQfvtPJp7CfeId
	J1Xv9lVPmEaLMkNtDU2Xg2RZZJmrSiqtwlKM=
X-Gm-Gg: ASbGncsL6G9laVt7mUsUzctoufe/KU5x6RJZDS/WuZpKgeIE2Fu7w/ofCMmvFj+8+bq
	jiEzmuS5tJfAKxU3LJYrgCko/e4jUo6m8HtxrotG7fcrPtLFCboqWozdHRTYg2rMQRKGcrbTGtM
	8Y0FoJLbKVJ670ErJleyFBXwsM2MR42J6PyJ6mSgwBIF1EIK0uGlXfCn5w
X-Google-Smtp-Source: AGHT+IHGeWmPdYhGWXDqNyghRP4xDOB+buFBlR0SyURpVm6c+iE3s1G7lx2Wa26rEp3CLtk2U5UiAds6kiH/ITcdjEQ=
X-Received: by 2002:a05:6870:6b96:b0:2c1:ade0:26a0 with SMTP id
 586e51a60fabf-2c1ade033ecmr7152541fac.10.1741109476645; Tue, 04 Mar 2025
 09:31:16 -0800 (PST)
MIME-Version: 1.0
References: <npf1.1740865335355684020.Dc5N@lists.yoctoproject.org>
In-Reply-To: <npf1.1740865335355684020.Dc5N@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Mar 2025 12:30:49 -0500
X-Gm-Features: AQ5f1Jq04OkorHdHduuf4gCCnC_WmI30P58hTK2VDSkI1P7Pm_BDSmhjjXUdmFQ
Message-ID: <CAMKF1so0mv6XRO8oU15LVmFW4=oOi7mCQMgcO2NFS0kskeHO6g@mail.gmail.com>
Subject: Re: [poky] Creating a hash of a password for my recipe to add a user
To: jdowd@slashdevslashnull.org
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Mar 2025 17:31:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13556

see

https://github.com/YoeDistro/yoe-distro/blob/master/sources/meta-yoe/recipe=
s-core/images/yoe-simple-image.bb#L37-L50

On Sat, Mar 1, 2025 at 4:42=E2=80=AFPM John via lists.yoctoproject.org
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
> Mute This Topic: https://lists.yoctoproject.org/mt/111460955/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


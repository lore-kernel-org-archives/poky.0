Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C3CC30658
	for <webhook@archiver.kernel.org>; Fri,  5 Jul 2024 08:08:36 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.12599.1720166906058352196
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Jul 2024 01:08:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fBx6RBxg;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52e9944764fso1624890e87.3
        for <poky@lists.yoctoproject.org>; Fri, 05 Jul 2024 01:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720166904; x=1720771704; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xLczAhOrrcnAH9ybUghx8D3PWXBjsc5WZ1nJACnDxb0=;
        b=fBx6RBxgJRAtICP/5buWl4hV5BK5+0caFp8ehvEJh+DqMQjAN5ioQiaunK1XFYA/uk
         3sWkZmNIvr3F0/650TDsIqwpa8if9Dq16IGs5Aa70PK9ZQd4sA6gsVwBej/LvvZofqMR
         b+vrHQ8xnWc58V7G+pM9skD8Xryqr2XqdaKihreE7J6SNbU90B8FeLKvnUj210iAImJ/
         cXYLBlRxwDw1j/aYoIZwv5EWGfg1OTEPJ7ThqXbJ0jt22fJdqBAlrDBMf9wsmneJR9lX
         xpYogjUlRbPv0tRQ8eIqYwAAbC2IpXZztQTwo53SADnJcUPvlBp9OICrym0bx4jC/R9v
         II1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720166904; x=1720771704;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xLczAhOrrcnAH9ybUghx8D3PWXBjsc5WZ1nJACnDxb0=;
        b=TiZ8xy6ox0ipY09TO8etaI3bS4SprHTHXhauxTlgILEoM+bG0Tk5oCXrJczwSTDTOo
         p9tXbENbaYLoGqJVKKvUnN+sHRvvRKKJD15GzIKB4+nztJ3xQ2QRkX+zyDxrul21LtUe
         HI5cL6Mu1FgGziqGBGMrKhJwVyKm5dcWzN3Nv3clQN6BLuZbc2TCilX109MeBWezEirh
         /1GR723Lg8rW4hMHQKY2BL5s+iyTQA7fa9+OBPYcaAwgOxqPETBRzUeL8q+9ZoGh8dth
         rOH8AWEjJtgJQ9cKnI8YpCEAWuDgQInGr6t6B7/zCyoy/v1GYyV5cbrbd2ckmjmWTaOv
         hLpg==
X-Gm-Message-State: AOJu0Yx7iv8vmfu6OotmUeIvWUY2lBRpQe8Mpqzm1aedYncuSYrmEdNe
	IlWN45SRTOk1u0lHKNw79/ocbXdBr8LR6Z3fusI8vWqREF9OLAA9l8xJwPjrwsILdnVb2/bv9nn
	PY0bImQFxR13TuE0HPts2impZdcw=
X-Google-Smtp-Source: AGHT+IHiGh0/F2ihkxmKKZ2PXbG1yFZ+H0oPZUs3T+W37qmjw6NmjRfOd8sOL7xyDmkks+eXCOkPQwa1rpZcvcQw4Uk=
X-Received: by 2002:ac2:5eda:0:b0:52c:9e51:c3f with SMTP id
 2adb3069b0e04-52ea06b85a9mr2514892e87.42.1720166903302; Fri, 05 Jul 2024
 01:08:23 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-g32zPpD_eQHgpfgQnpV-6HnPUeD-9OHH4j=n9afdMhg@mail.gmail.com>
 <3010.1720166328001833441@lists.yoctoproject.org>
In-Reply-To: <3010.1720166328001833441@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 5 Jul 2024 10:08:11 +0200
Message-ID: <CANNYZj_-hX-LCvZmOgzJXhsaX1F9TRJExij5fL9gQu0YAJ4sDw@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 05 Jul 2024 08:08:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13409

Here's an idea. How about adding (or extending) one of the tests in
selftest/cases/overlayfs.py? I see there's plenty of examples there
with /etc mounted that way (there's a whole class for it), and it
might be a simple tweak to check for postinst as well.

Alex

On Fri, 5 Jul 2024 at 09:58, Gassner, Tobias.ext via
lists.yoctoproject.org
<Tobias.Gassner.ext=3Dkarlstorz.com@lists.yoctoproject.org> wrote:
>
> I digged a bit into the hanging issue by starting-up poky outside the tes=
t environment, but with the same configuration (rpm, no systemd, read-only-=
rootfs and read-only-rootfs-delayed-postinsts set, plus my first patch). Af=
ter the kernel boot log messages I get the following (for testing purposes =
I use opkg-keyrings, as it provides a pkg_postinst_ontarget task):
>
> Configuring packages on first boot....
>  (This may take several minutes. Please do not power off the machine.)
> Running postinst /etc/rpm-postinsts/100-opkg-keyrings...
> rm: remove '/etc/rpm-postinsts/100-opkg-keyrings'?
>
> Since I have to type 'yes' into the console and press enter to continue t=
he test execution hangs on that line.
>
> The behavior (and hence the log messages) at that point are determined by=
 the following script: https://git.openembedded.org/openembedded-core/tree/=
meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts
>
> When I apply the following patch
>
> From c144a7dcad403f41dd33b4429fe6481188512bb0 Mon Sep 17 00:00:00 2001
> From: "Gassner, Tobias.ext" <tobias.gassner.ext@karlstorz.com>
> Date: Fri, 5 Jul 2024 09:51:25 +0200
> Subject: [PATCH] adding force to remove postinst on target script
>
> Signed-off-by: Gassner, Tobias.ext <tobias.gassner.ext@karlstorz.com>
> ---
>  meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/recipes-devtools/run-postinsts/run-postinsts/run-postin=
sts b/meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts
> index 1f3e692029..7f197bf89b 100755
> --- a/meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts
> +++ b/meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts
> @@ -68,7 +68,7 @@ exec_postinst_scriptlets() {
>          [ "$POSTINST_LOGGING" =3D "1" ] && eval echo "Running postinst $=
i..." $append_log
>          if [ -x $i ]; then
>              (sh -c $i $append_log)
> -            rm $i
> +            rm -f $i
>          else
>              echo "ERROR: postinst $i failed."
>              [ "$POSTINST_LOGGING" =3D "1" ] && eval echo "ERROR: postins=
t $i failed." $append_log
> --
> 2.45.2
>
> I get the following output, and the test executes without hanging for rpm=
:
>
> Configuring packages on first boot....
>  (This may take several minutes. Please do not power off the machine.)
> Running postinst /etc/rpm-postinsts/100-opkg-keyrings...
> rm: can't remove '/etc/rpm-postinsts/100-opkg-keyrings': Read-only file s=
ystem
> update-rc.d: /etc/init.d/run-postinsts exists during rc.d purge (continui=
ng)
>  Removing any system startup links for run-postinsts ...
>   /etc/rcS.d/S99run-postinsts
> rm: can't remove '/etc/rcS.d/S99run-postinsts': Read-only file system
>
> Note: Since overlayFS is not configured for this test, the postinst ontar=
get script file cannot be removed, but this is expected. This specific test=
 does not rely on the fact that the file can be removed so the test passes.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13408): https://lists.yoctoproject.org/g/poky/message=
/13408
> Mute This Topic: https://lists.yoctoproject.org/mt/106869018/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C78F99360
	for <webhook@archiver.kernel.org>; Thu, 23 Apr 2026 09:35:53 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15755.1776936948364878956
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Apr 2026 02:35:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=gVoC5JIU;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8f0a87e23daso121659885a.1
        for <poky@lists.yoctoproject.org>; Thu, 23 Apr 2026 02:35:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776936947; cv=none;
        d=google.com; s=arc-20240605;
        b=dt11tOtHgSyptyQHnetC9AywKBvB7BpL/YkRJqgr7tI4fmx/khAcTkkJUaOXKixNax
         03P+IWxRzvWBEsuDEESlZI0SxN3Bvsb5wJez4OXX0w2KlsGiEDggd8TLTInVbxIRsljq
         gukE35cJgV2VNxO2B7Rhcp8xbUpf8wbJbJwoo4Rk8Cby049BzKQI8NYnCCrQR+V3ZbuT
         gSkxkkf9aNpruH0D9xBtsqTt+wrncdTSxKNCX7BcH3Aq04zcf2pBk+Q86FHffqZiCG4t
         GCN1+xhLhsdJgUBwsGKQ8oQWWB8b4kmVfag6ZwNqj/RNv1b/4PnjIYEES5MTYd9VtQlf
         R5Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ii+WZ96l7R981vDfaiO140/NyLK7ahbCUOZDaNSMMK8=;
        fh=l72yueyB99PNpHfbi8smftIqVo+OdKAxOBDWH1AI86M=;
        b=k3j6rylz51yePl56QLhTyZ1gQJCC0DiLJBAFTRUwIawmdnQzFKwivoV1ovXTnluZ9w
         /YGiJx693vQNZmi4j2/AxPG9HIH845uPHnl4m+jYukS6Rn3RNeHwtuwey+eLYutrp7CA
         tIAipBO7r+pqVG4b09SdMfCsYeWagE3sof0FpxIiYKYWlpL/IMtOgHAfMGbeOJWjraFn
         fraLXX9kTrojta9eQmitutrOwxh1Io3wH8+yfyn4uzFGnqP6tD5MQxgnUV1BMk8e3DBu
         6ruLH264rP/LPJub5W90btAC9IZ688YkBkWSYaew0SHp7CPye76cisELTkABqxzRb1Mw
         3syg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776936947; x=1777541747; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ii+WZ96l7R981vDfaiO140/NyLK7ahbCUOZDaNSMMK8=;
        b=gVoC5JIUA1H8eOY4Mq4T3JZGuzfpYKjAaH8XyuzCX2BmPXRoDBFt2Z18k50v9i1LI8
         0tX8KcahNJejTr/7U65vpnVuVziKFdSAbsxNewC6cm/hrvaZA5+ICtga+WLn4B4Mjedg
         sk6hUEOgyg/5Uh/LiGxiGgko8sO75G8dm2zDGpNOvXRy4OxCPqnllOamDOGEIDeEIZjp
         d9mDQ7Ui3V12+l0S2Ewfx1NWoE+WfeL2Ytzx+RPcFtvfdIn0ko4YLi5EGZdVvWFoPfZU
         v0YwwTdlJVgKMAJSrYGVkxqT72ZxZp/QVcTGR5iIhF9OSFka1xEtNPSkHdpco/uGRwLe
         sC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776936947; x=1777541747;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ii+WZ96l7R981vDfaiO140/NyLK7ahbCUOZDaNSMMK8=;
        b=ju9IIgB2SWVrGknvlP3FeHfrWg5riyFvngNW2dXorBBw4TjVWVv/gPvyRNI8FBmgAX
         5cv2JBv8bauba1IUE+9uULIcIIdgDzarLqtAwOZUeNw70ldj6k2VJvpzzsNZTxXmypBz
         xr2wvtU76midjfrr7lgREYExcBGdL9DgsPr0w8eUp1H9b6uZcKfjoqKhJtabgKYMUREU
         vP1rFnCD8glgy/cgdolTz+EZ8vv/bVt2qmBVJIFphjvJ2WM8JZigSOK7ouPlH3dOIR9A
         WbVGnHz7BU5qFBAQ30v9SNSIZ4gaGRBZU8NWs+HaM9qxeUHKB9+uPkkijBFBx0QRcmq9
         VwJA==
X-Gm-Message-State: AOJu0YxX/i2OAnMcgN2BatO6wbnRDMxwegu4YJX1C7Zpjj8cSofFYfNU
	Ej0ZaRLtc4oIM2/nggW0o24jmp8Mzg32YkFS4hnslVK4vDLsshOwAm5QDS86HeV7ZVvsH+DkJiv
	tvmp3hwfe9lkod1JgVKgXLkbiYpndhVQ=
X-Gm-Gg: AeBDiesac3g01El4TYf5yAU9XRYuoKtmSklHGl2w4SAiYPWGMTLQlJh3kgOn+t7FE0R
	XUu6uxB6D7P3yN89zdjQXQj1NCQ6ftiwO4UOAmDa1sLRr9RqAuuZU8sgcoAoGsxLu8aJQgejvdD
	T6oGhrVUUvEEEguDqQ0zgtYZu9giOQ2hrxvKAaA1y7cTdocY0idgXDpoQllxMqaLhn1XcC7PWww
	fnIzbbs+r22j0Df50BCAHoOpTaJwoD+9pK3rCE68ENbiV/l2QbKZ6t9CHU9XhEymeWSB2s+/CgG
	mtxRPYp1pwZbEkRCZ3quENBMVP65MJUHgwVxNUbXB8g8gYHKl6rc
X-Received: by 2002:a05:620a:4409:b0:8ef:3de6:c5a9 with SMTP id
 af79cd13be357-8ef3de6c9c5mr1364975485a.47.1776936947357; Thu, 23 Apr 2026
 02:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <d63R.1776892621156872677.1gEq@lists.yoctoproject.org>
In-Reply-To: <d63R.1776892621156872677.1gEq@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 Apr 2026 11:35:36 +0200
X-Gm-Features: AQROBzDwG-FjC-AUgucaSZtIaYyq4wlAgBI00IO1snSboMXQZzfo-Zo3xbSyeXM
Message-ID: <CANNYZj8BV8XxrCpoZWUM_qr+sca+XoWPcTriw7esDMNpgnWgSQ@mail.gmail.com>
Subject: Re: [poky] Installing a third-party package
To: rustyhowell@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 23 Apr 2026 09:35:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13914

Yocto is not Debian, and the runtime environment does not provide
exactly same packages at the same versions. You can set the packaging
backed to .deb, that does not in any way make the resulting
distribution compatible with Debian.

You need to convince the vendor to build their code using yocto, with
a yocto recipe. Or have them deliver the source code, and build it
yourself with a recipe.

Alex

On Wed, 22 Apr 2026 at 23:17, Rusty Howell via lists.yoctoproject.org
<rustyhowell=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> I could use some help with the scenario I have.   We have a 3rd-party ven=
dor that has provided us with a debian package for us to include in our OS =
image.  The vendor maintains the package feed and provides updates periodic=
ally.  I need to find a way to get the their package installed into our OS =
image.  Not just extracted into, but installed with dpkg metadata and every=
thing.   Using bin_package works... kinda. It leaves out some things like p=
ostinst and the versioning can change. Is there another way to incorporate =
a third-party package that would be closer to installing the package on fir=
st boot?  Thanks in advance.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13912): https://lists.yoctoproject.org/g/poky/message=
/13912
> Mute This Topic: https://lists.yoctoproject.org/mt/118962603/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


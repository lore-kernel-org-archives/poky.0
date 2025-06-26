Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5000CC7115B
	for <webhook@archiver.kernel.org>; Thu, 26 Jun 2025 08:14:41 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web11.3391.1750925677280723697
 for <poky@lists.yoctoproject.org>;
 Thu, 26 Jun 2025 01:14:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BLEHbxe4;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7d41cd4114aso121775085a.2
        for <poky@lists.yoctoproject.org>; Thu, 26 Jun 2025 01:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750925676; x=1751530476; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wYlei9Z0wUNDbUZklPRtQbGCIiF/A3dUqDX1Pi7XgEo=;
        b=BLEHbxe4EOYZECGRAjtKEt5VGysjqtU75XlKoCmynduPJuyicCaxQkKprE5DgorALl
         CbUK66Ae5yVf9D2T3pP0A9G4N4SJpde6e3NHkjqxoGwPrrHgOqr8bzDi28M5w0EUwDW0
         VDo4LdM7vvnNBO4FMsPVDT19mkaZ4ZdMUE848qFDxvTaUUN0QciilK+dQu0OMgjqgObN
         wQczHqcDnAHGmh9ZdabopuRNQpV3wTSapNEiMfeqdsbtcJ2mObGFHT8PKIUW3mQS3Mk0
         ekdp2I0RDYv2uCMsk31hMhwTgKXVTzfuDW4J80E9iC5R3RVQuGW4ex1ZjWj067Eue6nS
         36aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750925676; x=1751530476;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wYlei9Z0wUNDbUZklPRtQbGCIiF/A3dUqDX1Pi7XgEo=;
        b=H28D5VYvKBE/NMZVZMd4ajpimPsvzSyj5SamYK4c1/6t16LfFJWW2tFmyeAzHpbrqw
         ghMPVbG21k6X7/D3dtr3jzAQdbg1THeERrD8j2ey5YzBxsCjzVPDM7HWq41M0UcG1XJw
         47/WR+KUas6vVLnGFZWWwyW7X07YNaQ2v6YxayUNkXGJd7JP1yZgmghXD8dipGdLTt71
         cLfjtUaN6VTyu60IzvFyksgZBUuY//0ltiftRRXbZTWi5Vf+VyJ/4aXaDZy+fiOJ3Y+y
         eTehHfWdWMixrnYTbx4GbeAqrqLyJxsvt/0hGoJCUEZGBmXzkgNvoikoD5O6HWjmJIdy
         RA+w==
X-Gm-Message-State: AOJu0Yz8gXHOTEjBFQ8ewmbWVjAdB/lQMJNB1o89eq/qHHJ0z+eb0Aim
	ahHTpfPIkA5DR/x6Yh+JWmAHNUw38wLrTDnpuP35rl9PB3z+nj+piICOvf8/+jGlsddJwfQSJZ5
	EhVBLovaQhh+MhUyWHBKSiabxC+A02UY=
X-Gm-Gg: ASbGncvLyNnXBsPUVCEYECw7irPt6gb4RYXrY9M/ZgLvpHcijaTUHj7JRqJQckqJ/W8
	PvIHxFy3pAqMrWEo50L8nyMoqOJ3GoHSUZpqffSoO5rJw+uhxHiFNrgX8OsgNavpEYUxHprWl1Z
	8TazfJnCDufpOYCcac/YqGAjLWN1GpnOOn0FYClzbib2B7VrcmlHy1NhfX+MSpxq3/LU4a+/Aj5
	I1xzw==
X-Google-Smtp-Source: AGHT+IEetVZFJAHHzzjuVVm7Cx+rMyrOPHiRd2p9yNMDbtfZMzF9JB29DUbNQUPk0Nk+nsHDF1C0Frirc9TxTYdY1so=
X-Received: by 2002:a05:620a:1903:b0:7d4:295c:884c with SMTP id
 af79cd13be357-7d4296ca085mr930916085a.7.1750925676020; Thu, 26 Jun 2025
 01:14:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250626062056.GA143806@kernel.org> <12949.1750925170754106856@lists.yoctoproject.org>
In-Reply-To: <12949.1750925170754106856@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 26 Jun 2025 10:14:25 +0200
X-Gm-Features: Ac12FXxi8b-PkTiPZybD9EbFrO-ZkjhZAQpgYWkzG3SaaxBQThn_MtWOFs16f3U
Message-ID: <CANNYZj8M_O4afyuDt5a1WR_TbCU1QKVHXVWRLx0bRuBGkSvhxg@mail.gmail.com>
Subject: Re: [poky] Generate Scarthgap genericx86-64 machine booting pcbios
To: sebastian.krahl@lacon.de
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 26 Jun 2025 08:14:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13683

TBH, I would try one of the MACHINEs in meta-intel. Genericx86-64
lacks many important pieces.

Alex

On Thu, 26 Jun 2025 at 10:06, Sebastian via lists.yoctoproject.org
<sebastian.krahl=3Dlacon.de@lists.yoctoproject.org> wrote:
>
> I've tried the approach with the camera as there is no way of getting the=
 serial port to the target. Also the footage is from my old PC as the VGA-L=
ink from the target is to slow to display something useful on the screen. I=
'm testing with an USB-Stick as boot media but also tested via SATA drive s=
o I would exclude a missing driver as a root cause.
>
> I hope somebody can find the relevant message in the boot log.
>
> Regards,
>
> Sebastian
>
> The following attachments were removed because the message exceeded 15MB.=
 Attachments are automatically removed for messages larger than 15MB to ens=
ure delivery.
>
> VID_20250626_093819466.mp4: https://lists.yoctoproject.org/g/poky/sattach=
ment/3945602771410806765/254200256/0/78547d21db49a8a9eaa6d2d722eaac8ca25886=
36b026f89f9f5056ecc07132ea
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13682): https://lists.yoctoproject.org/g/poky/message=
/13682
> Mute This Topic: https://lists.yoctoproject.org/mt/113825829/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


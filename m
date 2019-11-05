Return-Path: <matt@madison.systems>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90DA6E00AE6; Tue,  5 Nov 2019 06:53:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA0E5E00AE6
	for <poky@yoctoproject.org>; Tue,  5 Nov 2019 06:53:31 -0800 (PST)
Received: by mail-lj1-f169.google.com with SMTP id v8so6529194ljh.5
	for <poky@yoctoproject.org>; Tue, 05 Nov 2019 06:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=madison-systems.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=S4Cm7EkBkpsLspmNNIp1iJMBbYvlQF8igPsCy47XVOQ=;
	b=EbXKplOaveHdH9WlMP0kuj5XP3c2vG6yVHk58FrB+TTy/vQ1tZyNXqLY2w3fa/NxIH
	A0iaJqLBQJ9U5YdxqprYc85n434rID1/sO4fppFb/7QPNkh1wzXdFvr+7MA/nv6y74O/
	Hb5B/u4AMzd1XGje2ktoxm8OZjXmnHCPdFMaWmpKsDBBO60wVlhEyglT+pcsl9uXZFwu
	jvGOFS/FVnuv0iT77DlkrxFYCCn7aa3zI7hin+pJ1UwjUC5c3w9llxAizH1Wq1CDm5uN
	7eRDB+Bqe+PUSVdA5NrF1rb/zjertcZWDa/UHsw36vzZWFfDnzm541FfNKXDGprjisr8
	n2cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=S4Cm7EkBkpsLspmNNIp1iJMBbYvlQF8igPsCy47XVOQ=;
	b=TsSI54wTvWARiJ4RxirfWkq5cyjnVNZdZSbU2EdsXPeBEMyu4uf33A6fmQ+A5TzpnH
	WCwhq0ZYUQoYnG7lujJOwwAVxu+3ElmM4MHvNbz4Ijyv4xASxUoh8kMoFu4pu/Jrzp7x
	eRa5NrvTnPKCGzvXeSt1qtfKFzo5PkXXxW1DWa8JgPjwXo1+BYQD5SsdytuMWMJY6Lq7
	jt+/WnvvwfRXh3QYn2uxj7dGzNWi0g1uFwBlLHWbZLAfFX6A1Pw+HGZmrWZB5Xip+bR7
	Y/8tNKFeJ0yUf53P6xoOZqPJhene/BWkjAxMmUCPVd3gNzEwxnF4oQOejKE7NoIDsnOe
	HbGg==
X-Gm-Message-State: APjAAAWNILa1PkEVEDJZNrxUVx+GK2g68B2p15EFVgjFqjYh8bWFOg7J
	+FssF2qqNAeXqLuMKPmlwtlHoq2BgTxsj+pcuLJF1n3Vllgrug==
X-Google-Smtp-Source: APXvYqyYSD4hS+VsBTOFVr9He9qV/pI7WR/0iFIWlcMtKpQlSsjucnAfvKf6J9THYyEvlctlVrb3un2ij0p1GekdPoA=
X-Received: by 2002:a05:651c:120c:: with SMTP id
	i12mr17440777lja.123.1572965610461; 
	Tue, 05 Nov 2019 06:53:30 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR01MB5657A2CFB4DFC8F0E4AC7B1A9A600@DM6PR01MB5657.prod.exchangelabs.com>
In-Reply-To: <DM6PR01MB5657A2CFB4DFC8F0E4AC7B1A9A600@DM6PR01MB5657.prod.exchangelabs.com>
From: Matt Madison <matt@madison.systems>
Date: Tue, 5 Nov 2019 06:53:19 -0800
Message-ID: <CAGgRHJoe7VAnb=ViguGpVtyiD28wFaHU1VC6-Hxh-xtZOKGcmg@mail.gmail.com>
To: Daniel Wang <Daniel.Wang@intusurg.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: FitImage cause dependency loop
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 05 Nov 2019 14:53:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Daniel,

This is a problem in meta-tegra.  I've fixed it in master, but will
need to back-port that change to the warrior branch.  Open an issue at
https://github.com/madisongh/meta-tegra/issues and that will remind me
to take care of it.

Regards,
-Matt

On Wed, Oct 30, 2019 at 12:10 PM Daniel Wang <Daniel.Wang@intusurg.com> wro=
te:
>
> Hi there,
>
>
>
> I got a question hope some of you can give me an advice. I=E2=80=99m usin=
g Yocto Warrior and meta-tegra to build my distro. I want to enable verifie=
d boot so I added the following settings.
>
>
>
> KERNEL_CLASSES ?=3D =E2=80=9C kernel-fitimage =E2=80=9D
>
> KERNEL_IMAGETYPES_append =3D =E2=80=9C fitImage=E2=80=9D
>
> UBOOT_SIGN_KEYDIR =3D =E2=80=9C${TOPDIR}/conf=E2=80=9D
>
> UBOOT_SIGN_KEYNAME =3D =E2=80=9Cdev=E2=80=9D
>
> UBOOT_MKIMAGE_DTCOPTS =3D =E2=80=9C-I dts -O dtb -p 2000=E2=80=9D
>
> UBOOT_SIGN_ENABLE  =3D =E2=80=9C1=E2=80=9D
>
>
>
> Everything works well without those setting. But as soon as I added those=
 ones Yocto reports a dependency loop (more than 10 matches). Have any of y=
ou encountered this issue before how can I fix it? Thank you so much!
>
>
>
> Thanks
>
> -Daniel
>
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


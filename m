Return-Path: <kiran.bobbu@gmail.com>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 927E4E00406
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 23:36:36 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id ef5so37406obb.9
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 23:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=w7Ke5ipNXcfMIoOLTYfjoLqxqBxsVzgMHk1fynYuU/8=;
	b=x3Xna3sHW0ygkW4EQkVua7wiXzHSh+Wo8S1VNwPXvrfWxeCNv65/D2gRmkYTD31BlV
	uBkMxdch0QQWy/j+cQf7ilmTmAsPvPC9Z4k8BfenbgA3sCI1TzRtYZSVKnvfYb3D4gkw
	QxBNdLDI+DY+53c8g77Qw3V/BdTOVXsi73eoyHLi7Ro5uBA7S6TGxn3ELiiLok8s1yDg
	/3s9TVQBxGOQaph0bZU757e2CSznrEgDSdvy+JH3Ev1lqO3AWVY7O/OZ0RtdhAjNnBGW
	9U9OSHZ00/5UBebjD61pjLbduSVSo5dmUiabo/TRWfayZWOPPvS/sFtC18OTFAHZShLa
	zAjA==
MIME-Version: 1.0
X-Received: by 10.60.16.104 with SMTP id f8mr6099821oed.71.1377066995895; Tue,
	20 Aug 2013 23:36:35 -0700 (PDT)
Received: by 10.182.183.99 with HTTP; Tue, 20 Aug 2013 23:36:35 -0700 (PDT)
Date: Wed, 21 Aug 2013 12:06:35 +0530
Message-ID: <CAO7jpqdyR8nX_Ku3P3nX2Nw+V0MgL-HD2pmViZU99sNh7wRajw@mail.gmail.com>
From: kiran bobbu <kiran.bobbu@gmail.com>
To: poky@yoctoproject.org
Subject: how to replace gcc-cross with custom prebuilt toolchain
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
X-List-Received-Date: Wed, 21 Aug 2013 06:36:38 -0000
Content-Type: multipart/alternative; boundary=089e014946401f872b04e46f65b2

--089e014946401f872b04e46f65b2
Content-Type: text/plain; charset=ISO-8859-1

Hi,

i want to replace gcc-cross compiler that comes from poky project with my
prebuilt binaries to build the target rootfs with bitbake.
bitbake must use my prebuilt gcc toolchain rather than default.
how to do this.
-- 

-Kiran

--089e014946401f872b04e46f65b2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><br clear=3D"all"></div>Hi,<br><br></d=
iv>i want to replace gcc-cross compiler that comes from poky project with m=
y prebuilt binaries to build the target rootfs with bitbake.<br></div>bitba=
ke must use my prebuilt gcc toolchain rather than default.<br>
</div>how to do this.<br><div><div><div><div>-- <br><br>-Kiran<br>
</div></div></div></div></div>

--089e014946401f872b04e46f65b2--

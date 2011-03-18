Return-Path: <vsailub4u@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB8D94C8009D
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 07:43:58 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyj12 with SMTP id 12so5287392iyj.35
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 05:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=SaG3ZFNTuAtqRmaH8nRKmoepgvBx6ppv/RhKXFMrhY4=;
	b=ILMqsABWOj+qHtLZsiWLqFlSCUGf9+R8HCv8RTe3Ytw8nooY0D5uv58pI8FRLeFqco
	FasWgkcGmzOxv91lkb3tyEKi2Vf/msUpw40u3qYmv1LKBrQ9jn57C3AOKR0TAa78DI3c
	TnxT/bP+ldurQQzoo8MkLB2NuMX71wUJ09924=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=JxHMvIeJOE8e6UA3bz2G8k4caazr5hfteMvYEC4UrcyfxeWpIhydcX34lq1V2l/byg
	Z0boFyHaTYCUIf6+90QkZ5ROlKJ86HaxgSeVx8OHKIcTn1RUx3OQQBaCOINDZ90HEFCi
	yyMMdf+6YN0JXpjFcB//EsK+OXzLdJy0iqqaI=
MIME-Version: 1.0
Received: by 10.231.17.136 with SMTP id s8mr923754iba.80.1300452228128; Fri,
	18 Mar 2011 05:43:48 -0700 (PDT)
Received: by 10.231.8.102 with HTTP; Fri, 18 Mar 2011 05:43:48 -0700 (PDT)
Date: Fri, 18 Mar 2011 18:13:48 +0530
Message-ID: <AANLkTikkueH+A1300qnaa+=Zj926i6x38OtUeObk=Aft@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: There are no i965_dri.so and swrast_dri.so in the File system
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Mar 2011 12:43:59 -0000
Content-Type: multipart/alternative; boundary=0022152d7e1b1ae107049ec12181

--0022152d7e1b1ae107049ec12181
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I pulled the *mesa* into poky.
*mesa provides glu,gl, inter_dri and i965_dri , swrast_dri*
These i965_dri.so and swarst_dri.so are present in the sysroots i.e., *
poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/dri*

I am trying to mount the filesystem   *
poky-image-minimal-atom-pc-20110318115927.rootfs.ext3* which is
under*build/tmp/deploy/images
*

But the dri folder is created under the filesystem and these * i965_dri.so
and swarst_dri.so files are not there*.

Please anyone help me in resolving this  problem???
 dri is not created, why???
please...



-- 
Thanks & Regards,
SAI

--0022152d7e1b1ae107049ec12181
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I pulled the <b>mesa</b> into poky.<br><b>mesa provides glu,gl, =
inter_dri and i965_dri , swrast_dri</b><br>These i965_dri.so and swarst_dri=
.so are present in the sysroots i.e., <b>poky-chrome/build/tmp/sysroots/cor=
e2-poky-linux/usr/lib/dri</b><br>
<br>I am trying to mount the filesystem=A0=A0 <b>poky-image-minimal-atom-pc=
-20110318115927.rootfs.ext3</b> which is under<b> build/tmp/deploy/images</=
b><br><br>But the dri folder is created under the filesystem and these=A0<b=
>  i965_dri.so and swarst_dri.so files are not there</b>.<br>
<br>Please anyone help me in resolving this=A0 problem???<br>=A0dri is not =
created, why???<br>please...<br><br><br><br>-- <br>Thanks &amp; Regards,<br=
>SAI<br><br>

--0022152d7e1b1ae107049ec12181--

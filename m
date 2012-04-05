Return-Path: <kergoth@gmail.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2B20E00746;
	Wed,  4 Apr 2012 20:24:19 -0700 (PDT)
Received: by qabg1 with SMTP id g1so1065948qab.13
	for <multiple recipients>; Wed, 04 Apr 2012 20:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=WsG2KSgBN42hmn+iiFuSPykMIg+T7EWGr8OYAA+XBHA=;
	b=b0uK8sF6r1ATbYhOKA1b0mMus+zstxxuE0otRJ20o+ZXnObln3KdmN+WWzL99ieAw4
	duM70oOZgxaNhlfCGnaYiMpf2vi0ZOGTWE7SgUkgPiRJUwsYkLMRBcOXBXINKTPCGeFN
	H81fLCfiM3FqJwW1qp167DQfGrrppBiiF5lwGhyI6TyOJweXg/JMxYLaUaN53JWcr8aE
	FfOEJQDCJq7rbVZNozFKVWpNNtKVi7SiDXiq7sEatgH5YAxQywi88dOCuWBMDhQ4w3Kr
	3kQeXnaxsPEgbQ32xhRdpoHB/wzuhG0CJkIlO5miIa1/GjtnAiOv8g30fbQOnsFVgZLR
	4ZzA==
Received: by 10.224.215.10 with SMTP id hc10mr2025692qab.28.1333596259210;
	Wed, 04 Apr 2012 20:24:19 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.79.79 with HTTP; Wed, 4 Apr 2012 20:23:59 -0700 (PDT)
In-Reply-To: <7E29EF69110C17499E6B3A9844CD4FD913425078@szxeml526-mbx.china.huawei.com>
References: <7E29EF69110C17499E6B3A9844CD4FD913425078@szxeml526-mbx.china.huawei.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 4 Apr 2012 20:23:59 -0700
X-Google-Sender-Auth: LuznTfhQasjSyj1eyb9HkqsmVdE
Message-ID: <CABcZANnUUTNpsuYEqJniUMcL+aWFS2rNEJLCuXR-9Ewkmk5Xmw@mail.gmail.com>
To: "Wangdawei (Sivan)" <sivan.wang@huawei.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: The problem of using the external toolchain
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
X-List-Received-Date: Thu, 05 Apr 2012 03:24:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 4, 2012 at 8:15 PM, Wangdawei (Sivan) <sivan.wang@huawei.com> w=
rote:
> =C2=A0Did anyone help me to resolve this problem , it block me a long tim=
e ,Thank you very much
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0I have a toolchain that is big endian ARM, so =
I want to use the toolchain with the binary, not the source code , can we h=
ave some method to finish this work in yocto ? I still have no clue about t=
his .
> =C2=A0 =C2=A0 =C2=A0 =C2=A0I have done the below steps:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01.modify MACHINE=
=3Dqemux86 to MACHINE=3Dqemuarm
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02.modify the file =
" external-csl-toolchain_2008q3-72.bb" add a line " SRC_URI =3D "file://gcc=
-4.4.1.tar.bz2"", the gcc-4.4.1.tar.bz2 is the source code of the arm big e=
ndian toolchain
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03.then I face the =
some problem like this website "https://lists.yoctoproject.org/pipermail/po=
ky/2011-February/003809.html" =C2=A0,then I add a line " LIC_FILES_CHKSUM =
=3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f30=
2"" ,in file =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0external-csl-toolchain_2008q3-72.bb to fix t=
his problem
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04.now I got the be=
low log :


I assume this is with the edison branch?
--=20
Christopher Larson


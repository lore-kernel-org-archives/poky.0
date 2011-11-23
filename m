Return-Path: <d.moussaud@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C987EE006BA
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 01:22:35 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk10 with SMTP id 10so988806qyk.35
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 01:22:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=A7Q4xnvw3zHbUx46gO+MzXFkMppEkioRS4O29XJQ9m0=;
	b=Ip4y4REDS9iurk1WFj/St48QJ5y4zv9KdvOpHT467u55NoPotwuGlvOi3DFU6dZKGV
	QJVwptxPhPJq3LQCOalX+FNHygw5KH84uzBTTKP8x68Ie1M5iJfKjyvDYvnyXcOzuWRF
	AlXaun1MWClp8vPY7Bz6JgJg4s786cbdeqo3E=
Received: by 10.229.61.99 with SMTP id s35mr2510560qch.229.1322040153759; Wed,
	23 Nov 2011 01:22:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.212.82 with HTTP; Wed, 23 Nov 2011 01:22:12 -0800 (PST)
From: David MOUSSAUD <d.moussaud@gmail.com>
Date: Wed, 23 Nov 2011 10:22:12 +0100
Message-ID: <CAEx4ggfUfvgnoGvFZkkqARk5VGs4HiVGLJSkgxWbaqVyqEgCeg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: "ONLINE" package-management
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
X-List-Received-Date: Wed, 23 Nov 2011 09:22:36 -0000
Content-Type: multipart/alternative; boundary=001485f7d07abe617b04b26375a8

--001485f7d07abe617b04b26375a8
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm migrating my projects from old OE to poky.
I used to set the variable ONLINE_PACKAGE_MANAGEMENT = "full" in my image
file.
The impact was that some scripts were executed at the first start of my
rootfs (create user for openssh, dbus, ....)

I could not find the equivalent for poky/yocto.

I've set the IMAGE_FEATURES += "package-management" in the file
core-image-minimal.bb but it does not have any  impact on the rootfs
generated.

Best Regards,
David.

--001485f7d07abe617b04b26375a8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,=A0<div><br></div><div>I&#39;m migrating my projects from old OE to poky=
.</div><div>I used to set the variable=A0ONLINE_PACKAGE_MANAGEMENT =3D &quo=
t;full&quot; in my image file.</div><div>The impact was that some scripts w=
ere executed at the first start of my rootfs (create user for openssh, dbus=
, ....)</div>

<div><br></div><div>I could not find the equivalent for poky/yocto.</div><d=
iv><br></div><div>I&#39;ve set the=A0IMAGE_FEATURES +=3D &quot;package-mana=
gement&quot; in the file <a href=3D"http://core-image-minimal.bb">core-imag=
e-minimal.bb</a> but it does not have any =A0impact on the rootfs generated=
.</div>

<div><br></div><div>Best Regards,</div><div>David.</div><meta http-equiv=3D=
"content-type" content=3D"text/html; charset=3Dutf-8">

--001485f7d07abe617b04b26375a8--

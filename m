Return-Path: <jkv@unixcluster.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F881E00799; Thu, 16 Oct 2014 02:14:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3A57E006EF
	for <poky@yoctoproject.org>; Thu, 16 Oct 2014 02:14:34 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id hi2so825565wib.5
	for <poky@yoctoproject.org>; Thu, 16 Oct 2014 02:14:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=p+NbM2iWvsAbOB3FO3uugX6NF6ZAqQhYh1cm8PGTQ9A=;
	b=ig/OYTgO8MFotkqxvVgGYWpLjgQcHiRWJEZhd0cnWHxnUFjXBXVC+PCSlA4kD0i15D
	4Wdi8B33GCJodr8AGF4tIn5DTpPsfEQDjUw67XbNsh0dls/DIO3UpNih+atfCbHu5AdR
	ZqsVO/hIefmZXjZlCo5Ine93F/kjFAw4wtout4ewjO7xoW5rFDFnjEFLHvhy9OF2+2A9
	32Am8yWvGLVg7iCbP9BsxhAN2N2huOSAHTnx701H+GYJ+KJR3+YdDwqv3NxWfZvyewOi
	ur5jO3KiXE/JoL4LXoVV+dwDsBFZSPxurwUQQE34/iWzginXiqc2W31+z2NJd2cpqcKC
	cRNw==
X-Gm-Message-State: ALoCoQnar8KhvXpzBO0rtpJh3hAREzDr/zOSnoNy5LrgPpTUT2z/lB5z/f6SDjux7PCzXrWKawzb
MIME-Version: 1.0
X-Received: by 10.194.209.180 with SMTP id mn20mr19358566wjc.49.1413450873777; 
	Thu, 16 Oct 2014 02:14:33 -0700 (PDT)
Received: by 10.217.93.197 with HTTP; Thu, 16 Oct 2014 02:14:33 -0700 (PDT)
X-Originating-IP: [217.130.241.93]
Date: Thu, 16 Oct 2014 10:14:33 +0100
Message-ID: <CAO+iiFydzxEy6qkW15eD2R036T=DYhL7J+G5yzGem9cSP9AFqA@mail.gmail.com>
From: Johnny Vestergaard <jkv@unixcluster.dk>
To: poky@yoctoproject.org
Subject: read-only rootfs and additional fs
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
X-List-Received-Date: Thu, 16 Oct 2014 09:14:39 -0000
Content-Type: multipart/alternative; boundary=047d7b3a833c3d682a050586ad62

--047d7b3a833c3d682a050586ad62
Content-Type: text/plain; charset=UTF-8

Hi,

I have used "root-only-rootfs" for my build of the poky reference image -
but i would like to mount an additional fs with write permission to enable
saving a few config files that is configurable by the end-user. How would i
do that with poky?

In essence my question can be boiled down to:
How do i create and add a additional filesystem to the image?

regards,
Johnny

--047d7b3a833c3d682a050586ad62
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have used &quot;root-only-rootfs&=
quot; for my build of the poky reference image - but i would like to mount =
an additional fs with write permission to enable saving a few config files =
that is configurable by the end-user. How would i do that with poky?</div><=
div><br></div><div>In essence my question can be boiled down to:</div><div>=
How do i create and add a additional filesystem to the image?</div><div><br=
></div><div>regards,</div><div>Johnny=C2=A0</div><div><br></div><div><br></=
div></div>

--047d7b3a833c3d682a050586ad62--

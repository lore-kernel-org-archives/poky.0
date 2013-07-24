Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C12CFE01525
	for <poky@yoctoproject.org>; Wed, 24 Jul 2013 00:02:14 -0700 (PDT)
Received: by mail-pd0-f181.google.com with SMTP id 14so44452pdj.26
	for <poky@yoctoproject.org>; Wed, 24 Jul 2013 00:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=KJ3UZYuR2+CTVZDo8xBtXl0rbAx9EZ+CWiylpewQQsQ=;
	b=jKK0BNmEbHnwCKGHi7EUkQHPWNpH4uoG6cPQvvlzkzKJP5/QVdq4h1mRxGiV1z1PjD
	06fM1DFLo/Daw8PK4wXs104RxBlTM6vWbH6/F3ksg7OH+5Ne/ur+75tCYVwTwbiMV7rn
	ya/IROsfDb6pGUZIIiKaOko0AVmojzaANd8VVIk6IigeS8eJI7qBSICjhFGICeLsijLG
	/rl8iWM70e/0n6Kq+eD3QOtcV0GR69oYoqxBuJxSF/cj04Q5OqLF64HE5vlFdiOQXtC8
	OeDHVv5yvwgQJ+255GyBTtYMBw4GFj2ZipUYT35TO73kYKWjPeqm5hsXwLAGA4r5Rnui
	aFJw==
X-Received: by 10.68.13.132 with SMTP id h4mr3367917pbc.99.1374649334010;
	Wed, 24 Jul 2013 00:02:14 -0700 (PDT)
Received: from ddeviny-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	ot4sm49637743pac.17.2013.07.24.00.02.12 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 24 Jul 2013 00:02:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <51EF7AD7.7080009@cn.fujitsu.com>
Date: Wed, 24 Jul 2013 00:02:11 -0700
Message-Id: <EDC7964C-6C92-49D1-BA30-4CE95F5578A3@gmail.com>
References: <51EF7AD7.7080009@cn.fujitsu.com>
To: Bian Naimeng <biannm@cn.fujitsu.com>
X-Mailer: Apple Mail (2.1508)
Cc: poky@yoctoproject.org
Subject: Re: Why we release yocto on different branch
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
X-List-Received-Date: Wed, 24 Jul 2013 07:02:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 23, 2013, at 11:57 PM, Bian Naimeng <biannm@cn.fujitsu.com> =
wrote:

> Hi all,
>=20
> Why we release yocto on different branch?

These branches are from same trunk which we call master in git terms.

>=20
> Yocto Project 1.2: denzil
> Yocto Project 1.3: danny
> Yocto Project 1.4: dylan
>=20

yes denzil danny and dylan and so on are codenames for branches on which =
releases are made.

> Some questions.
> 1. Do we always create a new branch to release the next Yocto Project?

yes

> 2. If so, which branch/commit the new branch start from?

There is master branch and when the time comes the next release branch =
is spawned from master=20

> 3. What's the relation between these branch?

These are release branches cut from master at some point in time.

>=20
> Thanks,
> bian
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



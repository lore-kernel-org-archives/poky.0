Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0720B4C801BF
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 09:44:37 -0500 (CDT)
Received: by wwf4 with SMTP id 4so4180610wwf.11
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 07:44:36 -0700 (PDT)
Received: by 10.216.60.207 with SMTP id u57mr3740944wec.89.1311605076464;
	Mon, 25 Jul 2011 07:44:36 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id r48sm3458350weq.2.2011.07.25.07.44.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 25 Jul 2011 07:44:35 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <2273c01d6547d6d1eb5b8a60dd061c5d3722856d.1311603837.git.paul.eggleton@linux.intel.com>
Date: Mon, 25 Jul 2011 16:44:32 +0200
Message-Id: <4ADD3708-C485-47E1-9BD6-B4839E5E8151@dominion.thruhere.net>
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
	<2273c01d6547d6d1eb5b8a60dd061c5d3722856d.1311603837.git.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1244.3)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 6/6] meta-yocto/conf/local.conf.sample: add rm_work example
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
X-List-Received-Date: Mon, 25 Jul 2011 14:44:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 25 jul. 2011, om 16:28 heeft Paul Eggleton het volgende geschreven:

> rm-work can save a lot of disk space and will be useful to a lot of
> users, so add a comment explaining what it is for and why it's off by
> default.
>=20
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
> meta-yocto/conf/local.conf.sample |    6 ++++++
> 1 files changed, 6 insertions(+), 0 deletions(-)
>=20
> diff --git a/meta-yocto/conf/local.conf.sample =
b/meta-yocto/conf/local.conf.sample
> index 6498bb4..1977e07 100644
> --- a/meta-yocto/conf/local.conf.sample
> +++ b/meta-yocto/conf/local.conf.sample
> @@ -139,3 +139,9 @@ NO32LIBS =3D "1"
>=20
> # Uncomment this if your host distribution provides the help2man tool.
> #ASSUME_PROVIDED +=3D "help2man-native"
> +
> +# Uncomment this to delete work files as the build progresses rather =
than
> +# keeping them around, which saves a lot of disk space. However, if =
any
> +# problems arise it can be useful to have the work files to examine, =
which
> +# is why it is off by default.
> +#INHERIT +=3D "rm_work"

That implies that you expect problems to happen by default :)=


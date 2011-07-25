Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id E08F34C801BF
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 09:54:27 -0500 (CDT)
Received: by wwg11 with SMTP id 11so1545341wwg.5
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 07:54:26 -0700 (PDT)
Received: by 10.227.164.14 with SMTP id c14mr2180102wby.101.1311605666616;
	Mon, 25 Jul 2011 07:54:26 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id fe4sm4391407wbb.11.2011.07.25.07.54.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 25 Jul 2011 07:54:25 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <201107251549.07198.paul.eggleton@linux.intel.com>
Date: Mon, 25 Jul 2011 16:54:18 +0200
Message-Id: <9776A668-1465-4114-BAAF-F97645744D9C@dominion.thruhere.net>
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
	<2273c01d6547d6d1eb5b8a60dd061c5d3722856d.1311603837.git.paul.eggleton@linux.intel.com>
	<4ADD3708-C485-47E1-9BD6-B4839E5E8151@dominion.thruhere.net>
	<201107251549.07198.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Mon, 25 Jul 2011 14:54:28 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


Op 25 jul. 2011, om 16:49 heeft Paul Eggleton het volgende geschreven:

> On Monday 25 July 2011 15:44:32 Koen Kooi wrote:
>> Op 25 jul. 2011, om 16:28 heeft Paul Eggleton het volgende =
geschreven:
>>> +# Uncomment this to delete work files as the build progresses =
rather
>>> than +# keeping them around, which saves a lot of disk space. =
However,
>>> if any +# problems arise it can be useful to have the work files to
>>> examine, which +# is why it is off by default.
>>> +#INHERIT +=3D "rm_work"
>>=20
>> That implies that you expect problems to happen by default :)
>=20
> It does say "if" ;)  I'm happy to take suggestions on an alternative=20=

> comment=85

I'd argue that people can turn it off if they encounter issues. And if =
the issue is a build failure, rm_work hasn't run on the f(l)ailing =
recipe anyway.=


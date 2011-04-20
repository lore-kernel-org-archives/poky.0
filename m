Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id B23884C80581
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 06:31:29 -0500 (CDT)
Received: by wwd20 with SMTP id 20so721443wwd.11
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 04:31:28 -0700 (PDT)
Received: by 10.216.123.74 with SMTP id u52mr7020082weh.24.1303299088413;
	Wed, 20 Apr 2011 04:31:28 -0700 (PDT)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id c54sm403677wer.30.2011.04.20.04.31.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 20 Apr 2011 04:31:28 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <3f93d8eda4dc873d1c732ccc297782779f7116f6.1303296533.git.paul.eggleton@linux.intel.com>
Date: Wed, 20 Apr 2011 13:31:27 +0200
Message-Id: <55494E8C-B846-41B8-B7D1-91779015006C@dominion.thruhere.net>
References: <cover.1303296533.git.paul.eggleton@linux.intel.com>
	<3f93d8eda4dc873d1c732ccc297782779f7116f6.1303296533.git.paul.eggleton@linux.intel.com>
To: poky <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.1084)
Subject: Re: [PATCH 1/1] netbase: automatically bring up usb0 on BeagleBoard xM
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
X-List-Received-Date: Wed, 20 Apr 2011 11:31:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 20 apr 2011, om 12:52 heeft Paul Eggleton het volgende geschreven:

> From: Paul Eggleton <paul.eggleton@linux.intel.com>
>=20
> Avoids manual configuration of the BeagleBoard xM's ethernet port
> (which shows up as usb0).
>=20
> Fixes [YOCTO #930]
>=20
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
> .../netbase/netbase-4.45/beagleboard/interfaces    |   27 =
++++++++++++++++++++
> .../recipes-core/netbase/netbase_4.45.bbappend     |    3 ++
> 2 files changed, 30 insertions(+), 0 deletions(-)
> create mode 100644 =
meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces
> create mode 100644 =
meta-yocto/recipes-core/netbase/netbase_4.45.bbappend

You mean meta-texasinstruments, right? Or do you yocto people really =
want to take over beagleboard?=


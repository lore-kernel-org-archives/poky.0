Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDC174C81110
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 06:17:45 -0600 (CST)
Received: by wwb31 with SMTP id 31so583116wwb.11
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 04:17:44 -0800 (PST)
Received: by 10.227.161.13 with SMTP id p13mr2219181wbx.164.1295525864496;
	Thu, 20 Jan 2011 04:17:44 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	j49sm4206202wer.14.2011.01.20.04.17.41
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 20 Jan 2011 04:17:41 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <201101201206.14081.paul.eggleton@linux.intel.com>
Date: Thu, 20 Jan 2011 13:17:39 +0100
Message-Id: <CF53CD96-5C74-4422-B442-2837C6325B9A@dominion.thruhere.net>
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
	<201101191251.41864.paul.eggleton@linux.intel.com>
	<F6BAAAE9-5327-4555-9957-64DCCA436B8C@dominion.thruhere.net>
	<201101201206.14081.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] Add meta-toolchain-qte from OE
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
X-List-Received-Date: Thu, 20 Jan 2011 12:17:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 20 jan 2011, om 13:06 heeft Paul Eggleton het volgende geschreven:

> Koen,
>=20
> Some questions relating to qt4 in meta-openembedded:
>=20
> * I notice qt4.inc specifies -embedded in the configure command line =
and then=20
> qt4-x11-free adds -no-embedded. Is it really a good idea to be =
specifying -
> embedded and -no-embedded at the same time?

That's a leftover, and should be safe to eliminate. We do need to =
specify -embedded in qt4-tools to avoid some extra build deps.


> * Do we need to pull in sqlite 2.x? I assume you have some specific =
use=20
> cases... ?

I personally do not know of any, but I didn't want to loose features at =
this point. I'm OK dropping it from QT, but other software in OE sadly =
hasn't caught the sqlite3 train yet, so having sqlite2 in a layer =
somewhere is unavoidable.

regards,

Koen=


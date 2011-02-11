Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF9DA4C8007E
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 10:15:38 -0600 (CST)
Received: by wwi17 with SMTP id 17so4318170wwi.5
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 08:15:37 -0800 (PST)
Received: by 10.216.25.136 with SMTP id z8mr607415wez.93.1297440933809;
	Fri, 11 Feb 2011 08:15:33 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id o19sm397854wee.26.2011.02.11.08.15.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Feb 2011 08:15:33 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <cover.1297438842.git.mark.hatle@windriver.com>
Date: Fri, 11 Feb 2011 17:15:31 +0100
Message-Id: <58483E57-FA87-4779-8E6A-07B3BA8A2675@dominion.thruhere.net>
References: <cover.1297438842.git.mark.hatle@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] Revised the debug info patches...
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
X-List-Received-Date: Fri, 11 Feb 2011 16:15:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 11 feb 2011, om 16:44 heeft Mark Hatle het volgende geschreven:

> After talking with Richard a bit, I've revised the configuration of =
the
> debug info, patch 2 of 4.  1, 3 and 4 remain unchanged.
>=20
> The primary difference is to change the naming from "debian style", =
and
> "fedora style" to a more accurate representation based on the GDB
> documentation and usage I recently found.  In addition to the simple
> name changing, the source code copying is now defined for both styles
> and simply places the code in /usr/src/debug.

Is there a bbclass planned to populate /usr/src(/debug)? It would help =
people wanting to do external rebuilds of our (patched) sources.

regards,

Koen=


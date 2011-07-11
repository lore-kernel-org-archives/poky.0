Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F1D64C80A4F
	for <poky@yoctoproject.org>; Mon, 11 Jul 2011 10:15:36 -0500 (CDT)
Received: by wyg34 with SMTP id 34so857054wyg.35
	for <poky@yoctoproject.org>; Mon, 11 Jul 2011 08:15:36 -0700 (PDT)
Received: by 10.216.56.15 with SMTP id l15mr3108055wec.105.1310397335447;
	Mon, 11 Jul 2011 08:15:35 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id w8sm7017814wec.0.2011.07.11.08.15.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Jul 2011 08:15:32 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E1B0423.9080403@mlbassoc.com>
Date: Mon, 11 Jul 2011 17:15:26 +0200
Message-Id: <3DD1D86E-30CF-46AD-8E13-D10D63562FC3@dominion.thruhere.net>
References: <4E1B0423.9080403@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1084)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Web browser on ARM?
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
X-List-Received-Date: Mon, 11 Jul 2011 15:15:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 11 jul 2011, om 16:09 heeft Gary Thomas het volgende geschreven:

> Is there a working web browser for ARM based targets on Poky/Yocto?
> The only one I find is web-webkit and it currently does not build
> on ARM platforms.

Meta-oe has midori and epiphany, but you'd need the patch to update =
webkit I sent today to stop them from crashing on non-simple sites.=


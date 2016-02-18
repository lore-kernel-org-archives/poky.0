Return-Path: <holger@freyther.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25AA8E00807; Thu, 18 Feb 2016 11:34:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0006]
X-Greylist: delayed 454 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Feb 2016 11:34:23 PST
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de [5.9.72.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7EA5E00443
	for <poky@yoctoproject.org>; Thu, 18 Feb 2016 11:34:23 -0800 (PST)
Received: from [10.0.1.3] (ip5b41fb99.dynamic.kabel-deutschland.de
	[91.65.251.153])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 253A96CBCE
	for <poky@yoctoproject.org>; Thu, 18 Feb 2016 19:26:48 +0000 (UTC)
From: Holger Freyther <holger@freyther.de>
Message-Id: <D5AD4B0B-5FA1-4286-AFFB-F5579CFA2768@freyther.de>
Date: Thu, 18 Feb 2016 20:26:47 +0100
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
Subject: Binfmt installation fails after recent systemd change
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
X-List-Received-Date: Thu, 18 Feb 2016 19:34:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

it looks like 6be3031dd4c90c476f25e593a8f203c6258b17e9 is the first bad =
commit of systemd for our config:

PACKAGECONFIG_pn-systemd =3D "ldconfig"

error log:

| ERROR: Function failed: SYSTEMD_SERVICE_systemd-binfmt value =
systemd-binfmt.service does not exist
NOTE: recipe systemd-1_228+gitAUTOINC+dd050decb6-r0: task do_package: =
Failed

adding binfmt does seem to fix it. Anyone feels like fixing that?

kind regards
	holger=


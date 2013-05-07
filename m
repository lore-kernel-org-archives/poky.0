Return-Path: <Stefan.Eichenberger@netmodule.com>
Received: from wolf.netmodule.com (wolf.netmodule.com [194.29.26.243])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A35EE013D0
	for <poky@yoctoproject.org>; Tue,  7 May 2013 04:39:16 -0700 (PDT)
Received: from 194-29-26-246.static.cablecom.ch ([194.29.26.246]
	helo=gila.netmodule.intranet)
	by wolf.netmodule.com with esmtp id 1UZgGf-0005gs-BH
	for poky@yoctoproject.org; Tue, 07 May 2013 13:41:13 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 7 May 2013 13:39:09 +0200
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Apt-get complains about volatile paths
Thread-Index: Ac5LF3oBtMTnb2fNTfilQTQZkkyiEg==
From: "Stefan Eichenberger" <Stefan.Eichenberger@netmodule.com>
To: <poky@yoctoproject.org>
Message-Id: <1UZgGf-0005gs-BH@wolf.netmodule.com>
Subject: Apt-get complains about volatile paths
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
X-List-Received-Date: Tue, 07 May 2013 11:39:17 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We are using apt in one of our project to exchange the actual packages
between the developers, so that updates can easily be installed. I've
noticed that there is a problem with /var/cache/apt/archives/partial and
/var/lib/apt/list/partial, because they are volatile, apt complains
about the path which is not available (e.g. Could not open lock file
/var/lib/apt/lists/lock - open (2 No such file or directory)).

I have two possible solutions for this problem, one is to make
/var/cache and /var/lib permanent, but what I saw in some discussions
before, this isn't a favorite solution. What I'm currently doing is to
create the directories on each start with an init.d script, if this is
an acceptable solution I can send a patch for that. The problem is that
then the package information are lost at each reboot (Isn't a problem in
our use case). Does someone have another solution/idea how to solve this
problem?

Regards,
Stefan


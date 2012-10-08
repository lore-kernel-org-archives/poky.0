Return-Path: <eric@eukrea.com>
Received: from mo5.mail-out.ovh.net (9.mo5.mail-out.ovh.net [178.32.96.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52F26E01275
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 01:25:03 -0700 (PDT)
Received: from mail188.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo5.mail-out.ovh.net (Postfix) with SMTP id 89F7FFF9E18
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 10:31:22 +0200 (CEST)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 8 Oct 2012 10:24:56 +0200
Received: from pac33-2-82-240-38-71.fbx.proxad.net (HELO eb-e6520)
	(eric%eukrea.com@82.240.38.71)
	by ns0.ovh.net with SMTP; 8 Oct 2012 10:24:55 +0200
Date: Mon, 8 Oct 2012 10:24:55 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Ovh-Mailout: 178.32.228.5 (mo5.mail-out.ovh.net)
Message-ID: <20121008102455.02a03cd3@eb-e6520>
In-Reply-To: <af84c18279bdf7c2c7f5ee5d5e88f7ce666f3a29.1349666145.git.bruce.ashfield@windriver.com>
References: <cover.1349666145.git.bruce.ashfield@windriver.com>
	<af84c18279bdf7c2c7f5ee5d5e88f7ce666f3a29.1349666145.git.bruce.ashfield@windriver.com>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.8.1 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 10220637880906853703
X-Ovh-Remote: 82.240.38.71 (pac33-2-82-240-38-71.fbx.proxad.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehuddrudefucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucfjughrpeffhffvuffkjghfohfogggtgfesthhqredtredtud
X-Spam-Check: DONE|U 0.5/N
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeehuddrudefucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfhrhhomhepgfhrihgtuceurohnrghrugcuoegvrhhitgesvghukhhrvggrrdgtohhmqeenucfjughrpeffhffvuffkjghfohfogggtgfesthhqredtredtud
Cc: mark.asselstine@windriver.com, poky@yoctoproject.org
Subject: Re: [PATCH 1/1] linux-yocto-bsps: update hardware reference BSPs to v3.4.11
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
X-List-Received-Date: Mon, 08 Oct 2012 08:25:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

Le Sun,  7 Oct 2012 23:41:31 -0400,
Bruce Ashfield <bruce.ashfield@windriver.com> a =E9crit :

> The hardware reference BSPs are missing the update to 3.4.11
> that the qemu* machines received several weeks ago.
>=20
> Bumping to 3.4.11 specifically addresses the segfaults being
> seen with rpm on the beagleboard.
>=20
3.4.13 is out maybe worth to directly update to the latest stable ?

Best regards,
Eric


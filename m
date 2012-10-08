Return-Path: <eric@eukrea.com>
Received: from mo5.mail-out.ovh.net (10.mo5.mail-out.ovh.net [46.105.52.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F14EE01275
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 02:29:40 -0700 (PDT)
Received: from mail188.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo5.mail-out.ovh.net (Postfix) with SMTP id 1F8D9FF9709
	for <poky@yoctoproject.org>; Mon,  8 Oct 2012 11:35:58 +0200 (CEST)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 8 Oct 2012 11:29:33 +0200
Received: from pac33-2-82-240-38-71.fbx.proxad.net (HELO eb-e6520)
	(eric%eukrea.com@82.240.38.71)
	by ns0.ovh.net with SMTP; 8 Oct 2012 11:29:32 +0200
Date: Mon, 8 Oct 2012 11:29:31 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Ovh-Mailout: 178.32.228.5 (mo5.mail-out.ovh.net)
Message-ID: <20121008112931.6098d3dc@eb-e6520>
In-Reply-To: <1349688232.15658.104.camel@ted>
References: <cover.1349666145.git.bruce.ashfield@windriver.com>
	<af84c18279bdf7c2c7f5ee5d5e88f7ce666f3a29.1349666145.git.bruce.ashfield@windriver.com>
	<20121008102455.02a03cd3@eb-e6520> <1349688232.15658.104.camel@ted>
Organization: =?ISO-8859-1?B?RXVrculh?= Electromatique
X-Mailer: Claws Mail 3.8.1 (GTK+ 2.24.8; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
X-Ovh-Tracer-Id: 11311916364435795346
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
X-List-Received-Date: Mon, 08 Oct 2012 09:29:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Le Mon, 08 Oct 2012 10:23:52 +0100,
Richard Purdie <richard.purdie@linuxfoundation.org> a =E9crit :

> On Mon, 2012-10-08 at 10:24 +0200, Eric B=E9nard wrote:
> > Hi Bruce,
> >=20
> > Le Sun,  7 Oct 2012 23:41:31 -0400,
> > Bruce Ashfield <bruce.ashfield@windriver.com> a =E9crit :
> >=20
> > > The hardware reference BSPs are missing the update to 3.4.11
> > > that the qemu* machines received several weeks ago.
> > >=20
> > > Bumping to 3.4.11 specifically addresses the segfaults being
> > > seen with rpm on the beagleboard.
> > >=20
> > 3.4.13 is out maybe worth to directly update to the latest stable ?
>=20
> At this point, 3.4.11 has had some testing, we've not done any testing
> with 3.4.13.
>=20
> The trouble is we're due -rc4 tomorrow which is our final build for the
> release. I'm extremely reluctant to make *any* kernel changes at this
> point but it looks like this segfault issue is going to force my hand
> and I'm going to have to take the update.
>=20
> I'm already doing some mitigation type work of pretesting the builds in
> advance to try and ensure -rc4 is successful and we can take this
> change. Adding 3.4.13 into the mix sounds nice in theory but
> substantially increases the risk. Keep in mind this bug we're trying to
> fix crept in through the "stable" updates in the first place :(
>=20
that's right, upgrading to latest stable can be done in a later release.

Eric



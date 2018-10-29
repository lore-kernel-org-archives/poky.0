Return-Path: <cJ-poky@zougloub.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 052CAE00BBF; Mon, 29 Oct 2018 07:35:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FROM_EXCESS_BASE64,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from zougloub.eu (zougloub.eu [69.70.16.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2814AE00A1A
	for <poky@yoctoproject.org>; Mon, 29 Oct 2018 07:35:27 -0700 (PDT)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by zougloub.eu (Postfix) with ESMTPSA id DFEC41F71D0;
	Mon, 29 Oct 2018 10:27:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zougloub.eu;
	s=zougloub.eu; t=1540823232;
	bh=Zo9/YRxIs439UV9IeYCTBZSnCmlqCKVONwhmmkCl0wM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=dT10RMla4LkUewAoASlO9lWJ4t/CdHIhVRLvWPAzhTUiEqCOs8OPP76v7kdD9SIje
	1ynqF14f2Aus/8J0sHaHP/GPg643rUf+T52/twXAaG9LctV9NggiiD9D3jRAzD1Xfc
	+1LhLFTcvOkrWJhsVBN+a8CN97cWddnermB0oR4I=
Date: Mon, 29 Oct 2018 10:35:49 -0400
From: =?UTF-8?B?SsOpcsO0bWU=?= Carretero <cJ-poky@zougloub.eu>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20181029103549.50aadaf6@pouet.cJ>
In-Reply-To: <CAJTo0LbEJUddiO=oBoMRtNn1pd14uCTD8SC9YkbweeNr2ASA7g@mail.gmail.com>
References: <20181024230509.6c4551c5@pouet.cJ>
	<CAJTo0LbEJUddiO=oBoMRtNn1pd14uCTD8SC9YkbweeNr2ASA7g@mail.gmail.com>
X-Mailer: Claws Mail 3.17.0git74 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Alejandro Enedino Hernandez Samaniego
	<alejandro.enedino.hernandez-samaniego@xilinx.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] python3: manifest: add back missing sqlite3 __init__.py file
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
X-List-Received-Date: Mon, 29 Oct 2018 14:35:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,


Sorry I forgot to state that the patch is for Sumo; Rocko is fine and I
haven't checked for Thud or master (I suppose it's OK, there's a patch
from you that deals with sqlite3).


Regards,

--=20
J=C3=A9r=C3=B4me

On Mon, 29 Oct 2018 12:42:45 +0000
"Burton, Ross" <ross.burton@intel.com> wrote:

> Are you sure this is still needed?
>=20
> $ oe-pkgdata-util find-path */sqlite3/__init__.py
> python3-sqlite3: /usr/lib/python3.5/sqlite3/__init__.py
>=20
> Ross
> On Thu, 25 Oct 2018 at 04:13, J=C3=A9r=C3=B4me Carretero <cJ-poky@zouglou=
b.eu> wrote:
> >
> > __init__.py was missing since dc24e256a90d4baff117a744ae3677b2edbe9d83
> > (python3: Fix do_create_manifest for python3-sqlite3).
> > The usual `import sqlite3` was not producing the intended results.
> >
> > Signed-off-by: J=C3=A9r=C3=B4me Carretero <cJ@zougloub.eu>
> > ---
> >  meta/recipes-devtools/python/python3/python3-manifest.json | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/meta/recipes-devtools/python/python3/python3-manifest.json=
 b/meta/recipes-devtools/python/python3/python3-manifest.json
> > index 2491f36db2..df01822c80 100644
> > --- a/meta/recipes-devtools/python/python3/python3-manifest.json
> > +++ b/meta/recipes-devtools/python/python3/python3-manifest.json
> > @@ -983,6 +983,7 @@
> >          ],
> >          "files": [
> >              "${libdir}/python3.5/lib-dynload/_sqlite3.*.so",
> > +            "${libdir}/python3.5/sqlite3/__init__.py",
> >              "${libdir}/python3.5/sqlite3/dbapi2.py",
> >              "${libdir}/python3.5/sqlite3/dump.py"
> >          ],
> >
> > --
> > cJ
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky



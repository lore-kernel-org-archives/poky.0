Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82C95E00BC8; Mon, 29 Oct 2018 07:49:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69486E00BC2
	for <poky@yoctoproject.org>; Mon, 29 Oct 2018 07:49:03 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id f21-v6so4140513oig.1
	for <poky@yoctoproject.org>; Mon, 29 Oct 2018 07:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7S3nyWDB02Z6/YDrBIzH5TKR3KeZ5awAaSGtAy0Npbg=;
	b=X0IZ69BBvXCwBXCLxNoy/oX8cH9MDaktXsA+xY0nGCX3IfBeKUhKwBij7Kn8WkF9Oh
	WlSFZPRTZWtjt4oK1EAIZ+8UY0QE5Kh7yQglTGdMwO+enhNcsuP8/fJqyxi1+5Pz0Hih
	wcK3l/y845+MEvsIV2ztYR7VOjgxsN2OG2RfgJkOEr7FV8qanoltsFBYHdVxUgmwbOgl
	Lv2k+BRN/kuwN/gNR/3WTmf2YalL2n9HOY9DDjOf/gdiH2V+igeiktbs1VO9riEM8TMx
	bY3j8/o07B8NFlwkpYR4ka4pxxR+A0pmYgM2+yt97iluz5AG0iEZFR7iGpPS6ELjU0e9
	KERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7S3nyWDB02Z6/YDrBIzH5TKR3KeZ5awAaSGtAy0Npbg=;
	b=LQjeU8GuOU+wn47z/c0zKkwtcmC0MU7zArRsb/ZhKlbjHitzAhGuGy8+U3D6LN/B/p
	DGO6tGyh9cWZnxEP4cQC3Gqet0szkWWWl8l6DD4L0+I7N1LPa5amCd4WnSQPxV9iO55A
	GfNxyBRXFkkoPcAKgMUYdpzNGei4qlRFlh412Jz7X3XoYQVY2jfPJuQ5njYp11SSPKqe
	U1np1ivZJxvuSM+XRgNv15YRqP1LGLKouyR8o2OmVxkBTnwIXYga67RL/r2m6Kp3yWuo
	1szi9D9Qnng5LE1juQFOInTNJ4Re7HW7QDCvM6Xj6cnhhYofXZJjRd6zy+Hl/ZtZE61p
	uPwQ==
X-Gm-Message-State: AGRZ1gKcoKin+czN7QfjzrxmrrNKXbCTD0BOF3Iy7X2GNPpU88XqE8zs
	OJzhbg91vOAsxIOHq6xuh/lDs7mpuuyeeusU/IOu5N9p
X-Google-Smtp-Source: AJdET5fOQKwOVBy7V/He04TjjcpmH6JyiU7Yu8k2xgELZsEwQDiRMGRtODK6cTBwno6YbQTW4Z0CvRnLGZbSry6b31k=
X-Received: by 2002:aca:d00c:: with SMTP id
	h12-v6mr7289229oig.138.1540824542642; 
	Mon, 29 Oct 2018 07:49:02 -0700 (PDT)
MIME-Version: 1.0
References: <20181024230509.6c4551c5@pouet.cJ>
	<CAJTo0LbEJUddiO=oBoMRtNn1pd14uCTD8SC9YkbweeNr2ASA7g@mail.gmail.com>
	<20181029103549.50aadaf6@pouet.cJ>
In-Reply-To: <20181029103549.50aadaf6@pouet.cJ>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Oct 2018 14:48:51 +0000
Message-ID: <CAJTo0LYTrP8aamxOo9uGaZuKa18iB807SJ+ef421WMCC0K77Kw@mail.gmail.com>
To: cJ-poky@zougloub.eu, Armin Kuster <akuster808@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Oct 2018 14:49:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ah in that case, CCing Armin.

Ross
On Mon, 29 Oct 2018 at 14:35, J=C3=A9r=C3=B4me Carretero <cJ-poky@zougloub.=
eu> wrote:
>
> Hi,
>
>
> Sorry I forgot to state that the patch is for Sumo; Rocko is fine and I
> haven't checked for Thud or master (I suppose it's OK, there's a patch
> from you that deals with sqlite3).
>
>
> Regards,
>
> --
> J=C3=A9r=C3=B4me
>
> On Mon, 29 Oct 2018 12:42:45 +0000
> "Burton, Ross" <ross.burton@intel.com> wrote:
>
> > Are you sure this is still needed?
> >
> > $ oe-pkgdata-util find-path */sqlite3/__init__.py
> > python3-sqlite3: /usr/lib/python3.5/sqlite3/__init__.py
> >
> > Ross
> > On Thu, 25 Oct 2018 at 04:13, J=C3=A9r=C3=B4me Carretero <cJ-poky@zougl=
oub.eu> wrote:
> > >
> > > __init__.py was missing since dc24e256a90d4baff117a744ae3677b2edbe9d8=
3
> > > (python3: Fix do_create_manifest for python3-sqlite3).
> > > The usual `import sqlite3` was not producing the intended results.
> > >
> > > Signed-off-by: J=C3=A9r=C3=B4me Carretero <cJ@zougloub.eu>
> > > ---
> > >  meta/recipes-devtools/python/python3/python3-manifest.json | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/meta/recipes-devtools/python/python3/python3-manifest.js=
on b/meta/recipes-devtools/python/python3/python3-manifest.json
> > > index 2491f36db2..df01822c80 100644
> > > --- a/meta/recipes-devtools/python/python3/python3-manifest.json
> > > +++ b/meta/recipes-devtools/python/python3/python3-manifest.json
> > > @@ -983,6 +983,7 @@
> > >          ],
> > >          "files": [
> > >              "${libdir}/python3.5/lib-dynload/_sqlite3.*.so",
> > > +            "${libdir}/python3.5/sqlite3/__init__.py",
> > >              "${libdir}/python3.5/sqlite3/dbapi2.py",
> > >              "${libdir}/python3.5/sqlite3/dump.py"
> > >          ],
> > >
> > > --
> > > cJ
> > > --
> > > _______________________________________________
> > > poky mailing list
> > > poky@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/poky
>


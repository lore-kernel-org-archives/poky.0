Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE559E009AA; Mon, 29 Oct 2018 05:42:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.193 listed in list.dnswl.org]
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46CDBE00872
	for <poky@yoctoproject.org>; Mon, 29 Oct 2018 05:42:57 -0700 (PDT)
Received: by mail-oi1-f193.google.com with SMTP id v198-v6so4106196oif.2
	for <poky@yoctoproject.org>; Mon, 29 Oct 2018 05:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=9VzV0YkZbdRrLCRA4NiR4Cvlq85BUDDDDE1h7aI5BLM=;
	b=p3NYZIrNXmb79qFpAaqqBIQfm7SDezurU0yubw4Ds+ZkliaWYO5kkB6tUEF0zl/Qr7
	3cb3wFL3hipu0pY6gslgykiS7r3PZKFddH33uoahzrs+N62OZfbFQt0QXNRUTbP2Evyo
	1KWIcLEP8e6hGxgGSnqRukXk/aQ/qmoJx2uwIEJWmacov8/LLE8pzNdnhI0WVuyo6i4r
	/88tuxh8hYClwbXw3xUmZdoMbbfxowDG7bNU68Sirt9I7Q2YbJtSuPongazrdd5Pg0HT
	/byEgG9xBvLv36KFi9+cO0+6bPKRgafq1Q74h2myN5hzNgdjkk9hEufcwKCWcfVxJ8kA
	9gpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=9VzV0YkZbdRrLCRA4NiR4Cvlq85BUDDDDE1h7aI5BLM=;
	b=qO1iOGyowq08VAxcQDFSI0OJ5yihCIx6hyip/lfCkMK9NDYPBKQdGdY1FzCn3yi8iE
	lrXpJRaVOLcUQFYtMBDDysMgnF89yngsDMajrZgt6t4NNpUxNUn1aW8dF0o4EgqzoMW5
	zxF6PznIa5fPlKrcGZVBEsv5TpvW7PbppdbS0uKfCklbhLTkN0u3nkKnkhchKQdf+fKW
	z3I6cTb10oysAgYygEnEqoBVwDNtINM16DOunmJ0zvOwLMuD83ZeZis5dFsc3drpKvAg
	GHEDHHh/vAmIW4O7Iyu8p9XrUL38HNY6EJauM/uFfp+DDm3GcWTjEbJ+S9RwWbSsisoo
	1+og==
X-Gm-Message-State: AGRZ1gJkNkeyz1GlwKFvV8kgfNHum0HgHmIm6lkSZtU0V/W/MbVQhPhc
	Sw0VCVahGqSmbgarGkKtTykjO23liUz0iYKDAae1rA==
X-Google-Smtp-Source: AJdET5dC0+8CN03g2lU9tjao8KN/6mb/NLfhUHImHXxLUZJUa0O7oxQOyMeGwx1gyNBw4kQjRRwDy2/4RJieUnp4fKA=
X-Received: by 2002:aca:b186:: with SMTP id
	a128-v6mr8845344oif.182.1540816977339; 
	Mon, 29 Oct 2018 05:42:57 -0700 (PDT)
MIME-Version: 1.0
References: <20181024230509.6c4551c5@pouet.cJ>
In-Reply-To: <20181024230509.6c4551c5@pouet.cJ>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Oct 2018 12:42:45 +0000
Message-ID: <CAJTo0LbEJUddiO=oBoMRtNn1pd14uCTD8SC9YkbweeNr2ASA7g@mail.gmail.com>
To: cJ-poky@zougloub.eu
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
X-List-Received-Date: Mon, 29 Oct 2018 12:42:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Are you sure this is still needed?

$ oe-pkgdata-util find-path */sqlite3/__init__.py
python3-sqlite3: /usr/lib/python3.5/sqlite3/__init__.py

Ross
On Thu, 25 Oct 2018 at 04:13, J=C3=A9r=C3=B4me Carretero <cJ-poky@zougloub.=
eu> wrote:
>
> __init__.py was missing since dc24e256a90d4baff117a744ae3677b2edbe9d83
> (python3: Fix do_create_manifest for python3-sqlite3).
> The usual `import sqlite3` was not producing the intended results.
>
> Signed-off-by: J=C3=A9r=C3=B4me Carretero <cJ@zougloub.eu>
> ---
>  meta/recipes-devtools/python/python3/python3-manifest.json | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/meta/recipes-devtools/python/python3/python3-manifest.json b=
/meta/recipes-devtools/python/python3/python3-manifest.json
> index 2491f36db2..df01822c80 100644
> --- a/meta/recipes-devtools/python/python3/python3-manifest.json
> +++ b/meta/recipes-devtools/python/python3/python3-manifest.json
> @@ -983,6 +983,7 @@
>          ],
>          "files": [
>              "${libdir}/python3.5/lib-dynload/_sqlite3.*.so",
> +            "${libdir}/python3.5/sqlite3/__init__.py",
>              "${libdir}/python3.5/sqlite3/dbapi2.py",
>              "${libdir}/python3.5/sqlite3/dump.py"
>          ],
>
> --
> cJ
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31870E00CAF; Thu, 29 Nov 2018 15:55:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96ED0E00C72
	for <poky@yoctoproject.org>; Thu, 29 Nov 2018 15:55:47 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id x124so578655itd.1
	for <poky@yoctoproject.org>; Thu, 29 Nov 2018 15:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=UBEEmjzpLS2Ep1X5z/k2iCCJ6Qz6ffI29gqVoAWjHmo=;
	b=YFSpJxMr+0QW0s9bd7GIUdkneonk18h5KOd5ev7KAwfhc+sepczgIgvk+zo/XfQupm
	Qto+/mNIkINddZ7CdpCgQ6yy07AUOJbKoH5nvRQz43Y/nugSqHYDj8fOMo96uZdPRjOi
	GT0kbz61vD8yD14AwYab4arKt3Ev7PRLQOmkWlmjLEZdSs/ntqEbLJrs9OaVSAvXz2nj
	rwNNHn0O4jXYR45fDWFdY0VjP9cQsGu4Wvy8urNaJofwM4XtYRSG3Zeg3E9RxFXeOhu0
	QE2PTWvBVIL+x7hrWJNwZt1Gj3h4Km3Wf5BH4Jg1ZDXuLp8N+uRbQaGwtElYYs4bgJc3
	XBFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=UBEEmjzpLS2Ep1X5z/k2iCCJ6Qz6ffI29gqVoAWjHmo=;
	b=OsN1zCWCMWk5Kh+HQwf+5LfN8Yghp2hyZguPlnlCo/rIlCcxIOT/R9wZLDU1cNdzQe
	dZjfIkwwechMi6nTFAm0uZzLfn3fbCS5CJU/9CvosRlEwzrPzUZJewAKfR42uoLoxZnt
	hFxoiiNR/rre2K5PiHESBA/OQOt3eyhy3hM7f7H5KMAdeAERxikEmhr2ZcJjT6xSWZaU
	SjxYDY96Df0ws1JCNu/tUhV47X9Ruucx2bO6c1p3Xad9MzC7KjoQj/8qzObedAXMNS23
	oR+fsmsNE1plJ/RotbnB24lJH8MCRyu9bUhgk4q4hnNykHaHQldViZR0hexk78TP+0qo
	2dmw==
X-Gm-Message-State: AA+aEWb5fnUfqI3xGCKj1Bfqw2vRf9yLRuIyz/ZzaLRylzM7UWd4puN6
	Rwd+R92K4pZolZqZBJa9z6WrZ3SK1pgOxsZUSeXSgA==
X-Google-Smtp-Source: AFSGD/XKQ6q5He6OH84OXZ2/GfxT66Tszao9+BY7xisNB1r06EFvjst9WQ9N9hINqIDKeDArjvrvALRfgyGmA6V+dFg=
X-Received: by 2002:a02:57c4:: with SMTP id b65mr3354282jad.79.1543535747013; 
	Thu, 29 Nov 2018 15:55:47 -0800 (PST)
MIME-Version: 1.0
References: <cover.1543535225.git.roussinm@sonatest.com>
	<9d5112ef83d85dd155d5972241280ac31ba7ea71.1543535225.git.roussinm@sonatest.com>
In-Reply-To: <9d5112ef83d85dd155d5972241280ac31ba7ea71.1543535225.git.roussinm@sonatest.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 29 Nov 2018 23:55:35 +0000
Message-ID: <CAJTo0LZRa_b0DbGVpuUa_Uksjho877bqjyAAYuOhD9_zRtPLKg@mail.gmail.com>
To: =?UTF-8?Q?Maxime_Roussin=2DB=C3=A9langer?=
	<maxime.roussinbelanger@gmail.com>
Cc: roussinm@sonatest.com, Poky Project <poky@yoctoproject.org>
Subject: Re: [PULL][PATCH 1/1] cmake: remove version in directory structure
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
X-List-Received-Date: Thu, 29 Nov 2018 23:55:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 29 Nov 2018 at 23:52, Maxime Roussin-B=C3=A9langer
<maxime.roussinbelanger@gmail.com> wrote:
> Remove the number because I don't think it's worth
> supporting multiple version of cmake inside an embedded
> product.
>
> When using an SDK, using 2 different CMake is probably not a
> use case.

Whilst that's a hard point to argue with, what's the problem that's
being solved here?

>  EXTRA_OECMAKE=3D" \
> -    -DCMAKE_DOC_DIR=3D${docdir_stripped}/cmake-${CMAKE_MAJOR_VERSION} \
> +    -DCMAKE_DOC_DIR=3D${docdir_stripped}/cmake \
> +    -DCMAKE_DATA_DIR=3Dshare/cmake \
>      -DCMAKE_USE_SYSTEM_LIBRARIES=3D1 \
>      -DCMAKE_USE_SYSTEM_LIBRARY_JSONCPP=3D0 \
>      -DCMAKE_USE_SYSTEM_LIBRARY_LIBUV=3D0 \
> @@ -46,8 +47,8 @@ do_install_append_class-nativesdk() {
>
>  FILES_${PN}_append_class-nativesdk =3D " ${SDKPATHNATIVE}"
>
> -FILES_${PN} +=3D "${datadir}/cmake-${CMAKE_MAJOR_VERSION} ${datadir}/cma=
ke ${datadir}/aclocal"
> -FILES_${PN}-doc +=3D "${docdir}/cmake-${CMAKE_MAJOR_VERSION}"
> +FILES_${PN} +=3D "${datadir}/cmake ${datadir}/aclocal"
> +FILES_${PN}-doc +=3D "${docdir}/cmake"
>  FILES_${PN}-dev =3D ""

If the distro has set $datadir to something other than the default
then -DCMAKE_DATA_DIR=3Dshare/cmake won't match FILES_${PN} +=3D
${datadir}/cmake, you need to do the same calculation that
docdir_stripped already does.

Ross


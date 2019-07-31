Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07736E00DA3; Wed, 31 Jul 2019 09:45:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE2E0E00C94
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 09:45:36 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id z4so67313532qtc.3
	for <poky@yoctoproject.org>; Wed, 31 Jul 2019 09:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=IJ6XlsvkTIaxpZXNJf7ZqICdHG5AtrETg9Et5VhQ7ow=;
	b=cpI5GtkvhsFzE25Zuk7QMIVLJQjrmxrjrF07pnhJ9vI/1ZF75fWPSBo5551gaYTY/v
	rSxM0dQm64iAYEM5Z/+K0TGuU8fPFPwmtuv6uqb9ZQ9obUaYj30eVduGmrh2cynnaEuX
	NxJY3Li8pvzFqPEsPyo0R/mIQt71jclUcsBUcIl8ozAuqI42Tjm2Fr5EquDutaaVsqZy
	AAYImLFTWDhgOFjHOxRVAhUr8BtVBVeRr0sPTTFPOdgA/xoyRhWB77TT1Cl4beI8+9S6
	I7qqVbIfpH0RdIOve5WAqZZSnqNEothrm62AaNj0j0VKVl8SzQzOR20b9mH4Fq3Jo7xj
	o6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=IJ6XlsvkTIaxpZXNJf7ZqICdHG5AtrETg9Et5VhQ7ow=;
	b=E89ygKRSrhWTCV3vAkj97ljfnCH6tGgFnSJz4VVlf7rtwzkbsITn8uFw6b7GeW215z
	cWkYKGH11vq/lFjRIE221pFW3Np8KCR/IwZJ2MzMAlWfZTgWZddD60b7DkFOooQyzzYO
	IGPuXhFd+g2O8WtBszzQwJw3jDMVhWh6KBJJbiQAX5JIXQonS/l1k7+nqpWaHigCInpm
	joAIjN+e11WKSLe8wINKKecu3GbofuHUF5s+gGDzFQnezgvBnqR5Skdg7FM9uDF0/v6d
	fyl8MhP863RfSseUi699falkRmYJBghCtb8VSKCbkG6usGcQum5dFS9AtYS2HV+OY6BF
	s7Zg==
X-Gm-Message-State: APjAAAVe1+bEO/w5YFqHUJJCOqg7TNUjUyBlBuH1WoFayfCc+6MRYF/f
	SudYcrYCktFl4Ce3lbKC3tyFMtNAC6pWyHRDHpbWPlZq
X-Google-Smtp-Source: APXvYqweYWGkq44dDR5HSwOoVCdFNAehzA6q51PmIWRu/UNE7RwDaDpRMiMIdz47en/WdAwY1mU/bmUlDEAqrq5GAGw=
X-Received: by 2002:ac8:1183:: with SMTP id d3mr24590483qtj.53.1564591535702; 
	Wed, 31 Jul 2019 09:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <1564544459-411336-1-git-send-email-changqing.li@windriver.com>
	<8b53b4e5ccd515faed145f1844ac7be1170338fa.camel@linuxfoundation.org>
	<5DDDFCF3-C543-4699-91C4-AF5D54C98D8A@nicheconsult.in>
In-Reply-To: <5DDDFCF3-C543-4699-91C4-AF5D54C98D8A@nicheconsult.in>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 31 Jul 2019 09:45:18 -0700
Message-ID: <CAMKF1sqFNbLYMvtSxmyiS3K5naJqx7X7bOf9N0y4fNzpkCQOfQ@mail.gmail.com>
To: Niche Consulting India <contact@nicheconsult.in>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: error in building qt5-image
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
X-List-Received-Date: Wed, 31 Jul 2019 16:45:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It seems to be a parallel build issue. Try to enforce -j1 and see if that h=
elps

On Wed, Jul 31, 2019 at 8:23 AM Niche Consulting India
<contact@nicheconsult.in> wrote:
>
> hello,
>  i encountered this error when building qt5-image for ubuntu 14.04 on war=
rior branch.
>
>
> Can someone tell me how to fix this? does this mean i checked out an olde=
r version of code?
>
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94
> # bit bake qt5-image
> =E2=80=A6.
> n file included from libavdevice/avdevice.h:51,
>                  from libavdevice/avdevice.c:23:
> ./libavformat/avformat.h:2070:17: note: declared here
>  AVOutputFormat *av_oformat_next(const AVOutputFormat *f);
>                  ^~~~~~~~~~~~~~~
> libavdevice/avdevice.c:92:13: warning: 'av_iformat_next' is deprecated [-=
Wdeprecated-declarations]
>              if (!(prev =3D av_iformat_next(prev)))
>              ^~
> In file included from libavdevice/avdevice.h:51,
>                  from libavdevice/avdevice.c:23:
> ./libavformat/avformat.h:2062:17: note: declared here
>  AVInputFormat  *av_iformat_next(const AVInputFormat  *f);
>                  ^~~~~~~~~~~~~~~
> make[1]: *** write jobserver: Bad file descriptor.  Stop.
> ERROR: oe_runmake failed
> make: *** [compile] Error 2
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_compile (log file is located at /data/build_ar=
ea/warrior/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/omxplayer/gi=
t-r4/temp/log.do_compile.26121)
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


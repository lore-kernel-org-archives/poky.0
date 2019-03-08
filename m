Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C8D7E00D11; Fri,  8 Mar 2019 13:11:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C677EE00AC5
	for <poky@yoctoproject.org>; Fri,  8 Mar 2019 13:11:38 -0800 (PST)
Received: by mail-lj1-f179.google.com with SMTP id 199so18583089ljj.5
	for <poky@yoctoproject.org>; Fri, 08 Mar 2019 13:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=STpxr0r10+F/axT/j8sAucG66l4zaMTxHRF4zJEK2x8=;
	b=M+a6wi+p//9NIRexVj4S8Enj/br3WgSkBL121OegDaeaB6KRaWcK8y28Bxs7H5dFm0
	Immn2uuNshZQgsPWWwCJLlynEAoDxhOTChzM5jW0lq93u8kqiNi3F5zLJXyEWaPsvanS
	/h6WUK2Soixfm8G+UtVPsmIcfn/oisAkPYOPP9xpVHz+IKDUIy0ctsuxXqyBNj3/YmkQ
	R1fHjOd8rRTgzgr3qprCfXBUVunF1RiJNQzLCj3RaeSly+VzZ2iXegLFq7jnONC7y2Tr
	ncNgKFVlHAD8Fa5KarhMBcQAGgJOtIl3vlzrv42CPDhkcmuiMKP15W85PHLnKD88XWhH
	Vs+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=STpxr0r10+F/axT/j8sAucG66l4zaMTxHRF4zJEK2x8=;
	b=GbgIDAtJuQxksAUOAOlAj3tQCo4lNvBu/DgK9tTFONa9mONwMbAfUeB+nB5eGtUOHY
	+7u9BJqP55APGPP0LQAST4HFmMbxVfxqTDNCAMxdaizGKzaq+VyCeSSnWAowzsQf3HU5
	TXrhcivBesByi7f1CURUiRzdiIvHuhkanJ3gLiRB3p1qR871j+cOF8vAVSgpYjwxkDBz
	Ing3M7siZ8OVDSHGS4ic6/hFkbrQHLaBYtkCZfN5g2LOtHRfLMstAO7G6+KFHTs6WFOs
	FKH1G6mWIPih1loM40HWvDUr7qHredgbX0yGDxBqV6NQOxpYEb1kxAxAXg6zMQSIeur/
	UB0g==
X-Gm-Message-State: APjAAAUFrXnkNfIXqCqtrXoC7UrThBoZWXcTnysR6rYvNay+QnLAM9+0
	ptQdoJ992RRkNeU5QEhYnvQ8C65k
X-Google-Smtp-Source: APXvYqyZ7Z9YSF2QpK7EUx00D5yj5Ud7XlPZLa44bIQRv1Qx00e7Z0zUiEfpVMerRHs+xnWlVo96wA==
X-Received: by 2002:a2e:a0cb:: with SMTP id f11mr40361ljm.55.1552079497551;
	Fri, 08 Mar 2019 13:11:37 -0800 (PST)
Received: from [192.168.1.65] (95-27-45-82.broadband.corbina.ru. [95.27.45.82])
	by smtp.gmail.com with ESMTPSA id
	q20sm1025757lff.43.2019.03.08.13.11.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Mar 2019 13:11:35 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16D57)
In-Reply-To: <62BCE529-4701-4AC8-8D31-97E622B8D177@ads.isi.edu>
Date: Sat, 9 Mar 2019 00:11:34 +0300
Message-Id: <A7C35719-A08F-4A56-ACF4-961127740274@gmail.com>
References: <9BC86C58-D25E-4FBD-AD92-B8DAC74D8326@ads.isi.edu>
	<CANNYZj9kN3CfY=vUcchnWH4Q6H4R5xLiJJd07NrbDT=UTdB_qw@mail.gmail.com>
	<62BCE529-4701-4AC8-8D31-97E622B8D177@ads.isi.edu>
To: Connor Imes <cimes@isi.edu>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Building and deploying test binaries
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
X-List-Received-Date: Fri, 08 Mar 2019 21:11:40 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

To be honest, to me there is almost no difference between test binaries plac=
ed into an image when it is created and test images transferred to the same i=
mage with ssh during a test run. In both cases you have to trust that they w=
on=E2=80=99t affect the runtime behavior of the rest of the image. Yocto sup=
ports the former case well (e.g. the ptest framework to package and run test=
s per-recipe), the latter, not so much.=20

Alex

> On 8 Mar 2019, at 23.23, Connor Imes <cimes@isi.edu> wrote:
>=20
> Thanks for your response, Alex.  I can certainly see how creating a separa=
te image is straightforward and useful for many teams - it fits very nicely i=
nto the layered approach that the OpenEmbedded framework offers.  I also agr=
ee that it has not been communicated particularly well.  There doesn't seem t=
o be much documentation on our use case - where tests rely on cross-compiled=
 applications not intended for the final rootfs.  The existence of the JSON-=
based approach seems to indicate that others have encountered similar requir=
ements.  So my original question still remains, which is to find out if bitb=
ake (or another tool) can automatically manage these JSON-specified test dep=
endencies as part of the build lifecycle.
>=20
> I'm still exploring options, but there are some reasons to prefer not havi=
ng a separate test image.  If you're curious, some thoughts follow...
>=20
> Probably first and foremost is that using a separate image means you're no=
t directly testing the artifact you really care about - the original image o=
n which the test image is based.  Trusting that the test results from the te=
st image apply to your original image is predicated on the assumption that t=
he test image is an exact replica of the original, modulo the addition of no=
n-disruptive test recipes.  That is to say, you must assume that the test re=
cipes don't conflict with each other or modify the system behavior in unexpe=
cted ways.  Additionally, while it is conceptually straightforward to just c=
heck for the addition of recipes (ignoring unexpected side effects), it coul=
d still be a slippery slope - it's easy to start making other changes, as th=
e example you present actually does  (e.g., changing the overhead factor and=
 assuming more memory).  We could debate the impacts of such changes on a ca=
se-by-case basis, but ultimately every change moves you further away from th=
e baseline, adding risk.
>=20
> For us, having to manage multiple images also makes things more challengin=
g, in that the Yocto artifacts we produce are only a part of our embedded sy=
stem.  As such, we have other scripts and components that would then need to=
 account for multiple images, depending on the scenario.  Certainly this can=
 be done, but for simplicity, it's easier not to require that, esp. when the=
re's only one final rootfs needed from our poky configuration.
>=20
> Cheers,
> -Connor
>=20
> =EF=BB=BFOn 3/8/19, 2:26 PM, "Alexander Kanavin" <alex.kanavin@gmail.com> w=
rote:
>=20
>    I'd say a special image for testing is *exactly* what you need. You
>    might take the existing image recipe, and include it wholesale into
>    your testing image recipe, then add additional recipes as needed. Then
>    the testing image is guaranteed to be an extension of the plain image.
>    Example:
>=20
>    http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-sato/i=
mages/core-image-sato-sdk-ptest.bb
>=20
>    Generally, creating various types of images serving various purposes
>    is not only ok, but is encouraged - YP isn't able to carry this
>    message across to users very well :-/
>=20
>    Alex
>=20
>>    On Fri, 8 Mar 2019 at 21:36, Connor Imes <cimes@isi.edu> wrote:
>>=20
>> Hi all,
>>=20
>>=20
>>=20
>> We have some applications that are meant exclusively for testing, and so d=
o not want to include them by default in our image=E2=80=99s rootfs.  It als=
o does not seem appropriate to build a separate image for testing.  After mu=
ch searching, it seems like the JSON-based approach described here [1] is ap=
propriate to automatically load/remove the binaries at runtime for use durin=
g testing.  I=E2=80=99ve written some recipes to build our test binaries, th=
en specified their packages as dependencies using JSON files for our Python o=
eqa runtime test cases.  If I build the recipes with bitbake, the tests then=
 execute successfully when I run `bitbake <image> -c testimage`.
>>=20
>>=20
>>=20
>> [1] https://www.yoctoproject.org/docs/2.6/dev-manual/dev-manual.html#inst=
alling-packages-in-the-dut-without-the-package-manager
>>=20
>>=20
>>=20
>> The problem is that we currently have to specify each of these recipes to=
 bitbake so they can built prior to testing, thus requiring a priori knowled=
ge of which recipes our tests depend on.  This manual dependency management i=
s error-prone and won=E2=80=99t scale well.  Is there a way for bitbake to d=
iscover these dependencies automatically prior to running `testimage` (which=
 subsequently fails if the dependencies specified in the JSON files aren=E2=80=
=99t already built)?  Ideally we should be able to manage these recipes simi=
larly to others used to build and populate the rootfs - fetch sources while w=
e=E2=80=99re online, then build offline, then run the tests anytime thereaft=
er.  Something like:
>>=20
>>  bitbake <image> -c testimage --runall=3D"fetch"  # download sources (cur=
rently fetches some things, but not JSON-specified recipes?)
>>=20
>>  bitbake <image> -c testimage --runall=3D"build"  # build/install/etc all=
 test-related recipes
>>=20
>>  bitbake <image> -c testimage  # do the actual runtime test
>>=20
>>=20
>>=20
>> Thanks,
>>=20
>> -Connor
>>=20
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>=20
>=20


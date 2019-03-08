Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3720E00D11; Fri,  8 Mar 2019 11:25:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4837BE00BE8
	for <poky@yoctoproject.org>; Fri,  8 Mar 2019 11:25:59 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id q81so16736824oic.5
	for <poky@yoctoproject.org>; Fri, 08 Mar 2019 11:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=9l4eHLmg+p8rPdQ/yEdD5MvbYZjM6+7f1ewrfSqUsfw=;
	b=WUyaN9n0R24AuJoLjDiFUfb+pJH12p5dhiqHvEI1lFlSjCsUmVqZDiO6yZOiT2MDlk
	OBVzIGx7DdxuS2oDIITHRCZLMLprNcFOGYqMNSFKQgI2UAsWNjA595ppf8hD8UHK6H5R
	4M3k+nOxX2sk7WqhJMjQ6N2kbYLMJjnmZfo9On4Q872oOIshu9qpR5gTrmZt88x2yhFd
	nddeWwmVTVReOVvODzLQbWp3hzMazL1aLvBarwvTpwCq1d2uQWvjt8m32Kqnu4RoXCLc
	N8BPgrINgCFxIFxwPvw+I43VkEWTeuy24zWjnZYf1v0gNB1yIAISw8qw8EDOzDkktrUv
	35uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=9l4eHLmg+p8rPdQ/yEdD5MvbYZjM6+7f1ewrfSqUsfw=;
	b=N7y3zbpAor/OXc1AFnptnSZh9bBETBPieSOQsH3ercgudzsLEQTzKqIvKdRfYLI6LU
	Zvhbtn9oSDZtkXr6Y48197IL/frgjGtscASIALV19ER9wt44aeAbcOeh3QEm/8chUoYn
	yTJwHQxFoLGDd1rI1fzJeF9gPr2YEOCHzKAFFxJva85I+CMyCKWpuFuT8WdUmZDnJcCz
	kA6eZ1RwNcbLQ5CvAs8a2EUszRWbs3GEB1RF39nsTks5731UvfxhIaQqszBlSPNDqzUB
	9h+dmYa3qaK1Ie9BI5Tde8FAADBetnBSfRonkD0BJf7oqclhugzwR/ZYYnowWq07uig+
	JpyQ==
X-Gm-Message-State: APjAAAVctfuQpaIOGecSRLl4CqPDOwMcwBTA7WXaSRN8R484ylecVcl9
	3ZqMEJfoZLkCiVz7eDKflVlF5LPSR6KANuleXHQ=
X-Google-Smtp-Source: APXvYqzXCf8Fi/6TNn3/usqxytk+FoVzKQtMpf2TCsAKOQkU3q+ujGx8MbJTscPhV7cJAnMPDH1r/0QmWn7vArMblUY=
X-Received: by 2002:aca:c3cb:: with SMTP id t194mr8917131oif.70.1552073158607; 
	Fri, 08 Mar 2019 11:25:58 -0800 (PST)
MIME-Version: 1.0
References: <9BC86C58-D25E-4FBD-AD92-B8DAC74D8326@ads.isi.edu>
In-Reply-To: <9BC86C58-D25E-4FBD-AD92-B8DAC74D8326@ads.isi.edu>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 8 Mar 2019 22:25:44 +0300
Message-ID: <CANNYZj9kN3CfY=vUcchnWH4Q6H4R5xLiJJd07NrbDT=UTdB_qw@mail.gmail.com>
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
X-List-Received-Date: Fri, 08 Mar 2019 19:25:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'd say a special image for testing is *exactly* what you need. You
might take the existing image recipe, and include it wholesale into
your testing image recipe, then add additional recipes as needed. Then
the testing image is guaranteed to be an extension of the plain image.
Example:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-sato/image=
s/core-image-sato-sdk-ptest.bb

Generally, creating various types of images serving various purposes
is not only ok, but is encouraged - YP isn't able to carry this
message across to users very well :-/

Alex

On Fri, 8 Mar 2019 at 21:36, Connor Imes <cimes@isi.edu> wrote:
>
> Hi all,
>
>
>
> We have some applications that are meant exclusively for testing, and so =
do not want to include them by default in our image=E2=80=99s rootfs.  It a=
lso does not seem appropriate to build a separate image for testing.  After=
 much searching, it seems like the JSON-based approach described here [1] i=
s appropriate to automatically load/remove the binaries at runtime for use =
during testing.  I=E2=80=99ve written some recipes to build our test binari=
es, then specified their packages as dependencies using JSON files for our =
Python oeqa runtime test cases.  If I build the recipes with bitbake, the t=
ests then execute successfully when I run `bitbake <image> -c testimage`.
>
>
>
> [1] https://www.yoctoproject.org/docs/2.6/dev-manual/dev-manual.html#inst=
alling-packages-in-the-dut-without-the-package-manager
>
>
>
> The problem is that we currently have to specify each of these recipes to=
 bitbake so they can built prior to testing, thus requiring a priori knowle=
dge of which recipes our tests depend on.  This manual dependency managemen=
t is error-prone and won=E2=80=99t scale well.  Is there a way for bitbake =
to discover these dependencies automatically prior to running `testimage` (=
which subsequently fails if the dependencies specified in the JSON files ar=
en=E2=80=99t already built)?  Ideally we should be able to manage these rec=
ipes similarly to others used to build and populate the rootfs - fetch sour=
ces while we=E2=80=99re online, then build offline, then run the tests anyt=
ime thereafter.  Something like:
>
>   bitbake <image> -c testimage --runall=3D"fetch"  # download sources (cu=
rrently fetches some things, but not JSON-specified recipes?)
>
>   bitbake <image> -c testimage --runall=3D"build"  # build/install/etc al=
l test-related recipes
>
>   bitbake <image> -c testimage  # do the actual runtime test
>
>
>
> Thanks,
>
> -Connor
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


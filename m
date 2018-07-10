Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC927E00D48; Tue, 10 Jul 2018 03:21:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57FD7E009CA
	for <poky@yoctoproject.org>; Tue, 10 Jul 2018 03:21:03 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id y207-v6so41566333oie.13
	for <poky@yoctoproject.org>; Tue, 10 Jul 2018 03:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jYqhm9uwMX2ysnJwotHccOl78WRIhr7WjVUSlrFHoJ0=;
	b=np+vdSPWJg8I3Ud5TdYUX4gtLozbQqZ1XoQPSA/MTJpTLmkcNTPr+u2UabV58axO8j
	OU8Y53YVJHYCABYLW322mX7SxXdLcXJsmI0h5azKsXbuHNOtMnkE4J9Q/aegqTr/XGN4
	pqae0rFGzYRIrfbPGbuSyqYTaIEMPrgYqO8ahlZ/iIiaOhk+LiMt8cmC1FxO9VilOuXX
	oTkgBheT7c2h8/IugFVXi4SZK5HGJkb2WqkKY+sJ1vr5yrPhMhw40vFr7BmA5p5Avzbr
	JohfJpxgh0uuATJ6SJ/uLpDtd0wiNWmVbMHoTLWYUSQpOLKXGrlBp+c2b9gdjea53R4z
	6+Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jYqhm9uwMX2ysnJwotHccOl78WRIhr7WjVUSlrFHoJ0=;
	b=PGJUGwdYvoZMsGrnYE7U7lheTGFcbz+6EOd8GQJbqlffJJWXrQNo3E/tZ+Nk8r9XfN
	lBlfUCji3BYzoiEDkwq6gw+Mb+18b+4zAHC3sfImxbomUEiV75JJsH259YDPTWNEE0vS
	rwn319myw4W3lOPiAKpDPezPqJChTx0b2YJ6/79SrB9tI9APmK8trJ6imp5fyu14x9L/
	XXxzhiOwWybDtNF6HxHobu4sH/8aQJLMQX2W669t+/S3Ob46exGycLilVEcoGJEtJrd0
	7LY1Issiw9/6aPVDczkhYtILiLui10LmzB4h2Sqw49wX87D9c/l86rywQfvBhd7bzbLa
	SRmQ==
X-Gm-Message-State: APt69E2xmqbET8U2dpFlTBl3wxb0yr3hUK8P2RQbxJmjmmYc6RGClNKZ
	N8YeyT57DBWRJjjCh5gVw6ooiSq9S8REy19Aiu87uA==
X-Google-Smtp-Source: AAOMgpetKVAFBKKcOrSviLsohISM3mH1doO/3yXBu6xUarc+/U4G8pKeEUNQm+ba1vc78ZNY7ktmLyBCDX9EZFN4lQg=
X-Received: by 2002:aca:efd7:: with SMTP id
	n206-v6mr29052860oih.70.1531218062875; 
	Tue, 10 Jul 2018 03:21:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Tue, 10 Jul 2018 03:20:42
	-0700 (PDT)
In-Reply-To: <CACUGKYOiv-Waks6G3x41798c2SfKtCkWvjhfcMOLLbaoQwPz=g@mail.gmail.com>
References: <CACUGKYOiv-Waks6G3x41798c2SfKtCkWvjhfcMOLLbaoQwPz=g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Jul 2018 11:20:42 +0100
Message-ID: <CAJTo0LbjmNCVRiT-qm8OBtiMhFGSHbqTG9TCCVCsK9Ug-vDJFw@mail.gmail.com>
To: John Tobias <john.tobias.ph@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Poky (suma) switching to systemd
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
X-List-Received-Date: Tue, 10 Jul 2018 10:21:03 -0000
Content-Type: text/plain; charset="UTF-8"

On 9 July 2018 at 18:00, John Tobias <john.tobias.ph@gmail.com> wrote:
> Hello All,
>
> I was trying to switch to systemd so, I followed the
> meta-poky/conf/local.conf.sample.extended documentation to add the
> following (below) into my local.conf.
> DISTRO_FEATURES_append = " systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
>
> I ran 'bitbake core-image-minimal' and saw the systemd was compiling.
> When the bitbake raturned, I checked the image directory and did not
> see the any rootfs images.

If no images were produced then there must have been an error message
from bitbake.  Can you share you logs?

Ross


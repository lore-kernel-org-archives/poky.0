Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6812AE00C91; Thu, 13 Dec 2018 06:23:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41740E0076C
	for <poky@yoctoproject.org>; Thu, 13 Dec 2018 06:23:29 -0800 (PST)
Received: by mail-io1-f46.google.com with SMTP id n9so1696193ioh.7
	for <poky@yoctoproject.org>; Thu, 13 Dec 2018 06:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=U6MGDOCv+hrIpvc4GuvsNNjCKgWiysHvljhIRFU2xuE=;
	b=oRZpHyXviEHGR1895jP3X2/kc1zbyPvNeZ6DYLFS3nIcdclzvF1H/Lxd0/21A1Fe70
	oTln27QNTgzc+pAGFIKmpPokIa9Cre73l0EihGAnwf7I1wBhAOrvjrL07m21zw5PFNL/
	7Tfrr82JSoMEhb4NpHFpyrtj/gRRp+7Ju0GCV89HvdDNh6sSL0B04wpFaFH3T5ANLndF
	GK7PMI/pvDzdYe9onGDacIm0wMiz4nL2niyN3oJWjuLXjjJDwFlAaU/AINt9LQCDecAz
	Io0MoLQ9F7dIEmbx7Ddp2y9F8sXMnRFCS6MA/C9fRh9MMncvfNyqVecgu260QMGmHMn+
	bgSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=U6MGDOCv+hrIpvc4GuvsNNjCKgWiysHvljhIRFU2xuE=;
	b=NuC8O2R7xg2FwbCxcBMAvSKg4wTfIvl90oslYA16Igh87TAs4AJeg6NVysoKLKNQkN
	RaAYcWGiCgYDL/isBNoZyVUzfnfyxO1aVsQKdtig3No+58M5a+takDbwmrULyQuszLYu
	/imER/tjzBCm/ihpaJtG/NbnWYCZQBFe9ov3QN7tPAXLZ5HYTKD+gP3Dy+f32IPHOjLx
	ONKF3Tcaf5f4M62GxtsUzdV5PPmu/CiJL2oeEF4NsAqKuJ9qJJOYWVsuUCG2Y9IGlMlq
	IF/rjfO1F5CCpZDVcNVrLh4Cr+bAidGqtzjXstc1QP767wsbYSmFge3QLZEjsT7m33Fp
	V3rg==
X-Gm-Message-State: AA+aEWZ0jbvAIB91ovDcUFU6F0rz52us/qTISi9L8/C0JNiFRgiTthxo
	fziXZZwXkfrqtoqrCeW+vaa4zk/UjnV2FDkJuqDTXA==
X-Google-Smtp-Source: AFSGD/XwOPbLD6nHn6MpwC5rR0eBsTT9DKfTiXMSmGCB49o8SeStCz+hQls49TGbq2yn7FbOcEMGt/61Eb5BXz1F28Q=
X-Received: by 2002:a6b:acc5:: with SMTP id v188mr19559498ioe.20.1544711008586;
	Thu, 13 Dec 2018 06:23:28 -0800 (PST)
MIME-Version: 1.0
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
	<CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
	<CADnUhn2siMqwsf1GfMdOEEK9vpjmXX-uxWSHtr36xf9Vjy8vgg@mail.gmail.com>
	<CADnUhn3_MjwJvcEDT8ikfGZ2eBhnBKOOzXsJ+D4ncntWT18vUQ@mail.gmail.com>
	<CADnUhn1SDTZPr4_StAqUBUehF206S-OA+ZHmyBbM_UAWKWp3fA@mail.gmail.com>
	<CADnUhn3Er1dR8rr4bDDHniRmFYnCr9h+33a64Hn8C+xLhmApWQ@mail.gmail.com>
	<CADnUhn0-GgH9=4ow4SV25b7etaKP19Eb3jH6HxL2-xm80yrkbw@mail.gmail.com>
In-Reply-To: <CADnUhn0-GgH9=4ow4SV25b7etaKP19Eb3jH6HxL2-xm80yrkbw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Dec 2018 14:23:15 +0000
Message-ID: <CAJTo0Lb8R6vuVuJSMys2SaJG6G2nn7x-QqexT47KWHLofoKKQA@mail.gmail.com>
To: matti kaasinen <matti.kaasinen@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
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
X-List-Received-Date: Thu, 13 Dec 2018 14:23:30 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 13 Dec 2018 at 14:14, matti kaasinen <matti.kaasinen@gmail.com> wrote:
> This cleared out. However, I faced with a new problems that seems also hitting to same bbclass. It seems that convention has changed since Yocto/krogoth (now Rocko) how autotools handles .debug directory. Then I just had statements:
> FILES_pam-oath-dbg = "${libdir}/security/.debug"
> FILES_pam-oath = "${libdir}/security"
> Then I got both pam-oath and pam-oath-dbg. However, now I cant find a way either to get QA error about .debug directory (without pam-oath-dbg line) or not getting pam-oath (with pam-oath-dbg line).
> Is there any reference handling this issue? I did not find any. Or should I write a new question with proper title?

The best practise is to ship only one -dbg package per recipe
(${PN}-dbg is in the default PACKAGES), and you don't nee to list any
FILES for it because it will automatically sweep up all the .debug/
directories.

Ross


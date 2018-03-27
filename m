Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A724E009DB; Tue, 27 Mar 2018 02:28:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
Received: from mail-ot0-f170.google.com (mail-ot0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D27CE008E4
	for <poky@yoctoproject.org>; Tue, 27 Mar 2018 02:28:44 -0700 (PDT)
Received: by mail-ot0-f170.google.com with SMTP id i28-v6so23773672otf.8
	for <poky@yoctoproject.org>; Tue, 27 Mar 2018 02:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3MwrSfEEWOhB+xGXnuoN6qlrjMHoLjiGxRzhApxF4wI=;
	b=1Rr9NDX1g/OVIviOp73KK32DHfpUPiLoMIILsRYSaRkgRNXnKeXBwzKbgaS4CkAqFb
	1Nsgn25l4HhG0V0qX1uj3McAXmGNOzQ0wg9ior7amXz1Uge35+37C7nX+zPxv1Ocjb23
	NDr0Kil8/geF0ewEB9nxH4DMZp+1oo/Zi3CGDf7HWs/ykMyQwofmYKlXxyR//aDhCGZ9
	rR3xFvNytfsKOlatKNwDtq17KCyvRf+qDKbYMB99WnaphxSb75l1peSOqj9QoHUMLlPE
	mn3KQZSrFDuY+GvhbyhIz/ch6PH4aVfuKGXHeJoyo0m4aYyI6YmgNed6i6fYODg5Pmns
	JOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3MwrSfEEWOhB+xGXnuoN6qlrjMHoLjiGxRzhApxF4wI=;
	b=Vl26YyHPAq3rmmBKM7SLbfJjRu7JBPpDRZ7IfC3vZe3KRbx7fuySfmQlljvQvtFGvr
	OT5s58McI48bAfMp92Ra3QC5zd9UWuM3tZNQYyiShvt4lVW+h0MgR0az65cGlLA6AoOR
	eHJmlQ/TxnuXAzlkga9vbvUIso00YR6qxKDpArAMENVBtmbBwOIgoxbfyn++WLFE5/Hy
	orDdSxZWscEPcRd1WAEnUoDlcS+fhhaY6UU2HC3AAnFLi0cIHmLVOc0XJSYkM2fTOs/t
	vqsWhfK20HbQ/OfYzvZirKuA1SxzmFD+7SDFeVlkZCnkta83aCt/6GDPw0yXGsYULbX6
	X+RA==
X-Gm-Message-State: AElRT7Hd2uD4mQVf0jvwIwCluAkhCa6Gcaue6acnQ+gaLgnSAHz4dL9d
	6mq5gFFIZpSVJW+RNHCIYkJY4RkzOdHNgPpOL4f53w==
X-Google-Smtp-Source: AIpwx4/rOlneFbOF0LS1jFAk7A+CAHYPL7pGufamR4bB2hig5g3atTbTwKnxg6+U0lagYQUOmdvtLEXURsmTAC7StsQ=
X-Received: by 2002:a9d:e4d:: with SMTP id
	n13-v6mr5017558otd.168.1522142923719; 
	Tue, 27 Mar 2018 02:28:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Tue, 27 Mar 2018 02:28:23 -0700 (PDT)
In-Reply-To: <CAPTBsuUBfwZ_4QJpb2hfUw6dSTHrHgQSQuNJE96_L=psj8C=ZQ@mail.gmail.com>
References: <cover.1522085586.git.soemoe.a@gmail.com>
	<CAJTo0LZcVrPqJgEcZSobi-QO8YBg0GeDy94VwPFqV0MC4NDfuw@mail.gmail.com>
	<CAPTBsuUBfwZ_4QJpb2hfUw6dSTHrHgQSQuNJE96_L=psj8C=ZQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Mar 2018 10:28:23 +0100
Message-ID: <CAJTo0LZ9o8vr9H+6ng5uMxif6i6=_hSSybVeGuQ9CURNDuc2fw@mail.gmail.com>
To: Soemoe Aung <soemoe.a@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PULL] *** Fix build issue with html5lib in bitbake ***
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
X-List-Received-Date: Tue, 27 Mar 2018 09:28:45 -0000
Content-Type: text/plain; charset="UTF-8"

On 26 March 2018 at 22:00, Soemoe Aung <soemoe.a@gmail.com> wrote:
> Sorry if it wasn't clear. This is meant for fido (and also jethro). The
> context is that when doing a fresh checkout of yocto-poky for branches fido
> or jethro, I wasn't able to build with bitbake because of an error in one of
> its included libraries. This issue seems to be resolved starting in the
> krogoth branch.
>
> If I send this change to the bitbake list, would it also get applied to the
> yocto-poky repo in the fido and jethro branches?

Yes, send it to bitbake@ and the maintainer will ensure that it
bubbles through to the Poky repos.

Ross


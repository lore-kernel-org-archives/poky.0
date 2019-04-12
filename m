Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA8C1E00BC8; Fri, 12 Apr 2019 16:17:01 -0700 (PDT)
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
	*      [209.85.160.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B27C2E009A4
	for <poky@yoctoproject.org>; Fri, 12 Apr 2019 16:17:00 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id w30so13156997qta.8
	for <poky@yoctoproject.org>; Fri, 12 Apr 2019 16:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5MJ0CUy6Yee2Wv5mbpv+C1grUC748FMglxPIaaSNzdg=;
	b=mkt4oXf5SQpzGRPZl8RvklV5uqrcyuchiSrc6/h5M9zxtL/ZZFmF9cUXEsIc9v8VY2
	0dRc3LZICE+BNkDYvEHvo3pMsPVTk8JzkY4KnWJIf/zvgExb3lSQiXDNq58ktWPZhkPL
	Fnjv1JiyB3KMrobQlySgG9HcPhWrw0sZOyANWx+XPYbJUZ9qOvVGAdVP3Zf6eC7FJPs7
	NBXwpsLChMI8Boweify7Ji5YaZ6+vfFfw4AVOkEu6y4xIeguoy6vSpQj2GlqRYGBOLq7
	CAiwwuC8glQWTYxDYvG11Z/Mi1nbjlhWYJQYE1y+iHrw73Devp0OWccpN8nTlybS6/R8
	pBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5MJ0CUy6Yee2Wv5mbpv+C1grUC748FMglxPIaaSNzdg=;
	b=R/WCEs8QUsXKgn8yZgikohJuxnIYXTVGv7HmmxLvXlKkGYrjwQ/4qwtxSLQBshLAQN
	zUIcAp56fyW2xNSrqX2A+ziGS8pIMYD2tg6NxgX/8SJaH7E/vsGww2NC0DcvL2wSKFzF
	HJp/o5UlAjl3igBNboRTBABcBJR7VVttskjBcQhaqnEEuxOGTqHpxHtVWTDNtTVg4gBU
	ENvpDmRVZCH1qmys4XyvtFSVn5W2XN7UnI+CMRw6phzeGZHNb3UYin2qqTRlZLHLFvFE
	eWyr+BFXxy8W+y21BcHKbtUi5McenuiEV5CbAS5gsyFa018xJB/Kkgm0zHyNpXEuILoH
	tEHg==
X-Gm-Message-State: APjAAAU+YFtuCxFSXwRswpfQQN9/RGcPC9yCQu4lboHT83xQCexX9VcR
	VGAW4E2J/w+PQSNPTEa2PtaZ1TyG3ubRv5kBGhA=
X-Google-Smtp-Source: APXvYqyq1YnObgOO5XuBlSK4hB3khqaVu57zoKvHQtjIOn6dOAPhpSxlp6LL2IuzPp+l6rMgpF0JqYRrK5w46l6I4jw=
X-Received: by 2002:a0c:81a9:: with SMTP id 38mr47959452qvd.208.1555111019737; 
	Fri, 12 Apr 2019 16:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <8c6201f9a7d14b56c3129fa9b0c80d44@mail.gmail.com>
In-Reply-To: <8c6201f9a7d14b56c3129fa9b0c80d44@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 12 Apr 2019 16:16:33 -0700
Message-ID: <CAMKF1spcRYnZd_cw++H2Zsi9aikkHw3nMRTQgPbcc6BSGyMcAA@mail.gmail.com>
To: Jonathan Richardson <jonathan.richardson@broadcom.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: libc configuration of multilib config
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
X-List-Received-Date: Fri, 12 Apr 2019 23:17:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 12, 2019 at 1:36 PM Jonathan Richardson
<jonathan.richardson@broadcom.com> wrote:
>
> Hi,
>
> We have a cortex-A72 tuning defined as our default tuning based on armv8.
> We also have some bare metal code that runs on a cortex M0. Yocto allows
> you to set a default tune for that multilib config so we call it softfp
> but it's an armv6 architecture with soft floating point:
>
> MULTILIB_GLOBAL_VARIANTS += "softfp"
> MULTILIBS += "multilib:softfp"
> DEFAULTTUNE_virtclass-multilib-softfp = "armv6t-novfp"
>
> Since we only have 1 recipe for code running on that processor (the SOC
> contains armv8 and an M0) we compile it as softp-recipe_name, add it to
> EXTRA_IMAGEDEPENDS along with other bootloaders and have everything in the
> same deploy/machine when we create our image.
>
> Now we want to use newlib instead of glibc for the softfp multilib config
> only. I don't see a way of configuring this. At this point should we put
> it in a different MACHINE? Are there any guidelines on when to use
> multilib and when to put it in a new machine?
>

you might want to look into multi config feature.
https://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html#platdev-building-targets-with-multiple-configurations
https://wiki.yoctoproject.org/wiki/TipsAndTricks/BuildingZephyrImages#Arduino_101_and_Multiconfig


> Thanks.
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


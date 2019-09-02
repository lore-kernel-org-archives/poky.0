Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA239E00D8A; Mon,  2 Sep 2019 02:37:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FB46E00D4E
	for <poky@yoctoproject.org>; Mon,  2 Sep 2019 02:37:39 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id n10so3164156wmj.0
	for <poky@yoctoproject.org>; Mon, 02 Sep 2019 02:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=MBz2G8KFTjyQY1H7thgvR/8cjIxAkTLPO6MTmCvfWOA=;
	b=D3D9s/0EZRckRB2u6RZcKku1jD+FCLsMDwbWthc1NDar8HSEbsmVc9k1+qLTllH0ss
	NEfiiBEw06Db35pPbA89IbF3o6IZexk7J2j0IXAax0TmT7TCFBTO4xX8d8uuvmrNIpzF
	GRLc0Qovq7kL/dIQqT9Or4aJvh3ABdmCG6vzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=MBz2G8KFTjyQY1H7thgvR/8cjIxAkTLPO6MTmCvfWOA=;
	b=E+y2WQ4FPmAE/RV2cYZXjAd/Jk84I/KxcgPxxUDAt9+loczJbXDMUW1LvHQDlo8d3n
	JPXB5cVvYbIylTWWzoXdJ3hv1oworAaDhfE37Cmxr0AZnobK0pptPlyfdZEI1zyk/f8r
	FwEkf9q38B9ioY9gTTV0Oc3K9hB3+BJTDByrts/umtN001T1YC2dNzC6h0BhGay+9r3R
	jadv38sP0ukZblg7amI4zOiYFA4KTf5pRC4TKGVnXq/2OHbdDGVYQI8yF0Hy6EMbF0G5
	cV/zSSKKVU7jW+hSCodflhkvOo5T0ldDJuUDbzlmDgVr40lBlbnmy+tVrgSCj2j64Xao
	x6oQ==
X-Gm-Message-State: APjAAAUsR9a21qV4sZU6VNDdXDVUw/NzTa1zUoA0nsEL6An8AHrAkcxg
	c2uBeCqERq7IrroYW+me3Wch++7s5RvOKA==
X-Google-Smtp-Source: APXvYqyVNxuCNygScuwxP0vAU35NC/fisGRkA8uBLsae1Iit27zOtqeYRuCjNiEP8HKMC5YDwJwO2g==
X-Received: by 2002:a1c:a558:: with SMTP id o85mr27990042wme.30.1567417058437; 
	Mon, 02 Sep 2019 02:37:38 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	e4sm11368075wro.21.2019.09.02.02.37.37
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 02 Sep 2019 02:37:37 -0700 (PDT)
Message-ID: <7597589de33f174bcb4671f3b187f25746fbb354.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gyula =?ISO-8859-1?Q?Kov=E1cs?= <gyula.kovacs.kkb.tech@gmail.com>, 
	poky@yoctoproject.org
Date: Mon, 02 Sep 2019 10:37:35 +0100
In-Reply-To: <CAG6kgP4ZgS4gERCqfGUNYJGJ1zD1NDX59UzHLTM_UGq1s1U0Jw@mail.gmail.com>
References: <CAG6kgP4ZgS4gERCqfGUNYJGJ1zD1NDX59UzHLTM_UGq1s1U0Jw@mail.gmail.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: circular references in recipe-depends.dot file
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
X-List-Received-Date: Mon, 02 Sep 2019 09:37:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2019-09-02 at 11:15 +0200, Gyula Kovács wrote:
> Hi,
> 
> I generated the recipe-depends.dot for yocto 2.6.3 (this is the base
> of our system) and wanted to create a simplified graph of the
> dependencies. (The recipe-depends.dot contains all dependencies which
> is not best suited for displaying. So I wanted to build a dependency
> level structure that does not include indirect dependencies. E.g. If
> acl depends on attr, the attr's dependencies are not listed for acl.)
> During the simplification I found that the recipe-depends.dot
> contains circular dependencies. E.g. acl depends on attr (which is
> OK) but attr also depends on acl, which is obviously impossible.
> I checked different yocto versions, and the problem is also found in
> versions 2.7, 2.5, 2.4, 2.3.
> The simplification works for the older versions (2.2, 2.1 and 2.0),
> which produced pn-depends.dot file.
> Has anybody ever encountered this problem?
> Have you ever tried to create a simplified, easier-to-read format
> from recipe-depends.dot?

We've just removed recipe-depends.dot as its confusing people.

Dependencies are dependencies, you can't just ignore some or remove
some just because the graph is complicated. There is no such thing as
an "indirect" dependency, either a given task depends on another task
or it doesn't.

Part of the issue is people don't realise individual tasks have
dependencies (e.g. do_package_write_rpm needs rpm-native and so on).

You could use the task explorer (bitbake XXX -u taskexp -g) to have a
different way to visualise the information.

Cheers,

Richard





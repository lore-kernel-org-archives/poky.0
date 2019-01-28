Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7905E00CDD; Mon, 28 Jan 2019 03:01:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f181.google.com (mail-it1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A52EE00CB9
	for <poky@yoctoproject.org>; Mon, 28 Jan 2019 03:01:08 -0800 (PST)
Received: by mail-it1-f181.google.com with SMTP id h193so18687878ita.5
	for <poky@yoctoproject.org>; Mon, 28 Jan 2019 03:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QJ2bAUB9szAGgRB+bjeOe4PLWx1BDkc11YDFeIDOTg4=;
	b=T8hvP1rNPUIz2aoOm/t8v+kK4JYjey9kMlefMXiJ4pAf2lQivLgdNSOqIq1/km4wnd
	poM8tCCo3EzeOeT2YGiDCbIRt207Y5cjBatyYk0bf48sQS3QwYhlzU5ToeqUDJZpUbvc
	uWb9BVWsZTfPXw3nGnt3s3GU5umoUa+Bl/bvdnmCWrz/yALnpVnIOH4XVVdBMwC8kPeJ
	9MVqzqzr6KtzNAJy9tBb386Zn6z7xeXTz9iri7wk4NLE1ToL5ZT1DrbkFryaLANDoiNI
	yilZ/DCWpZN6zNSHJuUTXtPUxtRluliVLiKIbrJA9fuZtVXLqBCjRVAK4nXhteYU/vA7
	PyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QJ2bAUB9szAGgRB+bjeOe4PLWx1BDkc11YDFeIDOTg4=;
	b=d1/35bzBZycL3PWeLRBBHHDZpzBxJFdHjg13xTGvBl0DOgrkT8PzEcX+LDryCi4rxi
	cuPj4Gcei0qmxFzwgOV2T8lyibKCjDjfaC/bOk5gqphxPlPYIT+XDow6bj8rFBtyO4Gd
	8J1XHUP/ZihPylLYV1QUMX0Ybo4eFRqIxpI6eQH2IOn28K1r91V4yz05lx26xReLF0O4
	X8C95VC5hn5p+fufvIVFkoKea2oQiIJ6dH8/0igkxG2RwYQRPW0IJ2Xwh+W2TCHlG7+R
	zllu0LufQSWMYQB+dzK2G5+avV8jZndhSKt5R3dDHir68PuGC19I0vOKD1pDN+So8Jqy
	kFmA==
X-Gm-Message-State: AJcUukeSg7aiRg8xxE0GLk/EcGp3X7ad8DaiZo+PHkyPXkIHHUpOwpe0
	8adHEw5Vi8QHpor/lFqD073Dqog4TztwbjH7XCQVcg==
X-Google-Smtp-Source: ALg8bN5xK/CZQlopkFosNF5jnhGQskWiSk/5/p75CEScEhmK2lvvdpcnA+0Hr83/y7p7LlRSq7p6Y7wXmVnnCZ4eH/w=
X-Received: by 2002:a02:1bc5:: with SMTP id 66mr13706181jas.105.1548673267916; 
	Mon, 28 Jan 2019 03:01:07 -0800 (PST)
MIME-Version: 1.0
References: <CALd6x_uvR57xrXKkxZi+Y_fLZXLcziEMsS_nyguJrnNymHeA-w@mail.gmail.com>
In-Reply-To: <CALd6x_uvR57xrXKkxZi+Y_fLZXLcziEMsS_nyguJrnNymHeA-w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 28 Jan 2019 11:00:57 +0000
Message-ID: <CAJTo0LYMH99W7sh10LEWs9v5bx96pbkAL3R-pe4J523SgL9aOQ@mail.gmail.com>
To: pawanKumar <pawan4749@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: Bitbake Issue in Yocto 2.7 M2 rc1:
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
X-List-Received-Date: Mon, 28 Jan 2019 11:01:08 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 28 Jan 2019 at 07:04, pawanKumar <pawan4749@gmail.com> wrote:
> While running bitbake command, I'm facing issue as:
> Error: OE-cores config sanity checker detected a potential misconfiguaration.
> Either fix the cause of this error or at your own risk disable the checker (see sanity.conf)

Above that it would have said what the problem is, can you paste the
entire output?

Ross


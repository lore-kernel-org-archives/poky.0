Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E521E00CEE; Wed,  2 Jan 2019 14:12:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3D27E00CEC
	for <poky@yoctoproject.org>; Wed,  2 Jan 2019 14:12:47 -0800 (PST)
Received: by mail-qt1-f193.google.com with SMTP id i7so35067111qtj.10
	for <poky@yoctoproject.org>; Wed, 02 Jan 2019 14:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hgpoVJuuMXULsPK20AdxsQPL8l5/MYchg+osRW4TIQU=;
	b=gnbFWskHv9TEBYufJs0Xw49ZNmYq+AV/sjDDzZBa1zdQCMRJp2YWKJTvozkhNgA+CR
	9jjDEOsIHG3qFWe6CQJ/bNeqLJnW46NMWHVUg+5hxYplmj7y2bmYCDTyoNfVvu1WAk5R
	oj953WWmC214OQ0+03fslgFJxQSWwkJqNDirLusPJWUOK/tXvgpvyZ9ir0XQtj1WIYMM
	oe6CeDRZMuya6WwohwZSY80Ot0MGsd4QQEGPO3eDfl3XDRAnT3tb58F4/+e24SShv+DL
	4EUSs5bQJeJsVTJB/rYvrVfBTd6oRCj/sLkzOyWybfIt1eXBzNkZ4+0Xq8j3AfqNhxQs
	ipUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hgpoVJuuMXULsPK20AdxsQPL8l5/MYchg+osRW4TIQU=;
	b=p0U3MVvrvjqieixr8kq7lQWHYFAquqoGncyq5/cjUBYH3H3D4VgmFZV9y2MjTrQ8o4
	9NIHpyqxs1S58P5XJvI+5vQOmgKbWA1emmum0Wo08NjVOgDS/5JSuaY745aoqwg7Mj/7
	qKQnSGWdTx7S68UIrP81Iys+hwGGdK4qUWCF6pK52fIEacm1DMscZbB023prEuZj4ZJ8
	fOBcJyNmdcwKLL6iTAb9Ni8aIzQrhz1dieVsFFoub7zJOqqNB9wH/WRCt4N87HMPqzHX
	4Rd3/GSjfsNJ94IsYDaxVMZ/WiU9c2rJfFSsJEsiKJsu6KThN7PmSvJptV4lesjJ4VUX
	7o+g==
X-Gm-Message-State: AJcUukcD8wwKs0qLmiVIPLoZSxHivAfxiGWzsoN5hKCzznTvq1YklOsV
	OCGGzn+c9e/OsEusjQfw4KDxYo7pNbPwM7SlQ2o=
X-Google-Smtp-Source: ALg8bN6bfpg+mMRtDpRbWKECEA1FAHK2B9GFQyadXj4F3KY0U4XiAkH5dCdj+vKo/me3MIDg+g4EHHBAT4a8Qtw3IiE=
X-Received: by 2002:ac8:36ba:: with SMTP id a55mr43209895qtc.236.1546467166805;
	Wed, 02 Jan 2019 14:12:46 -0800 (PST)
MIME-Version: 1.0
References: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
	<19502b0e7af03d079fba940f817c355dd5d2c1de.camel@linuxfoundation.org>
	<CANr77M31z20u=4j+2Eo2_Y4eqYdCtekKjEJARwHvg0HpWm68=Q@mail.gmail.com>
	<379f68373e68c56796034229c765388517e3b8e5.camel@linuxfoundation.org>
In-Reply-To: <379f68373e68c56796034229c765388517e3b8e5.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 2 Jan 2019 14:12:20 -0800
Message-ID: <CAMKF1sp9pCudPPOZs41Gwy+xf9y11w7u_LJgDJqbXe3Fy-Pt3Q@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org, Matthew Stanger <matthew_stanger@trimble.com>
Subject: Re: glibc-initial fails to build in Thud with arm926ejs tune
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
X-List-Received-Date: Wed, 02 Jan 2019 22:12:48 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 2, 2019 at 2:07 PM <richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2019-01-02 at 14:26 -0700, Matthew Stanger wrote:
> > > Can give follow on config.log's and such as required.
> >
> > Yep, I'm using the default 8.2.0 default.
> >
> > > The mcpu verses mtune is open to debate, it depends what your
> > > priority
> > > is, feed compatibility across multiple processors or potential
> > > micro
> > > optimisation for the processor.
> >
> > This machine.conf/meta layer just needs to support a single target -
> > micro optimization is definitely desired since it's a potato ARM. I'm
> > guessing I could just override the 'TUNE_CCARGS' in my machine.conf
> > to '-mtune' then?
>
> Yes.
>
> I am puzzled why the defaults aren't working though as I thought we
> used something like that for qemuarm which we do test... :/
>

from logs it seems to be using
DEFAULTTUNE = "arm926ejs"

for qemuarm we use

DEFAULTTUNE ?= "armv5te"

> Cheers,
>
> Richard
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


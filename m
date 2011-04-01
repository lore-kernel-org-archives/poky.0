Return-Path: <cgwalters@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CACC4C800A0
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 13:25:59 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so4443960wwd.11
	for <poky@yoctoproject.org>; Fri, 01 Apr 2011 11:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=yYvNzkHECFWpb2PUyN0llU4td8ShOnl0PzPtd3Mb7Bc=;
	b=HljHkkNFe3g+EHCeW+8lnZ0Xy196V+huYc9muKJlHflpIGyVyofd6r8SkRh6PU4oqI
	0h2VufW2C5FRt9DZx22Go+4ZS2E0gQh69q+/R7iOXyYbPibqx9yzAqnsIbk+Zz4sXe2r
	f7DjxS1K8i2STWX2xYQ2ZuBJ25ROl9p4L7+Uo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=rY0EAKCJtFJ7nUSkRmFZgIPvNq+20OF7jPqH23OP61hGZkRgfhjS8qelfxg/cC+7ue
	jc6z56OLu0qRL4gNxbsAoRP8CmTwvLnmK5b+RW9vHoi4NqzvgCdt9CjbK9qO6kadZYt8
	7JlkJIR81OpaRUbXMXu7xSWDYwLT055w8BSPM=
MIME-Version: 1.0
Received: by 10.216.205.13 with SMTP id i13mr4243516weo.36.1301682358802; Fri,
	01 Apr 2011 11:25:58 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.49.20 with HTTP; Fri, 1 Apr 2011 11:25:58 -0700 (PDT)
In-Reply-To: <ffbf4efad14a7793d55747fa1272a24c58b3a7fc.1301664697.git.josh@linux.intel.com>
References: <cover.1301664697.git.josh@linux.intel.com>
	<ffbf4efad14a7793d55747fa1272a24c58b3a7fc.1301664697.git.josh@linux.intel.com>
Date: Fri, 1 Apr 2011 14:25:58 -0400
X-Google-Sender-Auth: OWj1mLd6l3RuktDe6pgBHfn4WRY
Message-ID: <AANLkTin0Ffx023hsX9W35F2=dASuL6X+aU2N71Mx3oQw@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: Joshua Lock <josh@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/7] xorg-[lib-common|proto-common]: disable use of fop document generation
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Apr 2011 18:26:00 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 1, 2011 at 9:38 AM, Joshua Lock <josh@linux.intel.com> wrote:
> From: Joshua Lock <josh@linux.intel.com>
>
> On Fedora 15 I see a huge Java backtrace when document generation runs for
> some xorg libs. As fop is automatically detected, with the possibility of
> detecting fop on the host whilst doing target builds, the safest bet is to
> explicitly disable fop for document generation.

This is actually a bug in the GCJ stack; it should go away if you use
OpenJDK.  Try using "update-alternatives --config java".

But yeah, I doubt any embeds care about the docs, and certainly fop
pulls in a frightening dependency chain; so cool by me to disable.


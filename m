Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA524E00C4D; Fri, 25 Jan 2019 11:37:33 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A962E00C29
	for <poky@yoctoproject.org>; Fri, 25 Jan 2019 11:37:33 -0800 (PST)
Received: by mail-oi1-f193.google.com with SMTP id x23so8522534oix.3
	for <poky@yoctoproject.org>; Fri, 25 Jan 2019 11:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xPdcBiRkly/Pl3luIZfgkymfFeBwHA+n1cQjTYMmYrQ=;
	b=nU9k07eiuqdaKadcq4RYfteIeSFTCBx9IJJARqwBdDED6ELyyX1BD5rBH6Scg3piYe
	hRz5wmmnvnXqjDrEXNfCdKmOlkYbZA3PpNtt4fQQYyw6PYRBkpC8GPpPO+WH2Td+vOHV
	7Whr7EtKnvDUw26VCIzp2pZkY9oUsD1E3lMjpsQ/57x0nGNWGV2Wz83o4CLn4pfBfauk
	I0Z6mQbHQQDIrQgvMhtmc88egrEr1RgvN13jos2bHVcqjZ8G9+BtWp1fIYgz+0TPtLt4
	waAW1mFq0vFWn3zuvaA+pQO36wjBF9X9OL4dUsnjIwNcXlIfkft9gNdeLd086CXw8Qib
	JXbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xPdcBiRkly/Pl3luIZfgkymfFeBwHA+n1cQjTYMmYrQ=;
	b=XT09iQZ1/5cCJnB6fqmRo3h6v+GCMmQIG/zl3lo3S0rlp2QcwjOf0FbEdZTgSDBbQy
	LSUsWRK3B4pR666rp3FmUCTYk1ax0fBkg9Iq2D3xhebhQNOuoMa3A5naQqSg06ANR6xd
	5D602lvgnsB2QsScZiPCgpk9uqQo1MPqD4gBeMvvde7+TZejt8RLxHStsbGdDXqLWUCA
	REyyWHnkgFXtpEMeE2f60lRmS2oh+KD9ijFbL1NE58aokamVGymDfRe2Ogdsm5iMIsDf
	CYdsN3tyqCT3DQqX761M+wD4yDJqOc3nTNz1y9IuKlspW05VkbbVRNEE40XBQybq0f+3
	AkAg==
X-Gm-Message-State: AHQUAuY4qNLsItY/gBXUyBQXyQeyA07bB2oCw1NuKHMmxa9O3XiP6Tcj
	Pp0zPZeg45kd9EP7Hy2tviLaVPMWFmlvRoXVTvU=
X-Google-Smtp-Source: AHgI3IYAqo2Q4oGZJgf1pq+eLH2+XwcGZRFJKYAirumfD8Yh1hby4ffQbreWPngfCwJoTOjYGM1ZasN/6BNMEA/7l0g=
X-Received: by 2002:aca:d78b:: with SMTP id o133mr2073783oig.232.1548445052544;
	Fri, 25 Jan 2019 11:37:32 -0800 (PST)
MIME-Version: 1.0
References: <CAJkqNs1bYfi32DSq+=KUOODgygq2gZ9=f+xBGoVA70yTvcrQtA@mail.gmail.com>
In-Reply-To: <CAJkqNs1bYfi32DSq+=KUOODgygq2gZ9=f+xBGoVA70yTvcrQtA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Jan 2019 20:37:21 +0100
Message-ID: <CANNYZj-hicF=wqhcMSixeDrbWcmLXVbtv5zVaCfdfT=G_n4o0w@mail.gmail.com>
To: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PULL][PATCH 1/1] lib/oe/patch.py: Fix applying a directory as a patch
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
X-List-Received-Date: Fri, 25 Jan 2019 19:37:34 -0000
Content-Type: text/plain; charset="UTF-8"

This should go to the openembedded-core mailing list.

Alex

On Fri, 25 Jan 2019 at 20:32, Tomasz Dziendzielski
<tomasz.dziendzielski@gmail.com> wrote:
>
> If a SRC_URI content ends with '.patch' bitbake is
> trying to apply it as it's a patch file.
>
> It causes that if we use git repository for 'patch' package
> the bare clone is extracted to a directory
> (i.e. build/downloads/git2/git.mirror.org.patch/) which is considered
> to be a patch file, so patch.py tries to apply that directory as a patch
> which ends up with a failure.
>
> Signed-off-by: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
> ---
>  meta/lib/oe/patch.py | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/meta/lib/oe/patch.py b/meta/lib/oe/patch.py
> index 07a40fc50e..3d0b7d7289 100644
> --- a/meta/lib/oe/patch.py
> +++ b/meta/lib/oe/patch.py
> @@ -793,6 +793,8 @@ def patch_path(url, fetch, workdir, expand=True):
>      """Return the local path of a patch, or None if this isn't a patch"""
>
>      local = fetch.localpath(url)
> +    if os.path.isdir(local):
> +        return
>      base, ext = os.path.splitext(os.path.basename(local))
>      if ext in ('.gz', '.bz2', '.xz', '.Z'):
>          if expand:
> --
> 2.19.1
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDB2EE00D32; Mon,  1 Apr 2019 02:20:01 -0700 (PDT)
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
	*      [209.85.167.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 631B7E00D20
	for <poky@yoctoproject.org>; Mon,  1 Apr 2019 02:20:01 -0700 (PDT)
Received: by mail-oi1-f193.google.com with SMTP id n187so6636888oih.6
	for <poky@yoctoproject.org>; Mon, 01 Apr 2019 02:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=as4+TL9DfBY4/8AuNZCuH8h6EovajY2pCEHUrCrIdso=;
	b=ekjRj+PgNHDV88BHjBIUmzMtT6Tuo+iS+CZ0u/tGN4V14bh+6sYY9JKQPQJhdWyuhT
	r/fpXp3jvu4Kh/G/PiUdQRSLfGsMT/QWEb3TC7U3J6KBaa/B6obzPe8X583Qyq6KMoH/
	Yj/ie5CX1WXXcs9vmcJk5ZS42P/RbZtdw2w2xVfyHyg0DsIgAp4yYpHVp4VechEE6W/J
	uY3DhjxQTtTJFMqSHDCJUcfdLok/w2jHxjxE21rNHW2TILuv014So6xDhaBbf+k1k4HR
	bSIyFe6xQbd0lXeS6TaMHc7HpQY8ZExwfIlCEsM7PydDVOYgNkQcrRKa8t95J5gBMYbG
	IBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=as4+TL9DfBY4/8AuNZCuH8h6EovajY2pCEHUrCrIdso=;
	b=XQOj/fEcgYpioKA0/sB/Z7NVpUSaeWr4E/aCyfe/9fi//xPgPMjjNA4p1Tt2C1lZkM
	bNCP2PnU+VAEfrZqHjvl6dFYfI+3loogml8VHgqmKckfm5YFYX72O2PNbNRjSlKW4Q/B
	ZEKT9wVZC+ZKMkjDYt5OVfLeD5JEqluEQimAFGQa+J2ZjUE2G4jz1BXj1zO4or6zSDd+
	mY+6ccCY8TKb/fQ3VLziHn9VAC9CujixkyKSKI1buHG2mG7GL0UJWEnzkf25EljXJ0SO
	oHjgkZCetCJjJGH2l7ZzyV/kw0SJMFFSRbEb5MwfZi4SIwP98ZlE5RVewrTcQaptEusj
	gtPw==
X-Gm-Message-State: APjAAAXbIdg8m8P2a5912fSKOLZR0uoMT1eW3DYzX6106Bqxs/LzkH1D
	L3almXMXcvNga4N6p3MYUUiIYDDAY0RxwHP0shm9VzVI
X-Google-Smtp-Source: APXvYqxj1nqU2QlkOB/lKSD50T2HRVI0PRA9/hnp7z6OaxQSivZ5ciwYN+H4dkbG/R6NGf4gYb4YdiTlfk6mE6FRTqE=
X-Received: by 2002:aca:ed88:: with SMTP id l130mr11652226oih.70.1554110400700;
	Mon, 01 Apr 2019 02:20:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1554106752.git.xavier.berger@bio-logic.net>
In-Reply-To: <cover.1554106752.git.xavier.berger@bio-logic.net>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 1 Apr 2019 11:19:49 +0200
Message-ID: <CANNYZj9hVr8KfCXXXDHyubS44fEBPPdtpwHqab7qPGp+Rp9ujg@mail.gmail.com>
To: Xavier Berger <xavier.berger@bio-logic.net>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PULL][PATCH 0/2] Implement debian packages GPG signing
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
X-List-Received-Date: Mon, 01 Apr 2019 09:20:01 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks, please send these patches to openembedded-core mailing list.

Some kind of test case similar to the rpm feed sign test in
meta/lib/oeqa/selftest/cases/runtime_test.py would be good to have.

Alex


On Mon, 1 Apr 2019 at 10:45, Xavier Berger <xavier.berger@bio-logic.net> wrote:
>
>
> The following patches add signing feature for debian packages.
>
>
> The following changes since commit 3bc700a12d4f21a5c7a1575da0972f9f78b4a091:
>
>   mesa: update 19.0.0 -> 19.0.1 (2019-03-29 08:28:53 +0000)
>
> are available in the git repository at:
>
>   git://push.yoctoproject.org/poky-contrib xberger/deb_sign
>
> Xavier Berger (2):
>   gpg-sign: Add parameters to gpg signature function
>   package_manager: sign DEB package feeds
>
>  meta/lib/oe/gpg_sign.py        |  6 +++++-
>  meta/lib/oe/package_manager.py | 19 ++++++++++++++++---
>  2 files changed, 21 insertions(+), 4 deletions(-)
>
> --
> 2.7.4
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


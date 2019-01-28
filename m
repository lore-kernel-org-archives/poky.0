Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4718EE00CD6; Mon, 28 Jan 2019 03:09:39 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDA38E006B3;
	Mon, 28 Jan 2019 03:09:38 -0800 (PST)
Received: by mail-ot1-f67.google.com with SMTP id n8so14261211otl.6;
	Mon, 28 Jan 2019 03:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=eUVwRkednJ6PcB5PZUBszdT9VQ/WrGRqaRofLtuf/5k=;
	b=CpjHEhEBPmnVxWK5qMBBcRh0zM4Qq3LpJwank1AWV0fLaY5AAnbtwwjvvjaCPvnYtx
	/DGc6BMBWNT4rifvO1fgtePu049qcUGeYfUdyg0EbCr7KV1PqaNFlDseDrQ95dXcRNof
	oRvg8F2d0wrOFPz15TqzuXEAIBzQ20eoD4jtnriEd9/RKuWpOE6lEfLO0VtZ1F3wHfxx
	xQDAxXL5j7tZDWRKCNHbOhhXL2MDYyJBkW1a/PnKUDe44PyQUlRp1UN5/gc+DQSe7Ey2
	rJa4XMrZwQjYy5yqFFXKlXX6/SSru97LDLL+rX7y076zbzxQNFEczPp//XXx4mE+TMGp
	9yHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=eUVwRkednJ6PcB5PZUBszdT9VQ/WrGRqaRofLtuf/5k=;
	b=YrAAIz/H2yS8Pi9EwUK0i+hhQ5VYzJaahTkkrzuMTUL3ouLzxekHhcxs7tkbeNnfIS
	2oAppTbc6nXydjEvMtSsfaaovhOfLPoccSX7tzl1lwhwizQ9qc/9h3JUabR0XZfwyxiP
	m/nuZsSlekw2qtrHd/3I0m+yPbkmlSpqSC51EY88yHiRSMBk4ERbnPkXXFx/XFDP65lE
	ZuwEc4DX37D+mVTrlYXMtAqanByzeFgAuPFU2MQGz4OOLX5qdIP0NETnbr4Lpd9U9Wku
	wgz1/Xq37jLDFLHjhJEHFI42xUMjP/eyb8wfgjUVnD/deIJbDlumonXpJlSm+mHGCDjS
	J18A==
X-Gm-Message-State: AJcUukfOC5yNl1UKryINdWYliRXmwpl1k4Z2gwDdIvyG2CBztH6bodQN
	X/UrcbwBqDA87HIeFn2wre20tpeN8inOftu+32MSRQ==
X-Google-Smtp-Source: ALg8bN425SlvYKjHyBPsjABiJbchK2Z6k8st/WWyvA8uBGGRpcNt2n4cox1kVxikmowKbeYJCfvaksLZKPtabHq0/HM=
X-Received: by 2002:a9d:c06:: with SMTP id 6mr16576436otr.326.1548673778240;
	Mon, 28 Jan 2019 03:09:38 -0800 (PST)
MIME-Version: 1.0
References: <1548670803-27762-1-git-send-email-Meng.Li@windriver.com>
	<1548670803-27762-2-git-send-email-Meng.Li@windriver.com>
In-Reply-To: <1548670803-27762-2-git-send-email-Meng.Li@windriver.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 28 Jan 2019 12:09:27 +0100
Message-ID: <CANNYZj_k-Kp4Xnaa2LEdTXAybw72MGQ9EUNgbzaRNp45okkgEg@mail.gmail.com>
To: Meng.Li@windriver.com
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: [yocto] [PATCH] u-boot: update commit id to the latest one of u-boot upstream
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
X-List-Received-Date: Mon, 28 Jan 2019 11:09:39 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 28 Jan 2019 at 11:20, <Meng.Li@windriver.com> wrote:
> There are 2 CVE issues fixing in latest u-boot upstream, so
> update commit id to involve these fixing patches.

We generally don't update commit id's to something random, as that
means picking a source tree in the middle of a development cycle. If
you want to update a component, please use a commit that has a version
tag attached to it.

Also, the patch needs to go to oe-core mailing list.

Alex


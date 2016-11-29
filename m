Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62C1BE004E5; Tue, 29 Nov 2016 09:19:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44986E00498
	for <poky@yoctoproject.org>; Tue, 29 Nov 2016 09:19:06 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id 144so8680131pfv.0
	for <poky@yoctoproject.org>; Tue, 29 Nov 2016 09:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=FfMrmaLTUrQlpHeIFooRxXnivruhGMobA9/AesBxxno=;
	b=iEqa/ArjAxkj22yhbi6l2Guo9LsfbmvR53quiTAM3OKqAQCKESnkP3UuyahDZT2Rpy
	eiIaf2DsKh/XF2YcDfHXD1o9RMLLbVH3V7leRHZqTzNZOucaAYzUbGYaEn5O/sRcxuYg
	nkaEgJPN9OLmELiXq3bPjZcAS0E0lGkrOcu/3GoYBSBXgbcOBo01G1eUHP5kBAc8YXl4
	BKAzEdEjuEYo91qfvOgwW5of0l6BBye4PQx1nnYoTui2OieGOF2p1yN4kvA6aL8nxdSF
	vq6UYzA+FNAMgDI7nyVNow9hRIeGVLeCjPXQwVZeIBJ/HNAM/MvuBGKHXMHctSCIfCc9
	mOxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=FfMrmaLTUrQlpHeIFooRxXnivruhGMobA9/AesBxxno=;
	b=kTD2IobCxt7vN/6nfncMjSVauv+O35a6pMyGHFIz31l1fzlkYtCIaS5xvONtZXKgFF
	jWmejPdzX9YN4ygc1jYDjSOpQkwvbAznEof0BEqVcKtlHleV/MhQeXOBnDzKSY3UKE79
	gsSJpehjNHnCDH/sRRFTyu2BJ+R9RvW0vSGFl+JWALFB89LH+10nOWr+GmvBEwYETcdD
	q8TY8DhMTEH7R1b5fcGF821LRP/zqXhZki+yjtrhr8GjfQrGqRkzXnhQ1kMkcBYgqxu6
	baSSs0fdo1BwWw/xf0tbcbh9k/KMkd8Grv2eQHNcje7Rgu5LXbKNJPCnrPHYBSG67md1
	sF/Q==
X-Gm-Message-State: AKaTC03OUgv3D1LjkA6Vj1Jat29ckeSr+qiV67+Zi3SUGqbqryKV8l4hx9ccl95jmpZnlQ==
X-Received: by 10.99.112.66 with SMTP id a2mr51612374pgn.43.1480439945613;
	Tue, 29 Nov 2016 09:19:05 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:a19b:b7db:ed72:12bc?
	([2601:646:8882:b8c:a19b:b7db:ed72:12bc])
	by smtp.gmail.com with ESMTPSA id
	c22sm78771789pgn.12.2016.11.29.09.19.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Nov 2016 09:19:04 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <51ce51f1-a542-5c58-08eb-db2a39747614@linux.intel.com>
Date: Tue, 29 Nov 2016 09:19:03 -0800
Message-Id: <3D3D535A-8E77-4A48-8025-B7FABD128967@gmail.com>
References: <cover.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
	<e2521c31acb6e6cdf59e9d7101439035efe085be.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
	<1A8E575B-ED23-4411-AE18-DA3EC439F3F5@gmail.com>
	<51ce51f1-a542-5c58-08eb-db2a39747614@linux.intel.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: Apple Mail (2.3251)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2 1/1] selftest: skip tests for poky-tiny distro due to incompatible kernel machine
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
X-List-Received-Date: Tue, 29 Nov 2016 17:19:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Nov 29, 2016, at 8:57 AM, Leonardo Sandoval =
<leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>=20
>=20
>=20
> On 11/25/2016 10:10 PM, Khem Raj wrote:
>>> On Nov 24, 2016, at 1:34 PM, =
leonardo.sandoval.gonzalez@linux.intel.com wrote:
>>>=20
>>> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>>>=20
>>> The poky-tiny distro points to linux-yocto-tiny which in turns the =
compatible
>>> machine is set to qemux86. Current tests are defined for just =
generic86 architectures
>>> so tests are not possible for the corresponding distro.
>>>=20
>> can we fix the distro policy instead of skipping ?
> That work (meta-intel compatible with poky-tiny policy) is in progress =
and should be ready soon (not sure the date), so I believe for the =
moment the skip is valid.

in this case. OK=


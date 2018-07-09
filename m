Return-Path: <john.tobias.ph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AADE4E00C99; Mon,  9 Jul 2018 10:00:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.tobias.ph[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1169DE0080A
	for <poky@yoctoproject.org>; Mon,  9 Jul 2018 10:00:04 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id a6-v6so14626897ljj.7
	for <poky@yoctoproject.org>; Mon, 09 Jul 2018 10:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9Uj+HCX5Eo7VaeOnmgwxpJTcazETaeZr6z6MuZLE4Is=;
	b=ZclLIKRfNipfhBFUvce0SZbuYR7jFiypnCdvXwu9UJCpGIE796/2LXUFSOSUNNgzX4
	g/qIC2DGY3aKg8DYdcZXODua+s3bP0GdE3STgUysNZMNVTfDZhHlChFuFsvFIEM/+9HF
	tr4PLRORFa4lt4HGYBDE/sT4uKMW/vLvMM5BQshcwhqGoUNLQx54qVDMlNczbWrGfMmS
	DYhQZ62n3n/o/96iA6EmTkWOF3XdxW8Jj0zybjg4NJpnTZSgGpJ1GoNgAbBcbIj7FAKe
	tJSmXJUtxgmDIPsR+WMq8sAe2PbESCqxbHgJ6FuemJFYZLrY8mrTjF5X8nTQFOfAcehU
	sqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9Uj+HCX5Eo7VaeOnmgwxpJTcazETaeZr6z6MuZLE4Is=;
	b=KW+S8EKoJczjcKCoIPtqhkXyCPIjcb6vp5dM32+tzePbgRUd3JlUw+8WO4cFuke5AG
	mPw3kWS2foS3LZ1orraiqClrdm+gD2HAxZJ1wNydW1oHWnEhyOhBzX8NMOQEf5gUzTYH
	dwYn5vAuXfiS9pfSNKsmA67VzdYz8jyw0oOw63CQlp9UEHE8yOxnqsWbC27GeV+63MsH
	tEDCdrwxtyQ2PdcpeXuZk4VNpXDkmZjNFXYBfsW2BaS5/n/MqUhW2eRCumHgTY9WHHG0
	7AT2bkPQMzft5VWTRleJnfVzI67p/Y7Njud6c2CyLphUwH17ZNC4vrSVEfB2b82YU/LJ
	5YLw==
X-Gm-Message-State: APt69E0m1/P2jt37XA87ZPe7CF7iaTSqcVMJ/LTYuINQGVqPFqiSaN0/
	b5LeCZ9FyvMlxzOVJwzSvEsc7q0b3pmsWdMzViQ8eA==
X-Google-Smtp-Source: AAOMgpdOTi0rHZwiBjwjXw0vkmRjHd7c/eSEQjT4OiEFmNV9EezuwWAAY20cB88lr9Qe+e/5JkAr3TjiGye875aJ9Ww=
X-Received: by 2002:a2e:9f4d:: with SMTP id
	v13-v6mr7336410ljk.42.1531155603740; 
	Mon, 09 Jul 2018 10:00:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:5181:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 10:00:03 -0700 (PDT)
From: John Tobias <john.tobias.ph@gmail.com>
Date: Mon, 9 Jul 2018 10:00:03 -0700
Message-ID: <CACUGKYOiv-Waks6G3x41798c2SfKtCkWvjhfcMOLLbaoQwPz=g@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Poky (suma) switching to systemd
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
X-List-Received-Date: Mon, 09 Jul 2018 17:00:05 -0000
Content-Type: text/plain; charset="UTF-8"

Hello All,

I was trying to switch to systemd so, I followed the
meta-poky/conf/local.conf.sample.extended documentation to add the
following (below) into my local.conf.
DISTRO_FEATURES_append = " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"

I ran 'bitbake core-image-minimal' and saw the systemd was compiling.
When the bitbake raturned, I checked the image directory and did not
see the any rootfs images.

I would like to know if anyone successfully switching to systemd in poky?.

Note: If I build an image without switch to systemd, the bitbake
produces an rootfs images.

Regards,

John


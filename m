Return-Path: <stangerm2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4DB8E00C15; Sun, 30 Sep 2018 12:01:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stangerm2[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.47 listed in list.dnswl.org]
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACE9CE0090C
	for <poky@yoctoproject.org>; Sun, 30 Sep 2018 12:00:40 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id w67so1551789ota.7
	for <poky@yoctoproject.org>; Sun, 30 Sep 2018 12:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LLs4Luz1wHk7wV2wE9GM/AtwB0JBGfm9tT2LQ4sp7EE=;
	b=o1DvOlS/T7rU01p1vxrkq2DGiDGN8KMu0KdKbGthM020MIzDX51MsYIUyQim+UPGEI
	R4x/1QG8sfbBUorbErwBu+kBDL1qyhM8lsX/kKm1POb0x5Q3zwq/bYdn8BLyRx6XdG4E
	gpPPdHbXufQkJZkuxxj4+7TwKyNf6K70AQgVdUMCU6UOWd2vBMmbl1wXvkavpW6CPEan
	RUmG6tegw6CVoeaBWc3csQ32YgJ01mIZ7W6rQK0TCM3puPCjLFW1bhZiCMNMdv0SZfiE
	OXyC7GPCkInh9OTy1xI9Ww1kFF81OqkFoLEH110rXUUYIirfMCOCWpLnLooM9p/RkLXx
	Vpjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LLs4Luz1wHk7wV2wE9GM/AtwB0JBGfm9tT2LQ4sp7EE=;
	b=E0JQr0mKEQQvz7XBjKYw6ZgNNubaoJzNiHACXs5i0xqKgxgPuTCLQYa5gtOHXPj+ml
	M8gcRROpDxE3F2YhezbJGQvkBVWX4VmmlbYQKJsvigcpLoud33DVe2ckz1yAYFFabEU4
	N3TTvFOs+j7JmJZwmP3jpOSxfJU/HCqg1kmzqmUNp7pVHBpZ7wlU53ShCZb5zgoCcSog
	k2PyKMPeOwBH1PKCMfZPzXIpX0dq0YQFIlX9o3p/JnpeJP6MjoMqwVUEyrB8sAhNTjLk
	8zmBNevrhirucqsB9FLU829V/UopRnpYKL68vBlhSffRTjYFzZU2ZSh00/tSYViQWNFp
	Qr7Q==
X-Gm-Message-State: ABuFfogoiXQSPUCP0Xlnt2Qtw6i0IH6zvyhBLZ2+Ic5ZaPmfo0Mjs2bT
	B9rOf83xBhaM7ayhGdbcjMNw4/ZOlPutAPusxkx+ccY=
X-Google-Smtp-Source: ACcGV60sVta15RH+9mlYc9dKcJxsfCzaiQeCsFrPAPfHPG+WE2uHYKKoUWhDqRlduu/pODkhKeRPNwIc+iUGULva3nk=
X-Received: by 2002:a9d:3e52:: with SMTP id
	h18-v6mr4172170otg.210.1538334039832; 
	Sun, 30 Sep 2018 12:00:39 -0700 (PDT)
MIME-Version: 1.0
From: matthew stanger <stangerm2@gmail.com>
Date: Sun, 30 Sep 2018 13:00:03 -0600
Message-ID: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Systemd on Sumo without python3(runtime)
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
X-List-Received-Date: Sun, 30 Sep 2018 19:01:13 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm having trouble removing python3 from being installed as a runtime
package using the Sumo branch. Per the systemd(v237) build
spec's(https://github.com/systemd/systemd/blob/v237/README) line 167
there isn't runtime requirements for python3, only build time.

It looks to me when running a .dot on the systemd dependencies that
python3 is being pulled in by 'meson' as a non'-native' dependency,
but this is where I'm lost. Could anyone clarify the logic here on how
to trim python3 to a native only dependency for systemd? Or is there
something fundamental I'm missing?

Cheers,
Matt


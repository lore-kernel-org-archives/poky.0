Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F547E0151A; Fri, 15 Jun 2018 02:48:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD60EE00C75
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 02:48:47 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id i205-v6so8301057oib.1
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 02:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sDWXO7wyQ6CjyK7hcnLZddmJHLFElVR89Q4xUJgw23U=;
	b=BkA4bOc0af7fONaeQxaD3ZcJ5nIKyI5edB/V5NZ/yWtHUFqv3SJ9P8Zkb/lAjnG67z
	KdvlsRfPLXI9XQZSsUB1T3XTMRiLG5V2hAMFfNbdRaFggIiTDJ97n9keCPTmWiwTnaGK
	5AsX+zCffQdBrhGyc8wvcJgHQojUPxPtLT4tnzSyUTj41YJ3iUzWV7h21zDTs7BeZQtE
	hJgBEPHOvUoHaCr2qdbwpJeoMgQI9dzuxm//+Dz9cAT7e0PkNUTH6Pss3RidbkB01Of1
	v033PSfgKvYcABbuFk1TQwMejpyO/6SOaLT7HZLCKujfx38l41xFDqStOuuTJo5MlNIR
	0TFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sDWXO7wyQ6CjyK7hcnLZddmJHLFElVR89Q4xUJgw23U=;
	b=jufzQuVZyKeVbcfIBjCf9OBGUYE0Uzz76EB4ju/HSyLx1clObMuJMquvxVpgc7ATuA
	flnTVoxP6cDj/RxFNz9OXZZwpl3uYN0AqJzESRG5YOT+PqT/mEE3V0We7D/NXVsxtJpp
	ae4JoLhxy81AOu3t7/8LA1yRAnWkPlqzuyJGSZniEWNLr51XXFx2j94MH5htsveOb/vO
	cJdEci74j5JN9zpRjBUJkeUq54YTFV4UyEX48XKErQXwvtfox4Xau2w53GDIUD/xOtH1
	qxzW2QyzYosU0jZQ8BZ9chTUdWDj7Pu2otdMv7oN/mfc/2174t+1N1OXNoSvM6rgiKY4
	AOAQ==
X-Gm-Message-State: APt69E2Gii1ckWP59kDZ5XAfG9yO1bWB9nupv8WwEnp6+FqHKibC9ubo
	LmxFh1xc9RadBOljZIVI+UTFruJ3XHaL5O+SBHs=
X-Google-Smtp-Source: ADUXVKLMsZgaHVYwYnm1CBLAdeppLQOyBwjq+ps0ghlhPXu1AdttEC0oN5MvOiu0I2lMFgA96zpERaEVy2KVZXkaQFY=
X-Received: by 2002:aca:728e:: with SMTP id
	p136-v6mr422337oic.51.1529056127183; 
	Fri, 15 Jun 2018 02:48:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90cd:0:0:0:0:0 with HTTP; Fri, 15 Jun 2018 02:48:46
	-0700 (PDT)
In-Reply-To: <47c97294-f857-295d-485e-d572f7e27b8a@microchip.com>
References: <47c97294-f857-295d-485e-d572f7e27b8a@microchip.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 15 Jun 2018 12:48:46 +0300
Message-ID: <CANNYZj9w8G4G60gWG_JHa2-Y5efOtQhaTTgoVez6w6rumz87xw@mail.gmail.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: poky@yoctoproject.org,
	Alexandre Belloni <alexandre.belloni@free-electrons.com>
Subject: Re: iso-codes: issue with do_fetch on pkg-isocodes.alioth.debian.org
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
X-List-Received-Date: Fri, 15 Jun 2018 09:48:48 -0000
Content-Type: text/plain; charset="UTF-8"

2018-06-15 11:30 GMT+03:00 Nicolas Ferre <nicolas.ferre@microchip.com>:
> I have an issue with building "sumo" right now: It's a Fecher issue it seems. I actually don't know if it's reported yet (forgive me if it is...).

Debian has shut down the server where this and some other recipes were
fetched from. Patches were floating on oe-core list, but nothing made
it in yet.

Alex


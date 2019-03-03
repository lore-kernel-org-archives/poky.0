Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 787FDE00CAB; Sun,  3 Mar 2019 09:38:47 -0800 (PST)
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
	*      [209.85.167.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
	[209.85.167.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E69E8E0090C
	for <poky@yoctoproject.org>; Sun,  3 Mar 2019 09:38:46 -0800 (PST)
Received: by mail-oi1-f196.google.com with SMTP id q81so2067098oic.5
	for <poky@yoctoproject.org>; Sun, 03 Mar 2019 09:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=y+pNw1jKHmm0ndn1U5n5aGPcWIIrOuDYxnp/RX8YMcQ=;
	b=vI2F1AkzyoxnW21PgL6laMQN6r6WSwX9pYwfe6uIOGPl1NmJhDY0nk1PiQjsGrN40b
	JVrXGTVFC4R9aWr0xZAMMf/iOsubvRQDRAV3yLumZe/qZc4BfXngA9bU009H9wh6lsWQ
	czGVr1bmbcd4UuaNKSf+NNdDAKrGVmqJs3FPr0V1XHzXOzjJWTwDtQLo8OrlTiYxdOCA
	flq6bF9I9M8XsepeUvagS2QZc34uR9AepplsM/4YEQtjTq2iSRZ1OypvcMn/9AeAE6Nd
	ITe3GHoD8ZshmyZjPH+iPK/yHjyqYNzGgbKHL5cb/dWu/7mbA8VLbWCgMnd7D/UYGYTA
	KYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=y+pNw1jKHmm0ndn1U5n5aGPcWIIrOuDYxnp/RX8YMcQ=;
	b=BGMvNVQu9/mTb3/hJVkKr51PnWYoWEPwuf2dJNdugF3oYGqZMS6et6nC/h5YFOkX3Z
	gniGJCOEsyloD4NaQlOu7dXbr63qeN3j7XrmpSUYfNJQ0QV3utCEZTtVdvW/QxLn7jRx
	FSKPx2o9zWjkQeALAHX4wms7KW6wTqcvls+RNKpHYT3qX88O8LZXMaQfUQM4vbnzZ4WU
	9mKy3BreyOKojb4090fC9WcKbYM2Vyy8Q3VmOBS6OwwB7sHLvuLPOR02twF5eK2ZTaqE
	7W5rjicKgpjYjgQh0meTpm60OMTVl33S+bz08GBwgYnp/uJVm2JsDOwkGvAOIo/9Elmz
	KWsQ==
X-Gm-Message-State: AHQUAuasN+T65U3rROQQFaZVarHBOF9S6VGuMa8iKStLyKz5R3d1wVOZ
	J6MopvxOkiV9WnqYUmYQnD03i4LB9eCwt+0Q53A=
X-Google-Smtp-Source: AHgI3IYzCgrA40T7dgdc1xVk8MlKDtsy5WV1SR3hcbIrpMhZ/ApjLVGcobRpu27t0a/OCL9CCZTNYpMcCMC9C/bPuG8=
X-Received: by 2002:aca:5dc6:: with SMTP id r189mr9783415oib.132.1551634726264;
	Sun, 03 Mar 2019 09:38:46 -0800 (PST)
MIME-Version: 1.0
References: <1551595632-15982-1-git-send-email-Aditya.Tayade@kpit.com>
In-Reply-To: <1551595632-15982-1-git-send-email-Aditya.Tayade@kpit.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 3 Mar 2019 18:38:34 +0100
Message-ID: <CANNYZj-KkzvP4RT_U1BvGh8nXgo5qD1=xht82mOEdzK59W+LdA@mail.gmail.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta][sumo][PATCH] run-ptest: fix testcase test-names failure
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
X-List-Received-Date: Sun, 03 Mar 2019 17:38:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Anything that changes things in meta/ goes to oe-core list.
Anything that changes things in meta-poky/ goes to poky list.

Alex


On Sun, 3 Mar 2019 at 18:21, Aditya Tayade <Aditya.Tayade@kpit.com> wrote:
>
> Start the dbus daemon first before executing test-names
> using dbus-launch, this will set DBUS_SESSION_BUS_ADDRESS.
>
> ERROR:Failed to open connection to system bus: Using X11 for
> dbus-daemon autolaunch was disabled at compile time,
> set your DBUS_SESSION_BUS_ADDRESS instead
>
> Upstream-Status: Pending
>
> Signed-off-by: Aditya Tayade <Aditya.Tayade@kpit.com>
> ---
>  meta/recipes-core/dbus/dbus/run-ptest | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta/recipes-core/dbus/dbus/run-ptest b/meta/recipes-core/db=
us/dbus/run-ptest
> index 8a8970e..444ef4a 100755
> --- a/meta/recipes-core/dbus/dbus/run-ptest
> +++ b/meta/recipes-core/dbus/dbus/run-ptest
> @@ -13,6 +13,7 @@ output() {
>  export DBUS_TEST_HOMEDIR=3D./test
>  export XDG_RUNTIME_DIR=3D./test
>  export LD_LIBRARY_PATH=3D/usr/lib/dbus-test/ptest/test/.libs
> +export $(dbus-launch)
>
>  files=3D`ls test/test-*`
>
> --
> 2.7.4
>
> This message contains information that may be privileged or confidential =
and is the property of the KPIT Technologies Ltd. It is intended only for t=
he person to whom it is addressed. If you are not the intended recipient, y=
ou are not authorized to read, print, retain copy, disseminate, distribute,=
 or use this message or any part thereof. If you receive this message in er=
ror, please notify the sender immediately and delete all copies of this mes=
sage. KPIT Technologies Ltd. does not accept any liability for virus infect=
ed mails.
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


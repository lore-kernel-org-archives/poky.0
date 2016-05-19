Return-Path: <thomas.besemer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD161E00D9A; Thu, 19 May 2016 09:59:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (thomas.besemer[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F03B7E00D91
	for <poky@yoctoproject.org>; Thu, 19 May 2016 09:59:27 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id v145so138525784oie.0
	for <poky@yoctoproject.org>; Thu, 19 May 2016 09:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=zFg7AkC3COMFyKheIXd2CRRTISSfFIMdRUe/IyHodjM=;
	b=myIqp9MjNh2JRca7SdGlwflYi9HYvzyO/2ZWbJjnxi9y6oXB15UWzXeqtR0G5k1YEC
	8ln7FxZDzIJPbXnnMl5ozeMO3aVz4n6GgghkqiUZGEg9ua3kSToi6F1cerWpLz/A8g0k
	TOeXapbmxV3LSRXQf74HybGgkfq6iRtAs7+awlUflThCobZtzkirt0X7ykDNGbP3LLb9
	gLImrXBeKI4lQCZVfOtJjOEzaMyMxYSlRaquaFwNc448Gx0KN8TfdJ9EHSGDp6i8Ptxo
	6K9p+gIkdclIPgUCbplulOwNkyKXLAzQRm9COJICe0MLqSGgorPhysYFuenNsq2UoAbi
	JJQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=zFg7AkC3COMFyKheIXd2CRRTISSfFIMdRUe/IyHodjM=;
	b=P3mVNrPFEUc4Lr4+iFo1xLN3z14wabM9zRfcvAbE2acEnm4iAQn83dTrGXnVwAFtr+
	rqdEi5aDq2b2sMAPtUyIFQjHkjWinkdsvI4F3d2YSBnoJ1ljyIndBtTJT7cCDqHIuoYs
	/emrs7HwC7wO2nsKaKW1fPV4EHo6SccPiiYLHzArreD9PisXvJaVmxNYT2VocNzMyiRt
	m84vD+d4IjKWOGo18AhOD95GVu3Y8x53aWC+azkDzxCP2K6EFqOc8qTkUzpn5L0u3sKK
	hl0pwGOpXGaHX/qxSN8ipvXEUqdqi4sOl+OEAIFxqXlwKInYpUhOt/5aij7n8xYsYYQk
	/Wvw==
X-Gm-Message-State: AOPr4FXI5qm/9bqKrUP1XJgiaof0zKIVzwvc8k5bJHkje/dd9TxRnRW7Nz3QYgSmJNniahqNJhXMJ9qnhupGzQ==
MIME-Version: 1.0
X-Received: by 10.202.4.17 with SMTP id 17mr8872826oie.140.1463677166719; Thu,
	19 May 2016 09:59:26 -0700 (PDT)
Received: by 10.157.61.33 with HTTP; Thu, 19 May 2016 09:59:26 -0700 (PDT)
Date: Thu, 19 May 2016 09:59:26 -0700
Message-ID: <CAO7m3AmuueFfYGJZ4YBvz-cuMTAYqThUQnWVTm+iEc1a0ka0pA@mail.gmail.com>
From: Thomas Besemer <thomas.besemer@gmail.com>
To: poky@yoctoproject.org
Subject: yasm as host tool with populate_sdk
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
X-List-Received-Date: Thu, 19 May 2016 16:59:28 -0000
Content-Type: multipart/alternative; boundary=001a113c088a969e57053334e517

--001a113c088a969e57053334e517
Content-Type: text/plain; charset=UTF-8

I'm trying to get yasm into the SDK, but have only been able to get it into
build through IMAGE_INSTALL_append (I don't want it on target).

Have tried:

TOOLCHAIN_HOST_TASK_append = " yasm"

Error is:

NOTE: Not found yasm by name, searching provides ...
NOTE: cmd:
/home/tbesemer/src/yocto-full-0411a/poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart
--log-level=warning
--data-dir=/home/tbesemer/src/yocto-full-0411a/poky/build/tmp/work/sps-poky-linux/core-image-minimal/1.0-r0/sdk/image/var/lib/smart
query --provides yasm --show-format='$name-$version' | sed -ne 's/
*Provides://p'
ERROR: yasm not found in the base feeds (x86_64-nativesdk noarch any all)


Error happens during 'bitbake core-image-minimal -c populate_sdk'

Release is Jethro 2.0.1

--001a113c088a969e57053334e517
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I&#39;m trying to get yasm into the SDK, bu=
t have only been able to get it into build through IMAGE_INSTALL_append (I =
don&#39;t want it on target).<br><br></div>Have tried:<br><br>TOOLCHAIN_HOS=
T_TASK_append =3D &quot; yasm&quot;<br><br></div>Error is:<br><br>NOTE: Not=
 found yasm by name, searching provides ...<br>NOTE: cmd: /home/tbesemer/sr=
c/yocto-full-0411a/poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart --log=
-level=3Dwarning --data-dir=3D/home/tbesemer/src/yocto-full-0411a/poky/buil=
d/tmp/work/sps-poky-linux/core-image-minimal/1.0-r0/sdk/image/var/lib/smart=
 query --provides yasm --show-format=3D&#39;$name-$version&#39; | sed -ne &=
#39;s/ *Provides://p&#39;<br>ERROR: yasm not found in the base feeds (x86_6=
4-nativesdk noarch any all)<br><br><br></div><div>Error happens during &#39=
;bitbake core-image-minimal -c populate_sdk&#39;<br><br></div><div>Release =
is Jethro 2.0.1<br><br></div><div><br></div><div><br></div></div>

--001a113c088a969e57053334e517--

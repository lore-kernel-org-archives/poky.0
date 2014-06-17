Return-Path: <bewithsathish@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8917AE00BFD; Tue, 17 Jun 2014 02:49:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bewithsathish[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.54 listed in list.dnswl.org]
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DAA5E00B71
	for <poky@yoctoproject.org>; Tue, 17 Jun 2014 02:49:29 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id eb12so7781269oac.13
	for <poky@yoctoproject.org>; Tue, 17 Jun 2014 02:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=gd9MqVlGPva1P6a3QTAFe6BUaTMEZUeO2POkMVkiFvw=;
	b=LMV550YOjorwKQm5pIdAoXc7OAvaiCj8Zwv/9vyBPMxhl+jV1nHlnopUgXb5F8CnSy
	jeZIC8LJy28//bZwq68F6i55W3wCziY/gSUDxaGXG1etzTaD7Yys1EdblM2rjWjwBleY
	IgsXaXrI0bJJ5F7EUHx3mX+TwFtgpuCH1I0FtjKDSZqb1fGZSi+vNS/uTjeUPwyTvsE8
	R2PgZQI8u4ZDk/pFwT+SGHkO2x/LZnCsEDsihd3U7siSrJXBZ31GPXxN8mBpDLCNDVRM
	A0lBfKzU8Lv4CnI2s4xtlxbdEBy4Pwzyc2Io7vBUqKn2Zaw7r9bS8P6mtATBCpoumDaz
	1Kcw==
MIME-Version: 1.0
X-Received: by 10.60.35.104 with SMTP id g8mr2832083oej.41.1402998568549; Tue,
	17 Jun 2014 02:49:28 -0700 (PDT)
Received: by 10.202.178.198 with HTTP; Tue, 17 Jun 2014 02:49:28 -0700 (PDT)
Received: by 10.202.178.198 with HTTP; Tue, 17 Jun 2014 02:49:28 -0700 (PDT)
Date: Tue, 17 Jun 2014 15:19:28 +0530
Message-ID: <CANJvwR_eNhKGcppjbduDhoSq-fva0ns5VVZFND9NCDrTCYd73g@mail.gmail.com>
From: Sathishkumar Duraisamy <bewithsathish@gmail.com>
To: poky@yoctoproject.org
Subject: Enabling lcd7 with beaglebone black
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
X-List-Received-Date: Tue, 17 Jun 2014 09:49:43 -0000
Content-Type: multipart/alternative; boundary=089e013a1cfe4c80e004fc050f88

--089e013a1cfe4c80e004fc050f88
Content-Type: text/plain; charset=UTF-8

Hi,

I have trying to use LCD cape 7 inch with beaglebone black with poky daisy.
I followed bb-bone-lcd7-01-00a4.DTS. I could not able to enable LCD. Could
any help to bring LCD.

Thanks and regards,
Sathishkumar D

--089e013a1cfe4c80e004fc050f88
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi,=C2=A0 </p>
<p dir=3D"ltr">I have trying to use LCD cape 7 inch with beaglebone black w=
ith poky daisy. I followed bb-bone-lcd7-01-00a4.DTS. I could not able to en=
able LCD. Could any help to bring LCD. </p>
<p dir=3D"ltr">Thanks and regards,<br>
Sathishkumar D</p>

--089e013a1cfe4c80e004fc050f88--

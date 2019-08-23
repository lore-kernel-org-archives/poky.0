Return-Path: <kamal.jagesia@networkmarvels.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 175E9E00D5F; Fri, 23 Aug 2019 00:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_IMAGE_ONLY_12, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 2.1 HTML_IMAGE_ONLY_12 BODY: HTML: images with 800-1200 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.171 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
	[209.85.167.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07725E00C9C
	for <poky@yoctoproject.org>; Fri, 23 Aug 2019 00:06:40 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id n1so6305732oic.3
	for <poky@yoctoproject.org>; Fri, 23 Aug 2019 00:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=networkmarvels-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=MGHvG7VDVS56ILrTgFi+P7ztmP7Di/VNcwvnJIGX0Q0=;
	b=pOU9BFJyB2GmqYxeQvS1BysI64dZIF1xLS51ISQg8OM5AmAktayB2DVbeQZQTXlS0B
	mi2mpI74naOL00nTrlk6BWNat8yPcvJNiMGo2BQodSIXa0sZYPZppRoH6rtivIyrHTds
	aaHkCPMMQ6eWI9sqpNEG1LyGf6666MNTwKCOi0NdrBITq9IPN35fvbuIROW5QZN461rv
	5nmwoQs8vob6ALE6KZvFBoX4WMHaO7TkA/0d2gxEbV4GOF2CzuWtHbxyWSF95M80tlBk
	ZNQEofvGy4ikFNHG2s6pim9S/aC7Ojfvl25S+vRqigVcfKBerR/biFRbnL1dR/wVjeLS
	WKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MGHvG7VDVS56ILrTgFi+P7ztmP7Di/VNcwvnJIGX0Q0=;
	b=RJNcKtYHWF8/tbv0b2D8I3MyRAAV6YYFwUQR594FRZBcA+G9e/J6fGgKYjmtuBM0K3
	uxUwCXHXCV2hAFy5EV7lytserFDOaNY2I6B+VAoznoRDYVz80d8vV8VKRwg9BWSXXkeW
	4LRTQjHwpVmx4GZeyFtUk/ksT1L62Ynb8ySv8m4vG/ro1qtjZzjeEw8DDYp48seq3piu
	rcoqu8gFD1nnYGSIQB6KxTY+LT28tNWJtxOMM6rD850Zb+ZIXLFTdYF+aqdtwFVj444U
	V6R2pvKAwQjbESK0iyWTG28Mq7VoQOoBIIqTCEKNKq6Q5nTb2f9FM/4Gdj+EO3Zqkn+9
	iFWA==
X-Gm-Message-State: APjAAAVZ9yJ7gKQbq/lfc0tyi139KqpCMQBW7iS/YMT3WzNahVWOCuZb
	Gdd0jPbT6XpYJhPXTBucZIMDrGCDsnK3I+Q9J+H3SY97xuo4tQ==
X-Google-Smtp-Source: APXvYqz4j26T8EEqfFFBdg+dB6ZJtp2HydKM6RKLrxdxf+N7dBngon0D9pp+BYiG+pb/iSdkKQOuGsl4NS8ut6BTfvM=
X-Received: by 2002:aca:750c:: with SMTP id q12mr2080164oic.177.1566544000095; 
	Fri, 23 Aug 2019 00:06:40 -0700 (PDT)
MIME-Version: 1.0
From: Kamal Jagesia <kamal.jagesia@networkmarvels.com>
Date: Fri, 23 Aug 2019 12:36:30 +0530
Message-ID: <CAJrV_B0bf3k1KQc+dXAbqU1ehE_m8C=MsRtLFZ+fm+sw7vVaWw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Queries regd Yocto bitbake Build for meta-poky layer
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
X-List-Received-Date: Fri, 23 Aug 2019 07:06:42 -0000
Content-Type: multipart/alternative; boundary="000000000000a6ac2c0590c3722a"

--000000000000a6ac2c0590c3722a
Content-Type: text/plain; charset="UTF-8"

Hello Sir,
I want to do a Yocto bitbake build of the meta-poky layer but the
output Linux Image (.wic file) or (.iso ) file should not exceed size 100
MB .
I want to do a core-image-x11 build .
Kindly let me know how to proceed?

Thanks & Regards

--000000000000a6ac2c0590c3722a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Sir,<div>I want to do a Yocto bitbake build of the m=
eta-poky layer but the=C2=A0</div><div>output Linux Image (.wic file) or (.=
iso ) file should not exceed size 100 MB .</div><div>I want to do a core-im=
age-x11 build .</div><div>Kindly let me know how to proceed?</div><div><br>=
</div><div>Thanks &amp; Regards</div><div class=3D"gmail-yj6qo gmail-ajU" s=
tyle=3D"outline:none;padding:10px 0px;width:22px;margin:2px 0px 0px"><div i=
d=3D"gmail-:mx" class=3D"gmail-ajR" tabindex=3D"0" style=3D"background-colo=
r:rgb(232,234,237);border:none;clear:both;line-height:6px;outline:none;widt=
h:24px;border-radius:5.5px"><img class=3D"gmail-ajT" src=3D"https://ssl.gst=
atic.com/ui/v1/icons/mail/images/cleardot.gif" style=3D"background: url(&qu=
ot;https://www.gstatic.com/images/icons/material/system/1x/more_horiz_black=
_20dp.png&quot;) 50% 50% / 20px no-repeat; height: 11px; opacity: 0.54; wid=
th: 24px;"></div></div></div>

--000000000000a6ac2c0590c3722a--

Return-Path: <samentu1@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 891ECE00D03; Mon, 13 Nov 2017 04:28:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (samentu1[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1959FE00AF9
	for <poky@yoctoproject.org>; Mon, 13 Nov 2017 04:28:50 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id l196so9101462itl.4
	for <poky@yoctoproject.org>; Mon, 13 Nov 2017 04:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5vp4e0I3XggBh5TasmRQXTf4BL76/St3FllZa4JrFxI=;
	b=C0u2XqiloRKQrQ8RsDT5v3KciAwz7DcJA0YIqnDj2JwT4E+hO1x+7jU+JoWByIygqI
	4ej7zaJQQF3upJD3kFWKjpzGlbLoyzMhENdBpGTiXO10Vi62IWzHY56gkwMtKhcVM2BX
	97WSe1186bQPn190zYtdl/+azQN+kACiAokzcJW5eorWhsrB2Y7OALXMjMIeVGbnSUtI
	xGagno5a3LYQFXGqyeHkp2Fzdx3WTG0IbhmfrBUFkmP6QTgFeQ3OMyAzPXDiMMx6IysO
	gZF9z1u2UqUOONGMEYl4YLEK0B2WAhP3JRpzJyTn0mtDn/NqJ6xypPgS2gDhsXiftzU2
	sQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5vp4e0I3XggBh5TasmRQXTf4BL76/St3FllZa4JrFxI=;
	b=LbbQ7ZQiYLfXeZOwmnXbAkZQxUykw+MFv+ci24Qgr7K/+Qy59v7KanikYrUwGUw++e
	mCI616twtUwQWIXJ0HprC0FtBJUPxxDfCOvoaTu27OCVJwew2Ylg1O3PK6yiks8TaQeI
	mob8D4iPA5B9WI/Xlg/IoaMiwMisEAtb11tC8HDJMQXMRGbeY9Suiqq1czpDnVG2wRP6
	R9BXrjdLJlypOPyd8gwsj3Fzviria8Zqvsp+3lpFMgEfz06jwivpFNX62gcYZe9xZCp9
	5sWegHir/04CkLmNq+Ctbg+/odytO5sPWIDvnFZuXeXuMTtdddxXhz8KuiYkZuC+stq5
	02uA==
X-Gm-Message-State: AJaThX5cjmS5S+N1+b9r3DvlJwQJOY+nwZUlOFMk5t0SjBg03VMlIF98
	Ir2j42jAQNqEJ0nIuqzBCKd923wygYgxusCqR0ga7A==
X-Google-Smtp-Source: AGs4zMZvuotWr2z438C77AjfOx2F9wnXbH0lZwzQeQpG7xADaeHTI3NArPIJrfkEvXjExduSp84/yeo4kMrYSAesTX0=
X-Received: by 10.36.4.144 with SMTP id 138mr10741047itb.78.1510576130035;
	Mon, 13 Nov 2017 04:28:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.18.11 with HTTP; Mon, 13 Nov 2017 04:28:49 -0800 (PST)
From: Florin Ionut <samentu1@gmail.com>
Date: Mon, 13 Nov 2017 14:28:49 +0200
Message-ID: <CAM4Jt4=U9jYX5VF8TwDY-7nF0g3DERgkUT7pc+usT1cA5dJmTw@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: [pyro] Backport request for meta/recipes-devtools/gcc version 6.3
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
X-List-Received-Date: Mon, 13 Nov 2017 12:28:51 -0000
Content-Type: multipart/alternative; boundary="001a114089d6a314bc055ddc691b"

--001a114089d6a314bc055ddc691b
Content-Type: text/plain; charset="UTF-8"

Hi,
can dc3b3a8df3297367e9386dd3ac098b64f7f46d06 and
c08247e3c7c004a40281d4010186a9ace86e0e47 from master be backported to the
pyro branch please?

Thank you

--001a114089d6a314bc055ddc691b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>can=C2=A0dc3b3a8df3297367e9386dd3ac098b64f7f46=
d06 and c08247e3c7c004a40281d4010186a9ace86e0e47 from master be backported =
to the pyro branch please?</div><div><br></div><div>Thank you</div></div>

--001a114089d6a314bc055ddc691b--

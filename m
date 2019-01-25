Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BE31E00C28; Fri, 25 Jan 2019 06:53:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pawan4749[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E28A8E008CA;
	Fri, 25 Jan 2019 06:53:42 -0800 (PST)
Received: by mail-ot1-f68.google.com with SMTP id 81so8749878otj.2;
	Fri, 25 Jan 2019 06:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=iOXbrau67F1XJiXuxf9MUjdIBEIiKbxQvKh9zGf1wow=;
	b=duxDKTpWSccUnCi07VQf9dYwchCco3jjAnGM0ET8ROLQz0a23zbMME+WyNASIDS70P
	yn0yktRt7JTW0GtWpsyf+d8Ap1DKcBSEMPmjYIAKNzXQpDXK361gEnj2Xw+5BAOCDSzE
	yX3OrEra/egzEJ3SMg9H0nJ2lEOwlT4LGyutDrRXr6P5ppTFRczD6YhHgF6c/4bfswSn
	STpJZdZZvua0pt8n+BY1zRURYWNj64VIzXpYN2sd5b7egYSneK0qQL9h98L4IEj6SmwF
	5HEYs+nxrtF+FhWaTEBBksEaVnnJn70UmsZEIStbkz0qxWt8gzFqd6YLVeoWuY8197Va
	17tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iOXbrau67F1XJiXuxf9MUjdIBEIiKbxQvKh9zGf1wow=;
	b=dHY+/+uWIQMR1mPGe26sH+X5n0Sd3Ajd0znAIhnH8SAehbX+x70sij02+t3jyvfxX6
	v7q0M3z0BB+mAFKItdGx2DLEYtoHUJLHifczInOtquf7dBD5orR++7wvmlc5/64a9Fq5
	gwKQD9Ypy0JHm9x2Lz27i2tRwT6RLWiAvkWYT6R5lCR8IaS24t+aEMPNOi4+E9sU/Od3
	jBJsQBljRV/deMBQtTVmCOIye7E46MZsrF0z122nDOWhtAl7ZaKijS4Q1TTvfFKQCtBT
	GFS49WRJwjsjzY7seZlkiWTV3ZRmIYL0/TayLc9bJuW+hpHkpx3cq4jsmIVaPWxlSUJx
	pHlQ==
X-Gm-Message-State: AJcUuken3SimsQ2o+Eb9Lgv5cShUJpL065BiEtoICqT5n0k3bJEd2jcN
	62yhNWmJDhO1St9BiTAgcjBPX3gS/cIoRgNTrG+mJzyh
X-Google-Smtp-Source: ALg8bN6Obh7dzOni7v7SxaPNmY21yGn4MfKGCzZz1RLYiGkITMmtx+2Uafy/M/Mw8j4XN7Bw5aRaiMeL5uXCdPCnAt4=
X-Received: by 2002:a9d:3b62:: with SMTP id z89mr8621923otb.134.1548428021944; 
	Fri, 25 Jan 2019 06:53:41 -0800 (PST)
MIME-Version: 1.0
From: pawanKumar <pawan4749@gmail.com>
Date: Fri, 25 Jan 2019 20:23:25 +0530
Message-ID: <CALd6x_tg3xTOnipuXfRgR5q4Pg+uQVfozwqzPRe1LDwzSRjrWg@mail.gmail.com>
To: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Module.symvers failed with error: No such file or directory:
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
X-List-Received-Date: Fri, 25 Jan 2019 14:53:43 -0000
Content-Type: multipart/alternative; boundary="0000000000003555010580497e84"

--0000000000003555010580497e84
Content-Type: text/plain; charset="UTF-8"

Hi Team ,

After running the command :-  crosstap root@<qemu-ip> <script-name>
I'm getting error as below:

*/poky/build/tmp/work/qemux86-poky-linux/linux-yocto/4.18.21+gitAUTOINC+..*/linux-qemu-*/Module.symvers"
failed with error: No such file or directory.*
*Ensure kernel development headers & makefiles are installed.*

Please let me know why I'm getting this error.


Regards
Pavankumar

--0000000000003555010580497e84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div>Hi Team ,</div><div><br><div dir=
=3D"auto"><div dir=3D"auto">After running the command :-=C2=A0 crosstap roo=
t@&lt;qemu-ip&gt; &lt;script-name&gt;</div><div dir=3D"auto">I&#39;m gettin=
g error as below:</div><div dir=3D"auto"><br></div><div><font color=3D"#000=
000"><b>/poky/build/tmp/work/qemux86-poky-linux/linux-yocto/4.18.21+gitAUTO=
INC+..*/linux-qemu-*/Module.symvers&quot; failed with error: No such file o=
r directory.</b></font></div><div><font color=3D"#000000"><b>Ensure kernel =
development headers &amp; makefiles are installed.</b></font></div><div dir=
=3D"auto"><br></div><div>Please let me know why I&#39;m getting this error.=
</div><div><br></div><div><br></div></div></div><div>Regards<br></div>Pavan=
kumar<br></div></div></div>

--0000000000003555010580497e84--

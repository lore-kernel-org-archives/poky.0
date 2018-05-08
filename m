Return-Path: <and.previtali@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2298AE0086B; Tue,  8 May 2018 06:44:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (and.previtali[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C919FE005A9
	for <poky@yoctoproject.org>; Tue,  8 May 2018 06:44:45 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id q4-v6so16391988ite.3
	for <poky@yoctoproject.org>; Tue, 08 May 2018 06:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=+bxwJ4vOsRCkN+O8VpS+svVh6cl76uogdcp1ebQIVY4=;
	b=SmnjiyXiVYB9NWz0W05w+ek2ez35j9ys5yZusTz2NF4UItZr7bLCx4x1ve9rAYT7Qn
	az+v2zudaEdl9csVYnjH4lClFi6fSI1oJdugqPIcD3GzfOo2gZiPTqpHxK6x5LwCHaZa
	TlvuOQyXba5eYYNoreNNtwTLllwEdacqKCKtO3rqHFSJp0Xf1ZDV+G1XfEu8AvjqtF/G
	I2n5lzbYLzvoSQ+PsUvmZKUlgvPwgLUR07WKWgaOamAHMIdjSK3sjw1sUEuCt3o5fVzk
	jXVvRtvyXRbpdMK0p9+poYLJ498KjPxXP/ZYnz6Qz0FBJgvOXfWF8Jj/lPn2xFoOChVm
	OgpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+bxwJ4vOsRCkN+O8VpS+svVh6cl76uogdcp1ebQIVY4=;
	b=iGqPPNMbIHQaqpHnPTXppVfQYZ1ptm3KTeLGSlyjq0BF6E8gAmUITzblb3isBNY+SB
	fRmzFZaU3hxi5n+krlnsVMTKPzFzeKEIwB2AUZ/2uIdtYO3jR38mL2uXCupY41CTouMm
	YNE54YCW9987sk8sy6g/1xrCibHNWbafPf6eEQEIr0FuIkiSyXKEAayYY0M6hzgML19G
	Cx9jIBOd6VudFMX7yr6r23CJsW45nIU/rcjSI7rFEk8BFPIrpCgmrkaTWAnBSRklwaPj
	QtuzC/PRu7+cAVKh5rboRc6m4G/GSqukp+n64l0/oOZeAg1aQrhM+l2Wd0wWyZZUOh5T
	js+Q==
X-Gm-Message-State: ALKqPwfECKYWAUPcffRyTyKpxD+3edoyCeNNKupC4oHcuOK3B63mylbs
	ldBf8R2G6Xmc9W+NTRRiZrbDEyTrUFsf1SjvVZo=
X-Google-Smtp-Source: AB8JxZrRmhM66mnR8oL960uhXm8tFe8DGZaW4A/OEetcLiteDSrcqbbntQ2b0ljBdotWvIAYiKXF0/P7d0QHYvLSm+4=
X-Received: by 2002:a24:b517:: with SMTP id
	v23-v6mr5803671ite.63.1525787084768; 
	Tue, 08 May 2018 06:44:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.183.138 with HTTP; Tue, 8 May 2018 06:44:44 -0700 (PDT)
From: Andrea Previtali <and.previtali@gmail.com>
Date: Tue, 8 May 2018 15:44:44 +0200
Message-ID: <CA+c40zUe_W6O1PK9RMm4DERfeyf4=fZ_WgpKBEPaUE2hup0EKQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Create a recovery partition
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
X-List-Received-Date: Tue, 08 May 2018 13:44:47 -0000
Content-Type: multipart/alternative; boundary="00000000000030cc78056bb1fd98"

--00000000000030cc78056bb1fd98
Content-Type: text/plain; charset="UTF-8"

Hi everybody, I have little skills in Yocto. I need to realize a recovery
partition on my system and I need to manage it in case my primary file
system shows problems.
I really have no idea where to start and I found no help on the internet.
Has anybody faced out this problem?

Regards,
Andrea

--00000000000030cc78056bb1fd98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everybody, I have little skills in Yocto. I need to rea=
lize a recovery partition on my system and I need to manage it in case my p=
rimary file system shows problems.<div>I really have no idea where to start=
 and I found no help on the internet.</div><div>Has anybody faced out this =
problem?</div><div><br></div><div>Regards,=C2=A0</div><div>Andrea</div></di=
v>

--00000000000030cc78056bb1fd98--

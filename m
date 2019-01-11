Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B5C3E00D16; Fri, 11 Jan 2019 06:44:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EA31E008CE
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 06:44:07 -0800 (PST)
Received: by mail-qt1-f176.google.com with SMTP id n32so18980564qte.11
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 06:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:cc:to; bh=Nm2oc6vlja6P3hJDvYIkWGRbK8s98nY5qAyto2mXfDc=;
	b=Tojh52ywdBb/jDWBJYKzp3UrfSHwGSMUC814pQmXhYU+Zsw9QL1bjZwYGhE0+8nRVZ
	2L+4S1yDNkHrq1h+kI5ks3IZlgea8gTGYMa0kO3N1N8YP/GhANwBxUPbb+eSHZSCgCqP
	3doK688bMnMDOePEo13VjE8m452zJ3GJ6Kho/2oHJ/ZtA5Tr7mJ2pcWW9htUiokWgp06
	p8NUpLq8k6TOccGUb2c94HRcwTpHymEP/+k0sWz3Okvnue0enssSOieKw6VfwuBj1e4L
	t7ZoGONmVYGjm1U+qjYiWO8mpnv9ITNuZEthGxwpBHPcfno2QtPvRMMsWb4/HQFkAfUo
	g3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:cc:to;
	bh=Nm2oc6vlja6P3hJDvYIkWGRbK8s98nY5qAyto2mXfDc=;
	b=nLN2x6n4QrdRimYJBN5L1fbCk9K0dkjqGJ1EdXz96ltM/SlrUufcHn5MwjLf9bgVXQ
	Ggh0uihlAid3VEOOhnJG17p8pDEecU7dCoecp/DxzPCAXtCLoFBzW85fBS2vdaBP0TKJ
	OiM/s6txhmC3/kCeVopN4Ir9QXY+gihSuD80GVaaF7YnfpPqWL6G7shQGFA7rG4oxycl
	8NQU3oQuoomiFyQQ2eGABScPUatuyXL1jClfWpxiyHozmO295issCpP9mEwyzss8lirG
	yfEDjEoG3umWaEx8oKDDTdsAlUupBFcaiXnDXl+5Gw0D2QpGYKPfNDrJNmlA3M+tKE29
	pXdQ==
X-Gm-Message-State: AJcUukfixOGWTOvSplxa3JcXKDiQgg/xeFbwYAO9ZnHrOyo2Nv1aeM/P
	07tGpy5KW2LOgKYqmDQv7rewxyKuuT4=
X-Google-Smtp-Source: ALg8bN7c8yniEv/zhrDBfocldg0Zs+neywB2BRhjpUpa2Qo89e3Jmpv0U2fLiBjxlOCalDBszlOnnA==
X-Received: by 2002:aed:36a9:: with SMTP id f38mr14314239qtb.367.1547217846558;
	Fri, 11 Jan 2019 06:44:06 -0800 (PST)
Received: from jfdmac.sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	z8sm34477162qto.45.2019.01.11.06.44.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Jan 2019 06:44:05 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Message-Id: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
Date: Fri, 11 Jan 2019 09:44:04 -0500
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.3445.102.3)
Subject: thud systemd root home wrong
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
X-List-Received-Date: Fri, 11 Jan 2019 14:44:08 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,

Although there is 0005-Make-root-s-home-directory-configurable.patch and =
EXTRA_OEMESON +=3D "-Droothomedir=3D${ROOT_HOME}".

Here's the test setup and result:
root@host-01:~# cat /lib/systemd/system/testroothome.service=20
[Unit]
Description=3DTest root home

[Service]
User=3Droot
ExecStart=3D/bin/bash -c "echo HOME:$HOME"

[Install]
WantedBy=3Dmulti-user.target
root@host-01:~# systemctl status testroothome
=E2=97=8F testroothome.service - Test root home
   Loaded: loaded (/lib/systemd/system/testroothome.service; disabled; =
vendor preset: enabled)
   Active: inactive (dead)

Jan 11 14:32:10 host-01 systemd[1]: Started Test root home.
Jan 11 14:32:10 host-01 bash[1971]: HOME:/root
root@host-01:~# echo $HOME
/home/root


/root is incorrect as shown last. ROOT_HOME is set in my untouched =
bitbake.conf from poky.

Very preliminary inspection of v239 of systemd's source in it's workdir =
suggests that although the meson build config is changed to accept =
roothomedir as an option, the source code doesn't mention it.

Looking at the history of =
xxxx-Make-root-s-home-directory-configurable.patch, it seems to have =
suffered quite a lot through the systemd upgrades to the point it has =
become useless?

Before I dig deeper, I wanted to check with the community.

Thanks for any pointers!=


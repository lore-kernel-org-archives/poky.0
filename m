Return-Path: <john.tobias.ph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39B26E00C70; Tue, 29 May 2018 15:08:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (john.tobias.ph[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7ABEE00A26
	for <poky@yoctoproject.org>; Tue, 29 May 2018 15:08:54 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id q13-v6so20782711qtp.4
	for <poky@yoctoproject.org>; Tue, 29 May 2018 15:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5C+IHFN6uHcDrWahqOLuu8UrOFy8gS9EoTCATIF51wg=;
	b=FApkjv3Mt4BgodhpsLLCvAGJB3FXSi/y9eAEumGdSwaVgyOonvtBgWwepqj0xAVrQe
	ZSqDR/U2jECMu0tVnM68wZ3dCl+MxaWGNiODbgYZRp0H1EWLM0+UgzDdn277fmWOzmVT
	A8YlzolyyX4QoSLsp3hURXPRPaK+4avOyHjAvOwlmnTd3oXmKt1LyAGIzqCPOsJuTLfg
	QAC+eKW6xV8y+1LMRaqcOr1Qsqop9i+zRSHvtjdxdklVJAw2QyzOMsxF4Py0EMv4EnIG
	uzPsQ9BgXV0Oxe6vISg14Hm52cK2Ghd9BvZLJY3ph2zy8kpV7F9JIyjm74gLzBZyDG6l
	UanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5C+IHFN6uHcDrWahqOLuu8UrOFy8gS9EoTCATIF51wg=;
	b=KMOm2bqSTNXZcR4OH15qv3TWQMJAqQ+CjJ+EnnggLvroEli7EKLA87DoJ8cwpQrrWb
	XRSt8Df5DisyqMm0+/1Ps7OPup55UHxWltBUWK9zdptjl+bN8ZuXrCgBFauA4rNN8blS
	dfkhtVz6uFhBPTw2pO1lul/5mbWuafu+mxkQG4t5WumMyqFV3hAOxW/NeMSttBsCisSd
	pV1w6DeHw/mH26kzGJyvpeoaMIhLkRvtF8f5f9CG/u0yGZ/wmjZwOuXl+msG7VBCBAbJ
	k1TF/FInEivuzrnAr2YThYmu0/+z24H1hAiamP0ePLPFz9jEy7DW9T9IahLmTUE5jc4g
	RZjQ==
X-Gm-Message-State: APt69E07+OibOKLZfkGH3wKdVDHBzwSId2PpMaFtqNgBw43FC9yED5Se
	66Mlk9gebfi91OiRuf96N4oIfqmpmqvwlFevXI1CQg==
X-Google-Smtp-Source: ADUXVKJH5OjYBz7jcqPVSa/3EwUqrNNvk3GIbiDObLSLGCyFHF2SGunYI33xmV1pbLlKM29KOZT+B2j19QC5yKrHdn4=
X-Received: by 2002:aed:2448:: with SMTP id s8-v6mr225321qtc.336.1527631733569;
	Tue, 29 May 2018 15:08:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:953d:0:0:0:0:0 with HTTP; Tue, 29 May 2018 15:08:53
	-0700 (PDT)
From: John Tobias <john.tobias.ph@gmail.com>
Date: Tue, 29 May 2018 15:08:53 -0700
Message-ID: <CACUGKYPQZxwaZNd2v8MgVuTs0Sws40kjU_PnM=DYgYHtxrW-7A@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Updating sdk directory
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
X-List-Received-Date: Tue, 29 May 2018 22:08:55 -0000
Content-Type: text/plain; charset="UTF-8"

Hello All,

I am using eclipse for my project and  I built an sdk (image) with my
C/C++ library (libprojecta) in order for me to cross compile my
project under eclipse.

Now, I need to update my libprojecta library in my sdk, but I don't
want to run 'bitbake my_image -c do_populate_sdk'. I would like to
know if there's any other command that I can use to compile then
install the latest binary and header file of libprojecta to the
location of my sdk directory?.

I was looking for a similar command below. But, instead of passing
root@192.168.100.1, I'd like to pass the location of the sdk
directory.
devtool deploy-target -s libprojecta root@192.168.100.1

Regards,

John


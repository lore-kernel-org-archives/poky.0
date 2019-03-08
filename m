Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67E10E00D15; Fri,  8 Mar 2019 13:13:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C447EE00D01
	for <poky@yoctoproject.org>; Fri,  8 Mar 2019 13:13:49 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id g80so18579619ljg.6
	for <poky@yoctoproject.org>; Fri, 08 Mar 2019 13:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=On2gCcXI1KNuXEJD0MYGe8/D3oL+AQVu7G29oX2g4CA=;
	b=fTCe1swhX3/UwJLe0gms94gIWNba2zjO+Do9YvIxl3vTKHsypR6l+b7QPZbsDpDxBH
	0B9dXuS6sUQKmAQfE3GtUnejs10XKTgdi2XnF0e7xUQJei3Uf4WBEbcuPv5nQKIi6aHm
	wUKyVZLC1qslnaUYDXZDMux06KsJxYggKynP3t/bxlkxAxnrfA34EQ5nhc+SiBzVdB6b
	tI62MpuFg5KRItUS7zuqm9IEuX1bz2W1vjPcGn8vhLA4exVcJ4xezXOuznCKB6l4jUgE
	m85qmpipXWERq3VhH3XWaUA/xf9tOrZLoJfUd1+cduHKxd4o84H4Hlno5xj3N/LbXcHU
	gt3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=On2gCcXI1KNuXEJD0MYGe8/D3oL+AQVu7G29oX2g4CA=;
	b=Wkdn06VVvWInnjVPNuup03DxqEJFWRhiW32eWHvJwsfms1P/ZsiC51MiYTCio6d1Ys
	IuOSvbsobvTZ7kTdetuzG12bmkRAkRVJ8mh64x3TuV9A9hSKVwbFPWpyhL/yyw0N3QQX
	eqETGndV7irNPT/K19SJR1E5AITTZXAzvxxytsX5Fll5l+9L6+/I4qtanA7eK2XFqfa0
	LqWg1p4xWf4Wv4MCsl85zeht/7rjDUtXB7FAP2HdoKy9pzeJcPuDiHCrvvJAyUXviOFr
	uLmeAn5vjNwFI9kpmf5tmqSSXgztaKJniyAnQfFj4AGN81DBvB/3I4I/TLxy3OF66oL6
	cyug==
X-Gm-Message-State: APjAAAWkcnWng90yUnzlruPqAxWUfQuCYTNSDDLDQBYN177Yp5Cb0skb
	A6jWQJU70UYSd9s0hOwaDhbPXkMq
X-Google-Smtp-Source: APXvYqyK9f5qz+GYp8YD/oMvf3vFlabOuSJ5uFaWy+OcRIwaJRB2j7/Ite1q83ejxXgBZjuHO/AVSg==
X-Received: by 2002:a2e:a0cb:: with SMTP id f11mr45008ljm.55.1552079628667;
	Fri, 08 Mar 2019 13:13:48 -0800 (PST)
Received: from [192.168.1.65] (95-27-45-82.broadband.corbina.ru. [95.27.45.82])
	by smtp.gmail.com with ESMTPSA id
	y15sm1612782lje.23.2019.03.08.13.13.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Mar 2019 13:13:48 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16D57)
In-Reply-To: <A7C35719-A08F-4A56-ACF4-961127740274@gmail.com>
Date: Sat, 9 Mar 2019 00:13:46 +0300
Message-Id: <9F24CE10-E952-4EFF-9E8E-10080AAB3CA4@gmail.com>
References: <9BC86C58-D25E-4FBD-AD92-B8DAC74D8326@ads.isi.edu>
	<CANNYZj9kN3CfY=vUcchnWH4Q6H4R5xLiJJd07NrbDT=UTdB_qw@mail.gmail.com>
	<62BCE529-4701-4AC8-8D31-97E622B8D177@ads.isi.edu>
	<A7C35719-A08F-4A56-ACF4-961127740274@gmail.com>
To: Connor Imes <cimes@isi.edu>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Building and deploying test binaries
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
X-List-Received-Date: Fri, 08 Mar 2019 21:13:51 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On 9 Mar 2019, at 0.11, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>=20
> To be honest, to me there is almost no difference between test binaries pl=
aced into an image when it is created and test images transferred

Test *binaries* :)

Alex=


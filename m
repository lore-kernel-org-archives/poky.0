Return-Path: <prvs=0640f0191e=jens.erdmann@auerswald.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E60FE00C4F; Thu, 12 Apr 2018 03:26:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.winet.de (mailout02.winet.de [84.17.108.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26261E00C44
	for <poky@yoctoproject.org>; Thu, 12 Apr 2018 03:26:22 -0700 (PDT)
Received: from fw2.winet.de (mr00.winet.de [192.168.12.10])
	by smtp.winet.de (Postfix) with ESMTPS id 92B86E561F
	for <poky@yoctoproject.org>; Thu, 12 Apr 2018 12:26:20 +0200 (CEST)
Received: from smtp.winet.de (localhost [127.0.0.1])
	by fw2.winet.de (Postfix) with ESMTP id 3F648E38A3
	for <poky@yoctoproject.org>; Thu, 12 Apr 2018 12:26:20 +0200 (CEST)
Received: from mail.auerswald.de (unknown [81.14.169.68])
	by smtp.winet.de (Postfix) with ESMTPSA id 09E0EE3897
	for <poky@yoctoproject.org>; Thu, 12 Apr 2018 12:26:20 +0200 (CEST)
Received: from wsex02.auerswald.de ([172.20.0.66]:21865)
	by mail.auerswald.de with esmtps (TLSv1.2:AES256-GCM-SHA384:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Jens.Erdmann@auerswald.de>)
	id 1f6ZQh-0000GA-1l; Thu, 12 Apr 2018 10:26:11 +0000
Received: from wsex02.auerswald.de (172.20.0.66) by wsex02.auerswald.de
	(172.20.0.66) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1034.26;
	Thu, 12 Apr 2018 12:26:11 +0200
Received: from wsex02.auerswald.de ([fe80::84d7:58d0:dd97:6e40]) by
	wsex02.auerswald.de ([fe80::84d7:58d0:dd97:6e40%14]) with mapi id
	15.01.1034.033; Thu, 12 Apr 2018 12:26:11 +0200
X-CTCH-RefID: str=0001.0A0C0204.5ACF3443.0153, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: "Erdmann, Jens" <Jens.Erdmann@auerswald.de>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [poky] [PATCH] externalsrc: Change absolute symlinks to relative
	ones
Thread-Index: AQHTy1D5uEO/YfzTpkWnbgzIXBSlI6PwsIUmgAniEICAAK14AYABDSWAgACsS+Q=
Date: Thu, 12 Apr 2018 10:26:10 +0000
Message-ID: <33f704dad03a4ee3be0202fd4c0655b9@auerswald.de>
References: <bcd607cf3fb44128b1233e50c96add58@auerswald.de>
	<2405485.rjGM1RfBcv@peggleto-mobl.ger.corp.intel.com>
	<ce823c4534ba4af089bd6f00a0f4056b@auerswald.de>,
	<12698254.5abjYqtIGj@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <12698254.5abjYqtIGj@peggleto-mobl.ger.corp.intel.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.12.203]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] externalsrc: Change absolute symlinks to relative ones
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
X-List-Received-Date: Thu, 12 Apr 2018 10:26:24 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> Even in the absence of this issue I would recommend that you check
> what's going on during do_install because if what I described above is th=
e
> case, it's possible it is installing a whole bunch of files that it shoul=
dn't be.

Hi Paul,

Thanks for your help. You were absolutly right. We had a problem caused by =
the
transition changing a recipe to be a native one, which messed up our do_ins=
tall.
Thank you very much.

Regards,

Jens Erdmann


Return-Path: <prvs=31872cab3=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97033E00B43; Thu,  1 Jun 2017 08:58:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.139.97 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0269]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Jun 2017 08:57:59 PDT
Received: from esa8.bmw.c3s2.iphmx.com (esa8.bmw.c3s2.iphmx.com
	[68.232.139.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0FB4E00992
	for <poky@yoctoproject.org>; Thu,  1 Jun 2017 08:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1496332680; x=1527868680;
	h=from:to:cc:subject:date:message-id:in-reply-to:
	content-id:content-transfer-encoding:mime-version;
	bh=FdGVAmM2Ip4mCdN67ig66GkKRGQHerFL7J4XAV4RPkA=;
	b=jPHdEsdLoA0OGQa4A+muN/W2n3U1Cjlx8wHbyDKac8aH8IkeDEpsrEjc
	v7E71N0cfGP1VhLGRxqG48RzT/1IaiLgfeUGW7q19oV1/eO6yumV9z8uh
	vG2aR9cJkcvrwRSVctw4HgDTnlB6sgcgeT3KebiliJEooVfUGHv7Tet8j 4=;
Received: from esagw4.bmwgroup.com (HELO esagw4.muc) ([160.46.252.39]) by
	esa8.bmw.c3s2.iphmx.com with ESMTP/TLS; 01 Jun 2017 17:56:55 +0200
Received: from esabb4.muc ([160.50.100.33])  by esagw4.muc with ESMTP/TLS;
	01 Jun 2017 17:56:55 +0200
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp)
	([160.48.96.48])
	by esabb4.muc with ESMTP/TLS; 01 Jun 2017 17:56:55 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10l.europe.bmw.corp
	(160.48.96.48) with Microsoft SMTP Server (TLS;
	Thu, 1 Jun 2017 17:56:54 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1263.000;
	Thu, 1 Jun 2017 17:56:54 +0200
From: <Mikko.Rapeli@bmw.de>
To: <bitbake-devel@lists.openembedded.org>, <poky@yoctoproject.org>
Thread-Topic: [PATCH 1/3 v2] bitbake: Fix return value checks from
	subprocess.call()'s
Thread-Index: AQHS2u+wph96K9fdEUKsm2aUv77QVA==
Date: Thu, 1 Jun 2017 15:56:54 +0000
Message-ID: <20170601155654.hmrqbm7zmru2667w@hiutale>
In-Reply-To: <1496332394-6615-1-git-send-email-mikko.rapeli@bmw.de>
	<1496332293-23469-1-git-send-email-mikko.rapeli@bmw.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.44.101]
MIME-Version: 1.0
Cc: openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 1/3 v2] bitbake: Fix return value checks from subprocess.call()'s
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
X-List-Received-Date: Thu, 01 Jun 2017 15:58:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E44E5004C8731A4D822FC1B6FA374938@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hmm, do I need to rebase the patches from yocto to upstream
bitbake and meta-poky git trees?

-Mikko=


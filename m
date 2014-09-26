Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F25A9E007A2; Thu, 25 Sep 2014 20:29:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6301DE00790
	for <poky@yoctoproject.org>; Thu, 25 Sep 2014 20:29:06 -0700 (PDT)
Received: by mail-ig0-f169.google.com with SMTP id l13so282089iga.4
	for <poky@yoctoproject.org>; Thu, 25 Sep 2014 20:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=GRXxSrJVsfJLdoVHtkN2B7K/kI1dCrMaNyMkd63iZ5s=;
	b=XOdqKAnfL72OqjY1YeXXY/AI8EGIcb7c3aI5nFBSr6ZfC/JHIi3NF8/CZVTWc4iFsB
	nLdrnpGDnZSuiYJct9LoIipuMhroAozbmNOdh4CNEBJWXa/JCbIKFqQn8HsvIMyTd12u
	Cv1kkSBbPS9qQzHKQgeK3FrZqPPNSgW3lzytWteKrijCzReEZQBAr0SbpEZstIhNJ4L5
	dhKuNuQjMNFWQXVRS2J0F3qei0kdXIFvUq+tt4qSFM2HSanlc0Wre3PZF0EOcodLGsFa
	r4t4lNCnmMSlggU20i3KmDhaa1jnbeeV4T/vim8i+vwIeMvolp+/0j4EZESmop0zej4S
	zFYg==
X-Received: by 10.50.79.132 with SMTP id j4mr9953085igx.9.1411702146017;
	Thu, 25 Sep 2014 20:29:06 -0700 (PDT)
Received: from 10.168.191.211-ra01.englewood.co.denver.comcast.net
	(fw01.aurora.co.denver.comcast.net. [198.178.8.81])
	by mx.google.com with ESMTPSA id z5sm853622igl.21.2014.09.25.20.29.05
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Sep 2014 20:29:05 -0700 (PDT)
Message-ID: <5424DD80.9070405@gmail.com>
Date: Thu, 25 Sep 2014 20:29:04 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: "Bian, Naimeng" <biannm@cn.fujitsu.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <30DC4EDFD798C94083F3E083754532CCCA4509@G08CNEXMBPEKD02.g08.fujitsu.local>	<1410852082.14624.54.camel@ted>	<30DC4EDFD798C94083F3E083754532CCCA4803@G08CNEXMBPEKD02.g08.fujitsu.local>
	<541A8A89.6030403@gmail.com>
	<30DC4EDFD798C94083F3E083754532CCCA5E8D@G08CNEXMBPEKD02.g08.fujitsu.local>
In-Reply-To: <30DC4EDFD798C94083F3E083754532CCCA5E8D@G08CNEXMBPEKD02.g08.fujitsu.local>
Subject: Re: [Question]Remove $BUILDDIR from gcc -v
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
X-List-Received-Date: Fri, 26 Sep 2014 03:29:15 -0000
Content-Type: text/plain; charset=shift_jis
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 9/18/14 2:46 AM, Bian, Naimeng wrote:
> but setting BUILDDIR to a secret path caused by a miss operation
> will make a leakage of secret.

Thats quite interesting. Why cant you then build in a directory thats
not so _secret_

- -- 
- -Khem
-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.22 (Darwin)
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlQk3YAACgkQuwUzVZGdMxR+eACcCST0l8lYw4+bnoPkEgRKTEgb
OasAnj7GEE/uccQODtkt+NJC2jfUGSmh
=GZkA
-----END PGP SIGNATURE-----


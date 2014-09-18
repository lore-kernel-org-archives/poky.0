Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 250BFE00857; Thu, 18 Sep 2014 00:32:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0F7FE007AA
	for <poky@yoctoproject.org>; Thu, 18 Sep 2014 00:32:28 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id r10so842155pdi.8
	for <poky@yoctoproject.org>; Thu, 18 Sep 2014 00:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=THNhf535gBdzErucEsJJ7rvpGB9bvLJPs5IYGNiFfvE=;
	b=cj00u9AH82m73pp1m0AqN2XKCa3IfliGCGwST9GHCEZaGaDKPga2lNhXZZLxbMSGwI
	gYSLHqbvh18FGqlMFZfwywwujFfyDFQNXhOYGW0kHTvksqnLdUi3tFlrqHH5lKwx3+HB
	2+1e/kMHkygFcgtlR1NT3l9x/h6aV9mtitSr2rMaJdSIvpXhww5wZvDHJBspBVP961GL
	U7R2dFaA3/YZeD7zh7rNBQfhKyUoLV/6BjIimwNEpQTfN0uNkUfcocjiMFVuJy45A/aj
	e70wHsT5QyDiybuxgEDEDRgvXtZPIheX8GH75eLcy2wFKiHn5aKZqksaLhowwDp7Ouid
	puuw==
X-Received: by 10.70.132.73 with SMTP id os9mr3258006pdb.63.1411025547728;
	Thu, 18 Sep 2014 00:32:27 -0700 (PDT)
Received: from CACSVMO-14452.local (c-98-207-177-218.hsd1.ca.comcast.net.
	[98.207.177.218])
	by mx.google.com with ESMTPSA id yr3sm19413702pac.1.2014.09.18.00.32.26
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 18 Sep 2014 00:32:27 -0700 (PDT)
Message-ID: <541A8A89.6030403@gmail.com>
Date: Thu, 18 Sep 2014 00:32:25 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <30DC4EDFD798C94083F3E083754532CCCA4509@G08CNEXMBPEKD02.g08.fujitsu.local>	<1410852082.14624.54.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCCA4803@G08CNEXMBPEKD02.g08.fujitsu.local>
In-Reply-To: <30DC4EDFD798C94083F3E083754532CCCA4803@G08CNEXMBPEKD02.g08.fujitsu.local>
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
X-List-Received-Date: Thu, 18 Sep 2014 07:32:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 9/16/14 6:04 PM, Bian, Naimeng wrote:
> Removing these options is not my purpose, i just want to hide the $BUILDDIR

whats there in BUILDDIR to hide ?

- -- 
- -Khem
-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.22 (Darwin)
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlQaiokACgkQuwUzVZGdMxQuBwCdHxUbnxYl3dmix82Ju/FFSpt9
H3cAn1dcyUie9q+x8WHt4/h87F+Uve6+
=FPZF
-----END PGP SIGNATURE-----


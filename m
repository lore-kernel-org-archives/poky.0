Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EF38E00799; Thu, 16 Oct 2014 03:11:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_WEB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [62.156.150.204 listed in dnsbl.sorbs.net]
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C489BE006EF
	for <poky@yoctoproject.org>; Thu, 16 Oct 2014 03:10:56 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id p9so2504075lbv.5
	for <poky@yoctoproject.org>; Thu, 16 Oct 2014 03:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=Zm4G5ssPMX+4J95eIoIKUSiz7fOmvs1gk+ZP5AmfmG0=;
	b=yh/I2LmJjYjQGFni+8aVJ9Xlu0TcbovF1Xwb4x65+aINQP/uCp6r5PqltbRQMUq98s
	ZH1p/aQFbtpve8DRtOU2P7t4Fcc4RkeZz/dVd2clQu1GGgWxRd0tZ9m99CCZ6jRFi2BN
	pmlA3kmx2vPqZy9OBaepZA4zRe3c5mnJYZyX2cDGU0Wke522CNAhxPX9jfp6TLO4CTVP
	llhHn3Tsrv4gts7nCBo+aSZOIbgHq6uROCXDSfnq2eDJVoTztBaQlwAACF9vMHXTEF77
	l6PiGvFVQVqoncVI4zt0v8ZeECiggtGCiONaDflgZxn3dFVy5kCJrWY++QYSn/4Qbhdo
	fVTg==
X-Received: by 10.152.36.103 with SMTP id p7mr462893laj.44.1413454255049;
	Thu, 16 Oct 2014 03:10:55 -0700 (PDT)
Received: from [10.150.205.66] ([62.156.150.204])
	by mx.google.com with ESMTPSA id l13sm7601615lbh.32.2014.10.16.03.10.53
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 16 Oct 2014 03:10:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <CAO+iiFydzxEy6qkW15eD2R036T=DYhL7J+G5yzGem9cSP9AFqA@mail.gmail.com>
Date: Thu, 16 Oct 2014 12:10:51 +0200
Message-Id: <9C1C9AD1-9813-419B-A268-BBF0432E9159@gmail.com>
References: <CAO+iiFydzxEy6qkW15eD2R036T=DYhL7J+G5yzGem9cSP9AFqA@mail.gmail.com>
To: Johnny Vestergaard <jkv@unixcluster.dk>
X-Mailer: Apple Mail (2.1878.6)
Cc: poky@yoctoproject.org
Subject: Re: read-only rootfs and additional fs
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
X-List-Received-Date: Thu, 16 Oct 2014 10:11:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Am 16.10.2014 um 11:14 schrieb Johnny Vestergaard <jkv@unixcluster.dk>:

> Hi,
>=20
> I have used "root-only-rootfs" for my build of the poky reference =
image - but i would like to mount an additional fs with write permission =
to enable saving a few config files that is configurable by the =
end-user. How would i do that with poky?
>=20
> In essence my question can be boiled down to:
> How do i create and add a additional filesystem to the image?

Even if I cannot recommend that for anybody's use, this can give you a =
starter:

* extend fstab to our needs: =
https://github.com/rdm-dev/meta-jens/tree/master/recipes-core/base-files
* add mount as we want: =
https://github.com/rdm-dev/meta-jens/blob/master/recipes-core/initscripts/=
initscripts/mountunion.sh
* use mount-bind instead of links where applicable: =
https://github.com/rdm-dev/meta-jens/blob/master/recipes-core/initscripts/=
initscripts/populate-volatile.sh
* create image/rootfs bundles we need: =
https://github.com/rdm-dev/meta-jens/blob/master/scripts/mkimgs
* put stuff on a flash-device: =
https://github.com/rdm-dev/meta-jens/tree/master/recipes-rdm/prd/prd-flash=


Cheers
--=20
Jens Rehsack
rehsack@gmail.com







Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A88B1E008D7; Thu, 26 Jan 2017 17:36:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79231E0082E
	for <poky@yoctoproject.org>; Thu, 26 Jan 2017 17:36:01 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 204so23648210pge.2
	for <poky@yoctoproject.org>; Thu, 26 Jan 2017 17:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=l2Vq7EWH0pg91TEXiMgJGwY+NB89wySz2cvoyvWT0gw=;
	b=XBFGwW2JJ1QJiwLIYOiScHnwzI6DlhtkH50GP6JbqUtdjATTe42fTK/8ZiYa8GICvj
	s7Y492XhJEqs3VHawYMtoYtJTXQrxgVw3zkKWK3lYAWdBxgjkKnAPxZCRai1kBCem42U
	M7fh8wGPuCPIngWsXgWLBiEFAy/J5b2Nl2cU17zKWO0wNcnGwsPa1tZItL50a3vYX77S
	oY8MB92tAFBKME6a6bBDkFmvyEBAmzmTqEy8hcPsezX5Jgu0J/UKPjReKQCnlBsBjCg3
	129y6rt1/MgBO5VD6SoRbEU5in3C70KZw7h81/UbiqxweAfrlLtuO6u2lzbx2Ej4Thf2
	xZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=l2Vq7EWH0pg91TEXiMgJGwY+NB89wySz2cvoyvWT0gw=;
	b=IiZd1QF7A+LaI04sW/Ow2eQLiWVWrlTpARw/7eWikn7+6sKTOT+FGBQ1UFrD71/gqT
	cH/m3D3Y0is2IyRXQk5eYoKypK1mQgosu/lw4B7B3b88oVYvullUNXbTYRm5PHUA9DNN
	3BwCepTQeOz15YZ/uGDEgRz9sXZgZOhgynVkyyMJAChKTbCEptqOtC5owHYWxAkSFnl/
	3Rp3Qd9NffURrOz2XHLmdaIDSpeSIBWuETmR1U+K69vg0uUTCQB5B+TVpF1IeAhk3frt
	a4cPt40g2G4Rc78/VAN00Hzriz6TpffGo5immLRWYh3ztWVGZSGlA5N1dD7JZfDr9C9y
	Gzhg==
X-Gm-Message-State: AIkVDXLGt7rYr+yr/+dndmJZwJOwRbYQN374T2XZYEHFAxAtDWzvsfjM6AorkM/s+yR1cA==
X-Received: by 10.99.47.199 with SMTP id v190mr6498184pgv.26.1485480960316;
	Thu, 26 Jan 2017 17:36:00 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:6524:a1c0:a396:fda9])
	by smtp.gmail.com with ESMTPSA id
	z77sm6174695pfk.47.2017.01.26.17.35.59 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jan 2017 17:35:59 -0800 (PST)
To: poky@yoctoproject.org
References: <20170124130413.24928-1-joshua.g.lock@intel.com>
	<20170124150400.GG22316@bill-the-cat>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <01cb82a0-b38a-f56f-cbf9-da212ba4c4a5@gmail.com>
Date: Thu, 26 Jan 2017 17:35:54 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170124150400.GG22316@bill-the-cat>
Subject: Re: [PATCH] poky.conf: prune SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 27 Jan 2017 01:36:04 -0000
X-Groupsio-MsgNum: 10779
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="mUnfqBh4EKw8XT3DVUplEF59dgVW7LP93"

--mUnfqBh4EKw8XT3DVUplEF59dgVW7LP93
Content-Type: multipart/mixed; boundary="RKaGxHf7Uwk6VQK4cNrQCgPBS2Fk3X2Ln";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Message-ID: <01cb82a0-b38a-f56f-cbf9-da212ba4c4a5@gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: prune SANITY_TESTED_DISTROS
References: <20170124130413.24928-1-joshua.g.lock@intel.com>
 <20170124150400.GG22316@bill-the-cat>
In-Reply-To: <20170124150400.GG22316@bill-the-cat>

--RKaGxHf7Uwk6VQK4cNrQCgPBS2Fk3X2Ln
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 1/24/17 7:04 AM, Tom Rini wrote:
> On Tue, Jan 24, 2017 at 01:04:13PM +0000, Joshua Lock wrote:
>> Remove several old/untested distros from the list:
>> * poky-1.8 and poky-2.0 are no longer supported releases
>> * ubuntu-14.04 is an LTS but we plan to remove it from the
>>   project's autobuilder cluster as the kernel is old and
>>   it doesn't use systemd -- therefore this will no longer
>>   be tested.
>=20
> Can you elaborate a bit more on the pain involved with supporting Ubunt=
u
> 14.04?  Or, do you expect to drop Ubuntu 16.04 in favour of 18.04 at
> around this point in 2019 and continue only supporting the latest LTS
> for Ubuntu?  I ask because supported hosts are an important part of
> companies being able to plan their use and upgrade strategies.  Thanks!=

>=20

ubuntu 14.04 is still not EOL until April 2019, and I think lot of folks
will keep using it until its EOLed, so it would be preferable to keep it
as a supported host.

>=20
>=20


--RKaGxHf7Uwk6VQK4cNrQCgPBS2Fk3X2Ln--

--mUnfqBh4EKw8XT3DVUplEF59dgVW7LP93
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAliKo/4ACgkQuwUzVZGdMxQUlACdH+6YAFMTUeQwl8hxw4hp6j/D
UxsAn0aiB/5l80u8QBisPNZQCygV0RYO
=znBb
-----END PGP SIGNATURE-----

--mUnfqBh4EKw8XT3DVUplEF59dgVW7LP93--

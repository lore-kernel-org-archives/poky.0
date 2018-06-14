Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E577CE00EDC; Thu, 14 Jun 2018 09:32:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9DDAE00CC9
	for <poky@yoctoproject.org>; Thu, 14 Jun 2018 09:32:33 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id b17-v6so3510712pfi.0
	for <poky@yoctoproject.org>; Thu, 14 Jun 2018 09:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=ldVa0JXpn8nmH0oEeoJ01QuL35Bc5UOH9GVvu3TBuqY=;
	b=YBQo+dEg/p0Dmv/8ltFqq9GVFEMlzELTCtd1CM9KYriEseo4gV6/CsVl1WN0C7OG/M
	5I4RJI1zQY/gkzn/WaiJwskUNwMuO92knD1WYcvCcAq0wLuQAhiE98QjlkIKZ75snEvf
	yg8cVqv3MgyMQTwv4RfV9IgrlCe1El4SZF7clbQnOV/iM7bqe4rcUgh256VQVSgfCL69
	H3/jTUKm4Z6RZyGnIn1GZ0WC4yCkvszVf2iiRsE9aWzkP7COP7GpLpHkIYHWqRL16Idd
	63jknroemUb26gavqENQzamM2mjYiyORDt0Wegg8pL6ym+WaJ0v3ORHwhcCjz1wpkGl0
	gL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=ldVa0JXpn8nmH0oEeoJ01QuL35Bc5UOH9GVvu3TBuqY=;
	b=ki9AnxUbCm9Q8KjG1j4dB/gahiQa4OKLQFD8IIGfLH698G3na78XDzqlhFX50iRNK9
	q6qQNPspoA97wD/jrK1vFptCwn2+yvRgqIInpllqLWw91aq1AhIIZ4e3+tW0fu+a94vL
	Q3iFtX4CwPUhSS3uJFSHPRs4eFsyUeeNDwejiMPZjVuFTF3ymzPYLgeUlMBMEHjSs7y7
	gaFR85274Awa+fVqIpH0EZyebvN1GqxZC1eU8GpqBRO29kq935R3+ZJwuF6sH3NtiNUY
	ubc2qM6HWGNLM72ZjihKq5CmuYbG6StDl15BZ0iyT16l3eFQ4R8jnP2iO7eOrRTR2JgS
	p6bw==
X-Gm-Message-State: APt69E0ehKxmpiFJ2TqF8UxqQZjGSPcqeTgK5hZ/P+K6tD6uOYTJWi9k
	eo4NTF/O6p60UjfF87rh/phBxaBz
X-Google-Smtp-Source: ADUXVKIclnSq6VQUEfdI7of8ssKH4sYjvgKsgj9Z215kwTt3L1otKYtuJQ0YwzfDfw//nuvKukqIcA==
X-Received: by 2002:a63:444:: with SMTP id 65-v6mr3003647pge.101.1528993952803;
	Thu, 14 Jun 2018 09:32:32 -0700 (PDT)
Received: from ?IPv6:2601:646:877f:9499:819b:b40b:792d:8193?
	([2601:646:877f:9499:819b:b40b:792d:8193])
	by smtp.gmail.com with ESMTPSA id
	u47-v6sm8201100pgn.70.2018.06.14.09.32.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Jun 2018 09:32:32 -0700 (PDT)
To: HRISHIKESH HEMANT BORATE HRISHIKESH HEMANT BORATE
	<evd16i006@iiitdm.ac.in>, poky@yoctoproject.org
References: <CACW=nhRcgr7iA+2fxDe+VDXcwTADdnr16yGU=aBNySYhYMn3Mw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=raj.khem@gmail.com; prefer-encrypt=mutual; keydata=
	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
Message-ID: <7d1b51d9-35e7-b7fc-7781-344566c4491a@gmail.com>
Date: Thu, 14 Jun 2018 09:32:22 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CACW=nhRcgr7iA+2fxDe+VDXcwTADdnr16yGU=aBNySYhYMn3Mw@mail.gmail.com>
Subject: Re: Building Poky without compressed instructions
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
X-List-Received-Date: Thu, 14 Jun 2018 16:32:35 -0000
X-Groupsio-MsgNum: 11293
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="lSokpRrW2Go3huEL8QXrMYzA99JH58Kxl"

--lSokpRrW2Go3huEL8QXrMYzA99JH58Kxl
Content-Type: multipart/mixed; boundary="fEjhjkCD9r9Xjxu66pZXIzwPxN78wvszg";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: HRISHIKESH HEMANT BORATE HRISHIKESH HEMANT BORATE
 <evd16i006@iiitdm.ac.in>, poky@yoctoproject.org
Message-ID: <7d1b51d9-35e7-b7fc-7781-344566c4491a@gmail.com>
Subject: Re: [poky] Building Poky without compressed instructions
References: <CACW=nhRcgr7iA+2fxDe+VDXcwTADdnr16yGU=aBNySYhYMn3Mw@mail.gmail.com>
In-Reply-To: <CACW=nhRcgr7iA+2fxDe+VDXcwTADdnr16yGU=aBNySYhYMn3Mw@mail.gmail.com>

--fEjhjkCD9r9Xjxu66pZXIzwPxN78wvszg
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

hi Hrishikesh

On 6/14/18 1:24 AM, HRISHIKESH HEMANT BORATE HRISHIKESH HEMANT BORATE wro=
te:
> Hello,
>=20
> I am trying to build Poky kernel without compressed instructions using
> bitbake tool.
> So far, from riscv forum, I understood that I will have to modify the
> riscv-gnu-toolchain, rebuild the kernel and add "-march =3D rv64imafd"
> flags to run it without compressed instructions.
>=20
> But, I am unable to change the gnu-toolchain.
>=20
> How should I proceed ?

Please try meta-riscv here https://github.com/riscv/meta-riscv
the intructions are here
https://github.com/riscv/meta-riscv/blob/master/README.md

It will build its own toolchain once you have it up in qemu then you
can tweak conf/machine/include/tune-riscv.inc to add a new tune which
uses -march =3D rv64imafd

>=20
> Thanks and Regards,
> Hrishikesh
>=20



--fEjhjkCD9r9Xjxu66pZXIzwPxN78wvszg--

--lSokpRrW2Go3huEL8QXrMYzA99JH58Kxl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCWyKYmwAKCRC7BTNVkZ0z
FH3pAJ9iiEEPOhwb5PyDHlhjHrgnXIhe9wCglHEDuZO8SVe1AZpth35lywGMISo=
=bH3W
-----END PGP SIGNATURE-----

--lSokpRrW2Go3huEL8QXrMYzA99JH58Kxl--

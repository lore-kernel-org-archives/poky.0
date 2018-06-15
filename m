Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7027E00C61; Fri, 15 Jun 2018 14:34:19 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C6CDE006B4
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 14:34:19 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id z24-v6so5433497pfe.7
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 14:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=jJvI3lOzE+AvSTY+WskdHpfT02RLexFeYz3xQOuzJlg=;
	b=Ahyyx1XNLM5/1lXKhaejRUPkF615TWBf/9p+0UOQs8+JbrDl6kFUqZ9FMqqu8P77rz
	EcZl8MSSsdeTUNfALzIwHtAPd1UHRR2ezBcKKvV649CZGAHhYCkp4CBDylEXTcHS35FT
	GS7TvttgbouslQeG8r94cb8wO/XX/RFslBVusMF8CzkR5f5Gka7WOywwnFObjiVKBi55
	uAsWt+aIGO26q8oDFT6I2s+tA+XLCeaSn8LyPfQ3H+5rMVWcX6cxXwNm4/C7ibXzdiHS
	bMKFcWCUpqy1fWJDkze+y2kw7ZOotYwWIG68u3xcUiMsrhCLkFpI7Hp+QvLhQfLV5Fp0
	MKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=jJvI3lOzE+AvSTY+WskdHpfT02RLexFeYz3xQOuzJlg=;
	b=sWzb9ZuHBUpa5owKvNHCWve7tAty1m2hCRSBUBsHSVl2nvw1XAIH1SrfI+TMDjT75m
	LkaktobnPLpsR6sJzcTnk4dXGlYusuu4OuTsnRjtRRdtOPmwjobDoD3j+ZTiCCaUeApc
	zBRXzIeIvHg7Aov2ytFZo9LjRZYcLZhkI0jjAmxKGNRwsjArL6dIMRy06fK67EaJq5+h
	qAteSM4zRmEd5m0T5fXb2Z7j/uFt767hFmNwBbogSBR+EKbWg+7YAsC8E+zfZjh8Ibb8
	n5mwLD1Vwot7/IQOTLAP5eQZmAawFlrNn0lRSJxHKMoBbuGeuC1i7eDMZy3RY8w06OiQ
	Q4SQ==
X-Gm-Message-State: APt69E3O2eF7F7N7w3OZPU881HConhdQx5qP1JwEy+jWHXffo8EqlruJ
	Ta0SuP2GT7kEd7q9X/iTVPhqU+gh
X-Google-Smtp-Source: ADUXVKJmlQ3XIyCo7rZ6DPPWPc9CvoAhdEY64d1kDimANtyQijU7yST7N8YZb6bnL+2GQj0o6BwrTg==
X-Received: by 2002:a62:c4dd:: with SMTP id
	h90-v6mr3773199pfk.86.1529098458341; 
	Fri, 15 Jun 2018 14:34:18 -0700 (PDT)
Received: from ?IPv6:2601:646:877f:9499:786c:2eeb:1e5f:66e8?
	([2601:646:877f:9499:786c:2eeb:1e5f:66e8])
	by smtp.gmail.com with ESMTPSA id
	63-v6sm6346254pfo.1.2018.06.15.14.34.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Jun 2018 14:34:17 -0700 (PDT)
To: Marc Pernia <marc.pernia@redaptiveinc.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <941E6EEF-B2B6-4022-8FA1-C74869EE3673@contoso.com>
From: Khem Raj <raj.khem@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=raj.khem@gmail.com; prefer-encrypt=mutual; keydata=
	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
Message-ID: <5684131f-fc72-c11e-ddf4-98e1c90e938e@gmail.com>
Date: Fri, 15 Jun 2018 14:34:06 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <941E6EEF-B2B6-4022-8FA1-C74869EE3673@contoso.com>
Subject: Re: How do I apply a patch to a wic configuration file (beagle bone-yocto.wks)?
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
X-List-Received-Date: Fri, 15 Jun 2018 21:34:19 -0000
X-Groupsio-MsgNum: 11297
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="xqeAu8Zd74T4HoWzC8SXpDCCA48NvOpfN"

--xqeAu8Zd74T4HoWzC8SXpDCCA48NvOpfN
Content-Type: multipart/mixed; boundary="0VCvPo18WBQLkNMoYwk7yMlKPX7JBP4bu";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Marc Pernia <marc.pernia@redaptiveinc.com>,
 "poky@yoctoproject.org" <poky@yoctoproject.org>
Message-ID: <5684131f-fc72-c11e-ddf4-98e1c90e938e@gmail.com>
Subject: Re: [poky] How do I apply a patch to a wic configuration file (beagle
 bone-yocto.wks)?
References: <941E6EEF-B2B6-4022-8FA1-C74869EE3673@contoso.com>
In-Reply-To: <941E6EEF-B2B6-4022-8FA1-C74869EE3673@contoso.com>

--0VCvPo18WBQLkNMoYwk7yMlKPX7JBP4bu
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Marc

On 6/14/18 11:51 PM, Marc Pernia wrote:
> I need to patch meta-yacto-bsp/wic/beaglebone-yocto.wks.=C2=A0 I have a=
 patch
> ready, but how can I apply that patch from a recipe in my custom layer.=
=C2=A0
> All the patching I have done in the past has been done with a bbappend
> created for an existing bb file;=C2=A0 this time the target has no bb f=
ile,
> its a .wks file.
>=20

You can define a new wks file in your layer since the default you are
referring to above is a reference. And if your changes are good for this
reference then please post these modifications to yocto mailing list.

Otherwise, if the wks file is specific to image format you want for your
devices then keeping that to your layer would be right thing to do.

> =C2=A0
>=20
> SLR-
>=20
>=20



--0VCvPo18WBQLkNMoYwk7yMlKPX7JBP4bu--

--xqeAu8Zd74T4HoWzC8SXpDCCA48NvOpfN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCWyQw0wAKCRC7BTNVkZ0z
FM9OAJwLb6fvJUdNr5DA4aUqYlkaoR75mACfU4POmJhLtZiaPZK8B+SgdRJp19E=
=uKGs
-----END PGP SIGNATURE-----

--xqeAu8Zd74T4HoWzC8SXpDCCA48NvOpfN--

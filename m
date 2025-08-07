Return-Path: <frederikbraendstrup@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED7D2C87FCA
	for <webhook@archiver.kernel.org>; Thu,  7 Aug 2025 12:01:59 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.49951.1754568116783342871
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Aug 2025 05:01:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=j0uL97Re;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: frederikbraendstrup@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-615c8ca53efso1630812a12.2
        for <poky@lists.yoctoproject.org>; Thu, 07 Aug 2025 05:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754568115; x=1755172915; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JVpImLO+oseHYwzQmJnFD0PFGXHvUPrGw3WOrhS1X8Q=;
        b=j0uL97Re67b3qoTp3JGWHnikbcozzxGP/eyot6S8CAwV+pCZiKAl5YH/aP5f0FtFwD
         dvShe4WhfCqr3IA+Ay5g43hJjfP28G8dw6TS2/3JZC6M106zL7zWBa7vCabBBkQqZBWP
         XcwdzRVYoquIRYB31mCJ4UqC3onNLx2Wb9gkNhCnMxfSunGjUJtYHcwNKanoAzwWlgql
         S22AirxS44OqytRx27kdP6mBs+xI6WUaniOnYFCV2SB+XrllqZqd9KQI1hH+pwdy7hEY
         0RlAlEqc0APuwH/CV0LHyL+Hjxg/gmfCdMNtnJidt3MNnkQrAniCZA3DS72BWEOZDxTO
         jAtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754568115; x=1755172915;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JVpImLO+oseHYwzQmJnFD0PFGXHvUPrGw3WOrhS1X8Q=;
        b=g5ng8noXMTKqUwOlLa8NVozKdtASYd6Sppf57UCDq9J3HpUrPvtAFWTXSDx3JMisso
         13NbBXO4wKrlbL5I8G06k3T1HuRNMMIzJOgibvBLbvzeoeWy/Ubl90n1309uWoEFGlJQ
         y6EnoPt3wgDSF+9UNTVQw1NFd3AizK2oihkOtMQFZUqav0Klj+6oHNtLsMF3Zw8h6lO6
         JZKRZUw8JMTkHVKoq7FxCyE2PsbWRcXYLS+Os3/rQeOFqkqF7pzUhovBsXP18DJ48DsD
         Ecnej/xJuhdIzeMEKRNi7E4vlOzc7EJWye0rrhiy1WKQFk6PDkvbZisdzcK8JE+r0LOf
         /JYQ==
X-Gm-Message-State: AOJu0YxTcZ4Za9XhPMaoENtFXW2f5uI/wL3hGKTdrv7k1LMgM2+tcMu4
	uYAIN0NDIFc5j3PAPN65K5azB/rXuvLdL5HCfFtYbdT3nAtPsbjIPDV0vEfJpw==
X-Gm-Gg: ASbGncvw4pAgq6C8q90BzEGp9YyjkmucJm6dgiFhxD3LFzRQNTXwOf90DJ1pzYD+ehh
	NXsBNHKDV7hRIhYUzT7KFgJRMgo0VDNt4iVx09N5weQETPPQenj8Trtf98r47pDr1AJuQF3TxN2
	L+qWKLqcwQ+qX1Ok+2HNZQv527dkpeoYrMF5uV8zG7C8Hqanlb2wAmYecjqhB0w9f5GsxilXe3i
	tnaWAo1GXkBw38LFP5l3U1v/Z0MpqBeM/HAwoKaEmxYAC1XEQ8n0aVHVe0qVEkVWmjBXtYDJgB5
	V199uRPzE4s8MAn8FMJZ2e7JwEboTMxST4k14jEVC/1i/IU5eVz0GSvEsOVtWdn0FIp3L+3XZOj
	WsVKRJWptHG6ZAqsLWGLkGTRgirMgoS1uFw==
X-Google-Smtp-Source: AGHT+IFrqjWhN1Z0akMBAoqPP2A4uPnbJOg0A9l7eVjzUM7uAWfgQUVuafjfyz4kcnPDkmxKm8cE9Q==
X-Received: by 2002:a17:907:9703:b0:ae3:6651:58ba with SMTP id a640c23a62f3a-af9902dffaemr668849266b.35.1754568114709;
        Thu, 07 Aug 2025 05:01:54 -0700 (PDT)
Received: from ws ([212.98.121.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a076620sm1284213666b.10.2025.08.07.05.01.53
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 05:01:53 -0700 (PDT)
Date: Thu, 7 Aug 2025 14:01:53 +0200
From: Frede Braendstrup <frederikbraendstrup@gmail.com>
To: poky@lists.yoctoproject.org
Subject: dnf5 and libdnf5 target release?
Message-ID: <opg62v3xde6auwtpgveacv7urixrsan2kde6z6xwtdup7igocf@lom5oqfooe26>
References: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
 <31515.1754384245429990929@lists.yoctoproject.org>
 <CANNYZj8hzb=MyNgG5uAd-HAqXkhrYphXasph=RrivhKLH30jxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a5dgznm6xno2omhb"
Content-Disposition: inline
In-Reply-To: <CANNYZj8hzb=MyNgG5uAd-HAqXkhrYphXasph=RrivhKLH30jxg@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Aug 2025 12:01:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13715


--a5dgznm6xno2omhb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: dnf5 and libdnf5 target release?
MIME-Version: 1.0

I'm planning integration with libdnf, but the github page for libdnf
says that it is being superseeded by dnf5 and libdnf5. Are there any
current plans for what poky release that will be included in?

/Frede

--a5dgznm6xno2omhb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEJHy75INGducqKI4mZPwPSika/xoFAmiUla0ACgkQZPwPSika
/xqhWw//Roqkn3vMy1LogAWlGRuYKgv6noT8T+HarrIrSK3xLJ2qS+XxJ5X9UckV
EZN2fP0Xu2f0cnJVq7l9lDZUiAvDBXaia7ChuNsMcqCxKYuZc9Rcm5UCkJngRFoi
RtZplGf9Odb39+a3gLkmPEpOc6PK0yYriYf6c7ChTRfy/zxTo+vem+9D6UNJlE7e
MU9d4q76Q58lAqpPC62LXUlDth0KoKaCw0p+NquvHmXLBrFhr6DwpIQ9E45lU1nU
DLtwELi8FWmnI0n3sOdsvjFCqhQ9LdKnT3x1khfABnQA/gK39/RgvIyXZI6FTYeX
j7EjHyOlEK+oWf23r7/EEM0udLIj6pbDKqanYIe/MT/QepdT7WrGZ7+/LGdPRExU
2Z0xCeSCTqro6CsINnXawUGMuWxiHt4AYM8kqnNXsNTww7/fDd6Pw3uYu+9oewGD
3NnT4+p/WryxgmUEsDV9jLzYkaNp/Ye3bdiMKEcgaeQIZNtNw2zS8kaaMA/qUZ0F
/+GqPUOW4hazojXM4QoNZKtFHRApwZDLNbWeZQLFyjT4JKnC0f9kszaIqmvbpOfJ
IzvDUbdZuRIjGPBPNih3Y2DcxjfcOBckFhMq0j86WhkhB7yTk2y/VXc1YGhal0n4
259dYdRAfcWi9wPlgCA0xI7Mmnbs1Ao2Hcpcgj50vEUTTx9TI1k=
=a0pT
-----END PGP SIGNATURE-----

--a5dgznm6xno2omhb--


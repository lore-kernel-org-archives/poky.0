Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2079EF89248
	for <webhook@archiver.kernel.org>; Tue, 21 Apr 2026 10:01:15 +0000 (UTC)
Received: from fhigh-a3-smtp.messagingengine.com (fhigh-a3-smtp.messagingengine.com [103.168.172.154])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.20660.1776765666451417212
 for <poky@lists.yoctoproject.org>;
 Tue, 21 Apr 2026 03:01:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm1 header.b=DdJK5aqj;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=q0qJdg4C;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.154, mailfrom: paul@pbarker.dev)
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 6AFFF1400153;
	Tue, 21 Apr 2026 06:01:05 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Tue, 21 Apr 2026 06:01:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1776765665; x=1776852065; bh=beBu+w3Jbs
	aH0uVzysMHcNoeWA8IqttmPZ3IkZOe6jI=; b=DdJK5aqj0Dycih3odvO6SBTrHt
	7X8LvE68+IfBfFFB/Hvk43zmNpoNbDZASZuDLX+YhJzi04bBR6Xo24xvGq21/4fM
	LbHZhmPfVDS4SNiD9DvZgo0McQnv5aVZXAakAykoX7l44mTq17hblTJStzByKfDE
	6hq3Ayzj9itYR1noC7VXnXGT0GCs22p92v26nhqAKxiyclpKrzmR9qLHlilK7uRB
	8pF1T/A5ce/8wHfhB+s1QnhKxBTFxv0+DijypcHLmUNjOoIFmkFDETr8LGbGbrtj
	cbTfHGHrB2ncNkf1qCKuAaoRl9Ed3BiBR3r+z52J1hoRWxJmKJriOJ4QHmFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1776765665; x=1776852065; bh=beBu+w3JbsaH0uVzysMHcNoeWA8IqttmPZ3
	IkZOe6jI=; b=q0qJdg4CXFZA4UaQkpGXWyxPNZyW5Am9XfVj2kEM+ya1nV8gHXU
	I9NMhmE5XQcdO0cIPEND2JcrSQq+OkooDH2J7yvvu68n69D5voXD0r1y0UoDqlyJ
	I0o/gqkyZOCNgLqCTzIEJDJB1BWGXrzo9WqubWey8R6xFS6oVfzt6xNL1F8JbczH
	ysmp+vcrUCT3aTHgAJPRWuRDo/L18V7KmZLKT4pp2dyN5nqpVndhAWmeGoTfQbHB
	Z10VbCLV90+s6jE1juZu39NR3durTrKF15LinRHbQkKe9o9bC7T2OYd1SDam1cu5
	F9jHysCd3sT6/oU2EE9TL6GKMq0qcGgyavw==
X-ME-Sender: <xms:4UrnaVWyeVxGOeiDoubpoDC98bB7K4wY7HYIbq7nuTpu0_8Q83tu9w>
    <xme:4UrnaVxCrgYLYjbnffPyspunZ2meHoD4EMXmvm_Ee-zNa5mRkeqgjF1LF7t34ajeS
    TrINJtq0S3JXxKYoX5SKU3mEQiNENCCnpp960SatV4EAz3LnfmNeZY>
X-ME-Received: <xmr:4UrnaTMye4TACrV2A-PduCBJHM4y3Q7eNM9yZFPQpy2J3UonBWfdviq815AsfsilLBftdgyilG75SlBojCcwcj4YkkKSNIXIteCJAPoUBL4q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeiuddutdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefkuffhvfffjghftggfggesghdtreertderjeenucfhrhhomheprfgruhhluceurghr
    khgvrhcuoehprghulhesphgsrghrkhgvrhdruggvvheqnecuggftrfgrthhtvghrnheptd
    eiiefggfehheejvdelgeefffeghfdvgefhleefvdefgeekjeefhfejleektdevnecuffho
    mhgrihhnpehkvghrnhgvlhdrohhrghdphihotghtohhprhhojhgvtghtrdhorhhgnecuve
    hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphgruhhlsehp
    sggrrhhkvghrrdguvghvpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuth
    dprhgtphhtthhopeihohgrnhhnrdgtohhnghgrlhesshhmihhlvgdrfhhrpdhrtghpthht
    ohepphhokhihsehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
X-ME-Proxy: <xmx:4UrnaW6vWILO5_5cSXQ-ragTCEYrLVz5nbxNSpbaUoB5Dm6qbyw8AA>
    <xmx:4UrnaUNxX-g3lrY2W3C0H-VOCVsh0gs75sFeWNzY7YHHsgoIigOMQA>
    <xmx:4UrnaUkevg8VCCaOwnuJLgAZXfkQ4NmQVhyWbhlqi5fBi5RiBWrC1w>
    <xmx:4UrnabRyRm6ChxMNCxhpzjZ_d02i5V60SgFdqRQLjyRu2gX1I9uFrg>
    <xmx:4UrnaUMFfZSORa0yQGDoBMBWZD1bWsYYhqHUb9eIQR8dTVy4LtRAZnM6>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 21 Apr 2026 06:01:04 -0400 (EDT)
Message-ID: <c764f1a37823636c8475bcf778bae5c8fd536615.camel@pbarker.dev>
Subject: Re: [meta-yocto][whinlatter 0/1] Pull request (cover letter only)
From: Paul Barker <paul@pbarker.dev>
To: Yoann Congal <yoann.congal@smile.fr>, poky@lists.yoctoproject.org
Date: Tue, 21 Apr 2026 11:01:02 +0100
In-Reply-To: <cover.1776702689.git.yoann.congal@smile.fr>
References: <cover.1776702689.git.yoann.congal@smile.fr>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=mQINBGC756sBEADXL6cawsZRrDvICz9Y1SG0/lW1me4xpq36obh7a0IGAzp3ywNRb/4MO
 DTqP4+DD0cIFuDY41/N17g0sNlp8z+/k/IIDmNPtYQOTVmAkrkdDU4BP8dD3Cp1PUw6nrbInfujAJ
 NrVM0IVDkwKTbL2Nu1P+xns4MIpF9Kj4XN5celYJ9vEJ2n0Bo0nO5T5vg46dihIaDl+24iNIHSsHq
 YyEdMBfY8kY2RulpaAyFOuaaHdIeDkejVvO5xLSiYLjB5qrRhgH134lJXsuLOsFQ64ybGECuOasnb
 auevsPBAaroQW0pqVb9FneGrWHxMCLlQHJRqQJRdVa6bsUdp6NWra8/0msPawSrFwGQdfJBTA3aXJ
 C2CG1JxEgj6QQjEQA49DSjgzdhInbiIK8Vbp/zedM4aVue7qJnwPMTFQM9lYx63b7wLN4Tu8B9YZ0
 UFdSwMCJuqmYGsYRUYdwM3ArjS0VO6WpU+HBKvzLK5GQfUTSM8KaZ5eA2Uo2ain8SSZb+WptUYKpx
 F9jbtCPbjpZKzGuX4iHFl9eT75TM9iXJNGAjB5xigkADLwVfPoJ5E53S+KdNVuOWHugyLMPNAQHOw
 pw5Rey+0zxyzPd4wphutc93UIU5g/029ngAc7DuKCq12jl7fhkjqFlFtYPIc1k7nd+RSezmH/qRes
 bMErHSX1MBSZQARAQABtB5QYXVsIEJhcmtlciA8cGF1bEBwYmFya2VyLmRldj6JAlcEEwEIAEECGw
 EFCwkIBwIGFQoJCAsCBBYCAwECHgECF4ACGQEWIQSYsqrBAKw/grtdVGd0l1yBt+ZrrAUCaWoNAgU
 JCxiQFgAKCRB0l1yBt+ZrrLhdD/sH+qTaxCDUg47eW329yJWCDZmO+iuYzNSyHMs1x0DHKNIQQ8zN
 pA2S/de4jElQuPHjw/IS8B3VmM62Wuq5vHuxNlFv9IMwrwqi6zhCDui8+nCN/AQGGXousJI/SeZjm
 Y5gS9cqh4vNY+huqEEfdTFXIfTBRkmnvYozSO2uDB3EMuiWgBlw2uLrtmkvPLn/m/GvEouLNox6wv
 tcJcIbL59a0+3jv/m7pnWoZXOkWmKQnfFWikqjuKCISNU0gzBSL4UOj8gtQ2z+vu7ffi29b6SV5IL
 m1yzdbkigEn4HL44lz3N+oHZ3wWsRqqeyGSX5fCfx3tGWg6scZQrpsjT5yq+LiffiXVNpjeJ9KzQw
 0cbAZ/9uhk1sWBroP+/gMhsWjlbFYXVlRvkNKGPI22eZtOEz4jF6OrOONyOoY3i26niJUyIgdBpca
 H0hKUSVQ8VnG7qVTNrQk9BbeoSszqRwViN7lfyVtK9b1TCFuGewOETGn0TPvSzruYCtD3CLm7mjuX
 AMBpIGoRUiCFVmF1hlOgqDyH4F6zRTHhKLpfmNzfQcg+Uo147Q2IHpoh0mJsL4FEZEI8hFyecX1Pq
 7HqnvxGD2OhCof1Z6LDxptX0wbgocnYFNxN5S1owcXZUQOFnzYLlLugrcEjlGCm4Gn7k4SiFERSBj
 UFsQgIhw/7lVVn4o4rQjUGF1bCBCYXJrZXIgPHBhdWxAcGF1bGJhcmtlci5tZS51az6JAlQEEwEIA
 D4CGwEFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AWIQSYsqrBAKw/grtdVGd0l1yBt+ZrrAUCaWoNAw
 UJCxiQFgAKCRB0l1yBt+ZrrHy+EADNMt+ewz8H7BUKpEMMhpaA1VxyXO5IqlKXS0gElMgHYXl7L7C
 0/qLfRH96vwVD33zM+f0Vl9aWWkom/k8s42tLyPvX7D5zTrj3r5muJ+d9dXWGwBFXxXlE9YjSP26K
 bYfRusmRHbbEPlLPSnrr9KYS2FGVD6ViRNhhVguflgPv2i18+fNBE3YyByfNCiQgO/SgaSdh172Ql
 tuYE1Chk6FD45tCUv3dI9lO2PlVwrciiVYvIv/jiTDEwZOISOClTE/Ha18pxDJfLhS8QQnLWuBNX6
 HUkLi78fVmVYbcWIkTuSHjfNoGTMaFijMg9Wl6poFrY++Pl0S40681zEIrwZhW5pKoqXoaElt29Yf
 OwVo6BIsSOLEqKiWsdP7PJTaJYU1ovnshBcOmuXMgc13AjQ4AhEGqI1TaEJ/E1jEDDyTQFeWgrfew
 YaWdqpgiDmRMTj/tIGVj9iy7qZQICUUtlfm0QK6w6M7qq0GdO2o+S3uVF6y2AxQo8l9LSHiW9O35I
 juR37zeqv72puYyOteVYJsJaw999HUmhXc/X/J9FQFw8twxPKDLLu+w8MqDo9bhllzR93Zy/OShuG
 yGybcX3DKO2R+AQ90tXLbxKmHLtrnG/zyDPhLv/LGD480v5hEoT+IS0u9wPD2vP5q36a5DtzqXA/7
 t9PCamLoCvZLleg7GY7QbUGF1bCBCYXJrZXIgPHBhdWxAcGJya3IudWs+iQJeBDABCgBIFiEEmLKq
 wQCsP4K7XVRndJdcgbfma6wFAmlqDRwqHSBwYnJrci51ayBkb21haW4gd2lsbCBiZSBhbGxvd2VkI
 HRvIGxhcHNlAAoJEHSXXIG35muspk0P/1G08N6zGSdw2p8+8f/1HhaYEb9KdQHT1JmQfZUrIHIpD2
 ELNb91Z6Pz197d/igGpox1dzYOwE0WolWo44ZHX2yw+p9V+HJAUKRe0SPc1iNLkTzaAZ7oYJ1DnFh
 aaqZi4VtKKabKeorJjcDvl2apMwT0agRuDklU97n++ZUuXIEo1Z9uRqEvXz0iTSY7wPxwfoVOQsgf
 dN1cBLd9OpoOtJRdDJzQUYqjNoQi+5M6KRfBxPLZkmYb4uCGlp1H4AV50eC61j84LBg1ItvU2u+Fx
 X2JB7lHTswubprD2ZsSwp1VziU6pUj3vtslMWKpBGslpLtnaO561dihGyElayMd4VFg7VR/TsglJv
 A10EDs2DMhoYPfRQWvwlr5+jPP6s9H8KSTCGFvQt438rP/gk0lcEZUJK0iE2/yq5gQfaCNI5FLN7C
 q8LVr00oS4doXfmFFxMq6z1rs5SXZorWssjG7v5DILnPxLqYloQK/ebM5Ixbzm0Lq/8vWL7sw7yOH
 JVYCHCApGzKNii6rYyHdi0K8UwvpD++GCWLyvbgP/H3l5FqL63gAN0Rw1CO5r22+SmG7aOmekJH3N
 ChZPI3NMLnKZPJC8ZQZ4S8yb5oA3rqTA2DMODvsrEVlaB2cQ6IWHSa/mvBwA8Ias3771cp4fZS7W7
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-mpsRCbHUNv8sVeqeJERl"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 21 Apr 2026 10:01:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13911


--=-mpsRCbHUNv8sVeqeJERl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2026-04-20 at 18:33 +0200, Yoann Congal wrote:
> Those are the patches from the last patch review:
> https://lore.kernel.org/poky/cover.1776322970.git.yoann.congal@smile.fr/T=
/#t
>=20
> Passed a-full on autobuilder:
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/3678
> * qemuarm64-ptest failed with #16150 - AB-INT: oe-selftest-armhost: Faile=
d to start QEMU (hangs with drm)
>   https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/350=
3
>   * ... but was sucessfully retried as:
>     https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/3=
505
>=20
> The following changes since commit 9b98ec5e6cfb6c9dc74d3c2e6304eeb274f7c4=
87:
>=20
>   poky.conf: Bump version for 5.3.3 release (2026-03-16 11:04:02 +0000)
>=20
> are available in the Git repository at:
>=20
>   https://git.yoctoproject.org/meta-yocto-contrib stable/whinlatter-next
>   https://git.yoctoproject.org/meta-yocto-contrib/log/?h=3Dstable/whinlat=
ter-next
>=20
> for you to fetch changes up to 612d2774ce53cedf828db4bfd35bd5772e520dd0:
>=20
>   poky: Fix CentOS Stream 9 distro name (2026-04-14 10:08:31 +0200)

Merged, thanks!

--=20
Paul Barker


--=-mpsRCbHUNv8sVeqeJERl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaedK3hEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bimqAP92/wU75C+w//E7t9vvygwWxSicakE5k2wo
JKI0TgECbgD+JI2WonCKUczsRRfWhjEDKwflVnhuHJRVxH4EwBultwM=
=SkxA
-----END PGP SIGNATURE-----

--=-mpsRCbHUNv8sVeqeJERl--


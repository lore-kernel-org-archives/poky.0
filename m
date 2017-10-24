Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 274EBE00D05; Tue, 24 Oct 2017 14:20:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9775DE00CFF
	for <poky@yoctoproject.org>; Tue, 24 Oct 2017 14:20:12 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id q124so18199470wmb.0
	for <poky@yoctoproject.org>; Tue, 24 Oct 2017 14:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=EWHoNPSI9P2MNmP4AwY+wrIMBAWvKUzWNNrtU9uWpUo=;
	b=gi8IYtjU5QPOEIVH6HbIwQSRydVQMS/LhZNzkZUel9LG79j6P01tY6Z517QQLGp77d
	tN5uXxmFjXKnXWt5qd34ebvETvmxdO4DvuA7HGh7sd7bwwanK9NkDp6z2yzaSWKeuIAH
	oNWBFUjv0E1NhcKhbScyNX/ONRBO/NzJf/OchzG0FL4JVFV4S8kGEwoMNomuSG5vEtwo
	zXbQ3BnqsjJwEKolDHkaoopJvfDp2YN6yuZ2HkMFzUaAl1nZIiDAGKKVC1GK2ihyJde6
	Jy9I+YqoQtu5gGHmeEzjvGXjyRXZRSLJpLpZu8rMKstEWfOKXcaYFRFaF65E4ZqA33pA
	7xxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=EWHoNPSI9P2MNmP4AwY+wrIMBAWvKUzWNNrtU9uWpUo=;
	b=oIz1IYGM53TXWqonOxqikBcfZPf5rp95IeDlchiB9fP9DXmJaanI1lWJUUNVUiQDO3
	xslpKdfNjCtaoCuYpnvpLP+lhqjpjzrgpZOOpVLgNbwEJluzh02eGNp4TQ+NagurxFfR
	DX6G+ipmstfghz9vFViLpDCzoGRvw1gcNfBb7r2o1yTOe+uEIKWzQwZ+tPEhHRLoPMJA
	ZDUTNgYkvqCHpzKD6cVUOhKQ74reeCxjbbEj081sK6Rt7NYVGrNCp7F1jCoB3BsxYFP0
	hD58D1EsfeaPaj5thdLNbAJSULlbR53HVOcxh+Ubm7N8Jeg5qWXEUYsezFshGeNiEQHf
	FbSQ==
X-Gm-Message-State: AMCzsaVsDMU7nEaBhfZYWrwJx4Z5l06vw0wc/UjvtGFfcJOny73Lf4k1
	hn/v0vgfelxIc+Nkg0wuSERmPQ==
X-Google-Smtp-Source: ABhQp+Rq0+8Qa7qmUasLefhBtRYVxF9JMbM03dy8s5xBNXxvdccHOe8OodsniKe02foG/vT8w5lGEg==
X-Received: by 10.28.84.89 with SMTP id p25mr9428wmi.112.1508880011307;
	Tue, 24 Oct 2017 14:20:11 -0700 (PDT)
Received: from [10.253.10.43] ([62.168.35.105])
	by smtp.gmail.com with ESMTPSA id
	n14sm1331937wrg.38.2017.10.24.14.20.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Oct 2017 14:20:10 -0700 (PDT)
To: Arno Steffens <star@gmx.li>, "pokyyoctoproject.org" <poky@yoctoproject.org>
References: <trinity-0e3ed1cd-c3b2-47d0-aac1-bfea6bc974ac-1508851020788@3c-app-gmx-bs63>
From: akuster808 <akuster808@gmail.com>
Message-ID: <a62ec986-e796-c5ea-2ac5-ad92e3ce833e@gmail.com>
Date: Tue, 24 Oct 2017 14:20:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <trinity-0e3ed1cd-c3b2-47d0-aac1-bfea6bc974ac-1508851020788@3c-app-gmx-bs63>
Subject: Re: snmpd
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
X-List-Received-Date: Tue, 24 Oct 2017 21:20:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 10/24/2017 06:17 AM, Arno Steffens wrote:
> Sorry for asking - how to get snmpd into my rootfs?
>
> I added net-snmp to my IMAGE_INSTALL. It creates the packages, but at l=
east the net-snmp-server-snmpd is not included in my rootfs. Is there som=
ething to add?
According to the recipe, there is a net-snmp-server-snmpd package, maybe
that binary resides in that? You would need to IMAGE_INSTALL_append=C2=A0=

that package then.

You can also search the tmp*/work/*/net-snmp*/{path to }/packages-split
to see which package is ends up in.


>
> Originally I just need the this server and libnetsnmp30
you can also grep for those name in the package workspace.

- armin
> Thank you
> Arno




Return-Path: <hannandor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A455E00C6A; Tue,  6 Dec 2016 01:41:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hannandor[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f169.google.com (mail-wj0-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B5DDE00C59
	for <poky@yoctoproject.org>; Tue,  6 Dec 2016 01:41:06 -0800 (PST)
Received: by mail-wj0-f169.google.com with SMTP id xy5so313236074wjc.0
	for <poky@yoctoproject.org>; Tue, 06 Dec 2016 01:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=VDM37vUS1BezLt+Td61IwHPseWpeFimQw5vquceuNeI=;
	b=FOBgUyCqiRwG6iN2fFIH1ITbEMeOeNb1US9/WRGKvfVG0sfu1jH1LTR+ikVGgpx1p/
	vm1lQxd39TTIQoccWNwLSvrnCJ3GsCS06kjWg7BJdzxc6oKxUZ+xZjCuBfXfoEcfp420
	qENZz62qRcz8dwWeCm9+u6PoDd6bvHwM3kgpLQGrGwSK4fN4tv0xwLRN214iOKXOkYGB
	9hBdD8cDtrapvXrRGPVUuj5cXcOxosYeM1HZPzhBBA/lGUo/WCt/M2T5jClqr6edKYqO
	aGhtEctpG2kR2A8xQKlxNU6PLxYZhQuieUdU6ixdWlIleiLr9HAaQXXQLHTzfmuy4zWB
	UvSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=VDM37vUS1BezLt+Td61IwHPseWpeFimQw5vquceuNeI=;
	b=WNiM02M2lHSmoShoM7spbUiusCQd/sMIvRR4rR4nKLtOTVPSR58MDk7BQ2A8x5NGVb
	VZcMVJJgkOPH0yjdPCeEOPd3q3BoMTKyRcf7q95foCxCIOBeQLRazQgbaanGYo+eHezk
	gdxO9Rvoql76cayJv2CCdMJfGh83+O38nmi+MDtFzc7N9Y00RDNOrx8l7jSiOTUBwK8+
	K6+6KRyIgu6JqV9XOKtZil4rqh/rC6l5BaW4nKpCla2PVamOXHx7x/4qQhVfezyykWQH
	yJ4B6NxnpmVjRwkfn1kyk/t2MBK0P6z3QJyVI0uQuHZmKmfNok/Es6ejzsAIL2Vkdy/2
	e7LQ==
X-Gm-Message-State: AKaTC00NIplYYBFl5ofpul8XyXSU4/MKjxhOFw4tu8g+7/ZrUonLRgEWEn+nST2zKsvbAA==
X-Received: by 10.25.192.20 with SMTP id q20mr23302655lff.5.1481017265353;
	Tue, 06 Dec 2016 01:41:05 -0800 (PST)
Received: from [192.168.1.103] (82-181-115-116.bb.dnainternet.fi.
	[82.181.115.116]) by smtp.gmail.com with ESMTPSA id
	r21sm3751123lff.17.2016.12.06.01.41.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 01:41:04 -0800 (PST)
To: Rami Rosenbaum <rami@modularity.co.il>, null <poky@yoctoproject.org>
References: <CAFDxLae=RkJJTrjUbjiEj419hyHiRukdyOqgqx_mtUO8dPYTBw@mail.gmail.com>
From: Nandor Han <hannandor@gmail.com>
Message-ID: <1b917e83-345b-abe3-7672-401da19867a2@gmail.com>
Date: Tue, 6 Dec 2016 11:41:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAFDxLae=RkJJTrjUbjiEj419hyHiRukdyOqgqx_mtUO8dPYTBw@mail.gmail.com>
Subject: Re: BB_NO_NETWORK - _git.bb recipies
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
X-List-Received-Date: Tue, 06 Dec 2016 09:41:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Hi Rami,

On 11/22/2016 10:23 PM, Rami Rosenbaum wrote:
> Hi,
> I'm trying to create my own source download mirror to my Yocto build.
> It's an Atmel-based board, I'm using the meta-atmel layer.
> I've made changes in the *at91bootstrap*, *u-boot-at91* and *linux-at91*
> (I'm holding these versions on my SVN).
> So I added a custom meta-xxx layer, with duplicates of these recipes,
> pointing to my repo.
> BBFILE_PRIORITY of meta-xxx is higher than meta-atmel !!!
>
> To my problem:
> After running a successful build, I moved all tarballs to my
> SOURCE_MIRROR_URL.
> I added the *BB_NO_NETWORK* flag and ran the build.
> I got the following error:
> [yocto@yocto: build] > bitbake core-image-minimal
> NOTE: Error during finalise of
> *./meta-atmel/recipes-bsp/at91bootstrap/at91bootstrap_git.bb
> <http://at91bootstrap_git.bb>*                              | ETA:  00:01:54

Just an idea... You mention above that `at91bootstrap` recipe is 
duplicated in your own layer (meta-xxx), so I will investigate why is 
still picked up from `meta-atmel` layer and  not from your own layer.

Hope it helps :)

Nandor

<snip>


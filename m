Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web11.14318.1596183489541305170
 for <poky@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 01:18:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@basmevissen.nl header.s=default header.b=NmY2KrXv;
 spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 85FE9212002;
	Fri, 31 Jul 2020 10:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basmevissen.nl;
	s=default; t=1596183485; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bc/WQq8gWvg+mPjbfVfvAl+PTetS8h0hQTWWSmgY+Xo=;
	b=NmY2KrXvYIMOO6OkA/biT4ufJd3t/l9tEwGlw+qGT508eNuU7DVg/jLAbOakzes9egw20p
	rHKCr0v1XpNLi56dlOoa/pD0M+v74As3yaqKZ2SPgXsDicuDJhv0J4CKdKEgHWq4njmoz4
	e/m/xL6WF5G1JQjSepe60rga+Anj8+Jtp/johORFXldj8JOtw5tyPbP+ZUtsHWb0sYD2jE
	U2cjmFhGGPY+DpaVUGVsTdSWRkLGLSquVXJM/MvzjNLHj1eFIRpdS4VcDaw4/7NBq8Nu04
	fRl3I15vcxyojLGlonqbUxClafNSc8FYPGy3XT0hwQTJ2lKQerdSVosDPJ0mJx6b7vpeCQ
	RiS2ENrXSR6psOv0GRhtUFpLKZ6ZI1gWLP4CXW456appbcObLRmYfFrpIvrX3AHIEIoqCc
	OMI+Ta6R57W+xnb+APzWkpok1x78YVmvux4+9jwYEYvM/mzpJig9NO6Kh84++hwGukcq8Y
	iAuJ6mq2W+b5ic9bWtMK9NuM6ekVPju5OBVydVw+zt3UZuG2CLjtodaIplhpj2DZa4vPlz
	0bpNth3WBtLsTPnbWsdwZZPl21cCTUhvL55y+3RirK/ZAi8ldL7mMckTaoDEuvZWAQR+y1
	M6VSb0sVnc7JWVq4sZR/H7DV5TcEEUYHjBrdc0DYMJMhN0TfUXNd0=
MIME-Version: 1.0
Date: Fri, 31 Jul 2020 10:18:05 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] Error Compilation Yocto - firmware-imx_5.4.bb and firmware-imx.inc - #compiler #yocto #library #devtool #firmware
In-Reply-To: <J4nX.1596133893252693009.HYZS@lists.yoctoproject.org>
References: <J4nX.1596133893252693009.HYZS@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <a236f4b53819ccfd38f380a16e2134bb@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2020-07-30 20:31, kar_947@hotmail.fr wrote:

> Hi everyone,
> 
> I have a big problem during the compilation of the Yocto project. I 
> have an error with the file firmware-imx_5.4.bb and the file 
> firmware-imx.inc. I have tried everything. Please, some can help me?
> 

You best ask that at the meta-freescale mailing list. That is because 
this bb recipe belongs to that Yocto layer and the most knowledgeable 
people about I.MX and Yocto are there (including NXP staff).

Regards,

Bas.

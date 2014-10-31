Return-Path: <jkv@unixcluster.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6187DE008B5; Fri, 31 Oct 2014 04:43:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C206CE00860
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 04:43:09 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id y10so3380563wgg.2
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 04:43:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=jsXkAuIu1jy3bs2PlFjvMxXymg6w/T5CTl7A/4nW55g=;
	b=eSMKnXnl+PwKiw+kKu/G6qhS1Z/tlz3cpez6uWrJ2s9qvqlF3am/ckvpa6zwlklvGu
	NSMLYy34u5qFU2f5zrabd4BGTfQbRWwP7h80rdHRo3aboBrYDGxYppDwyZRSjNttIj/g
	lx4jGhAsyPycAlJoJ0W5Ft+/c4EKbXYTkRO8XFoq4veNxOTFSM2qBZTvWv6N0IoC0BCL
	xua0N+k4dQwxz4ABY59wXSSEfsYsLCooqduM0aczMjqD1+CSyFStz/GvIy/DQuLNufue
	SeLDLdpZHzU0JpdgI6fnAstnRsuJfbD+kMEmhtYVaLMP8+few1Y6lClSRB24k1fxGD2S
	WYJA==
X-Gm-Message-State: ALoCoQkR5ZSa4TBmBF7ei8n60OwKPc+IkX2hHGtrfByp/xlnFL5Ozx6FWmaoZtw7dluGwDvHhJrD
MIME-Version: 1.0
X-Received: by 10.180.93.37 with SMTP id cr5mr3373985wib.76.1414755788774;
	Fri, 31 Oct 2014 04:43:08 -0700 (PDT)
Received: by 10.217.93.197 with HTTP; Fri, 31 Oct 2014 04:43:08 -0700 (PDT)
X-Originating-IP: [87.104.18.136]
Date: Fri, 31 Oct 2014 12:43:08 +0100
Message-ID: <CAO+iiFx2h3Ufga3QTdw4bNdm0-dFCiK1pPT=ngRrJXAoGDz-qQ@mail.gmail.com>
From: Johnny Vestergaard <jkv@unixcluster.dk>
To: poky@yoctoproject.org
Subject: Auto loading nls-iso8859-1kernel module
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
X-List-Received-Date: Fri, 31 Oct 2014 11:43:15 -0000
Content-Type: multipart/alternative; boundary=f46d043c80503cbc570506b680c1

--f46d043c80503cbc570506b680c1
Content-Type: text/plain; charset=UTF-8

Hi list,

I have a basic image where i inherit from core-image and add a few custom
packages - nothing fancy, but I am having problems auto loading a module.

The module in question is the nls-cp437 module which i can load manually
from the root prompt.
To be able to auto load it i tried adding

module_autoload_nls-cp437 = "nls-cp437"

to my one of my package recipes, but not luck.

In which recipe exactly are you suppose to add module_autoload?

regards,
Johnny

--f46d043c80503cbc570506b680c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi list,<div><br></div><div>I have a basic image where i i=
nherit from core-image and add a few custom packages - nothing fancy, but I=
 am having problems auto loading a module.</div><div><br></div><div>The mod=
ule in question is the nls-cp437 module which i can load manually from the =
root prompt.</div><div>To be able to auto load it i tried adding=C2=A0</div=
><div><br></div><div>module_autoload_nls-cp437 =3D &quot;nls-cp437&quot;</d=
iv><div><br></div><div>to my one of my package recipes, but not luck.=C2=A0=
</div><div><br></div><div>In which recipe exactly are you suppose to add mo=
dule_autoload?</div><div><br></div><div>regards,</div><div>Johnny</div>























</div>

--f46d043c80503cbc570506b680c1--

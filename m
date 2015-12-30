Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AAE8E00D03; Wed, 30 Dec 2015 05:44:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 724B0E00B44
	for <poky@yoctoproject.org>; Wed, 30 Dec 2015 05:44:46 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id f206so66772777wmf.0
	for <poky@yoctoproject.org>; Wed, 30 Dec 2015 05:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Olsrk/JjoiqZfkqF7D6SnhrrIiyqqtqOcnil9eh76PI=;
	b=KZ+oKlkCmXIQZJHv9FRTA+/CcJKYYfW3aeRJMRblAlqHbBNW6IecbMCeK34iLcCaX8
	tWaYI9zNRHF+aE5ygpRFtqLjKUMRVk9uY+jZOsUSMYksxdCLvsvYD7BcLuEoP6JxfL6y
	R2yX6y7x/23OrpmSLc24VSB2HLDn772qf2SQk/oRNmA/8XkCxmP98N1ROxFpXq7NullU
	UxPBVp5ohunn8GnqAzQzRi2tdXRCpGWkc/iHMPdJafx4SpXQp2m17OAFq0QwCXMTjIq+
	ucF7SFntiwmTyvVS7laJ7QOkCyFsdD1Iv5tS4DkTVYK91Aj7EWxDw/gidmYfmz/PzcFQ
	bZoQ==
MIME-Version: 1.0
X-Received: by 10.194.87.39 with SMTP id u7mr69852687wjz.11.1451483086079;
	Wed, 30 Dec 2015 05:44:46 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Wed, 30 Dec 2015 05:44:46 -0800 (PST)
Date: Wed, 30 Dec 2015 19:14:46 +0530
Message-ID: <CAA2DH4sENeiyWBkm1ccXN2uQ0YOfu89skL6iAVTLkX3JvN84Uw@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: System Service not being installed
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
X-List-Received-Date: Wed, 30 Dec 2015 13:44:49 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm creating a custom bitbake recipe to install a system service.

I have defined the following variables:
INITSCRIPT_PACKAGES
INITSCRIPT_NAME
INITSCRIPT_PARAMS

I have also inherited update-rc.d class. (I have not added systemd
related information as I am not planning to use that.. I hope that is
fine?)


My init script is seen in the final image: /etc/init.d/myservice
but the startup links are not installed in /etc/rc?.d/


I have checked sample service recipes of dropbear & avahi, but cannot
find out what I'm doing wrong in my script.

How can I debug system service recipe ?
Any extra step to be perfromed?


Regards, PJ


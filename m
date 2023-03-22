Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.48456.1679502877940858471
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 09:34:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=drUbLFbK;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id A61FA2000C;
	Wed, 22 Mar 2023 16:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679502875;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EDxGyGak8LD2gzNgt0Et0nukGgsgh8iWRSRfvyjTMzA=;
	b=drUbLFbKIJIjAHf/cX8uxA0Qgk74Ca1YM2QtZDKCaWxBI1icz5m01+TLCFrppjQw4ossGM
	XD2MA0gZ9mEHB+XNqqEYJ9PC+YuflbjLXVM3o9TdMeCOE+GqFgtpkD0RM3a1huwgRqutUu
	mSmP5focvh09h7aXNkjtTKg2QCI40t/K/QIRYe22zoZKkwRhT4fJytczyK9ZM5DoUDVcTi
	+BGP7jWJuZKvtSeNFdoQDWs0A+c8FGQcwvMOUxtwF3LljS/puNNsJL/37OhQzgwvekylOA
	Fh11ovu8Ev4FESXIY+QEkF4za05XEhD18QlRqp7h3bD/huDcqhZM8SypuIThNw==
Message-ID: <c0eea124-5d1c-ce30-1142-8c3ef0dd8fcc@bootlin.com>
Date: Wed, 22 Mar 2023 17:34:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Cc: Julien Delbergue <jdelbe.foss@gmail.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Subject: Is the "argp" distro feature still used?
Organization: Bootlin
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Greetings,

Following a question on 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=14515#c5, I'm 
wondering whether "argp" is still in use.

Yes, it's still defined in Poky:
meta/conf/distro/include/default-distrovars.inc:DISTRO_FEATURES_DEFAULT 
?= "acl alsa argp bluetooth debuginfod ext2 ipv4 ipv6 largefile pcmcia 
usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 vfat seccomp"

... but I see no recipe and no class referring to it (if I checked 
correctly), neither in Poky nor in meta-oe.

Thanks in advance
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


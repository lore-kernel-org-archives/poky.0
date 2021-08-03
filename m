Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web12.4323.1627993924236155713
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 05:32:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.178.230, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay10.mail.gandi.net (Postfix) with ESMTPSA id 4F6AD24000B;
	Tue,  3 Aug 2021 12:32:02 +0000 (UTC)
Subject: Re: [poky] [PATCH] poky: Use SDKPATHINSTALL instead of SDKPATH
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <20210730155049.3368068-1-richard.purdie@linuxfoundation.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <d8c90433-0676-59ad-2561-b702155007c1@bootlin.com>
Date: Tue, 3 Aug 2021 14:32:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730155049.3368068-1-richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Richard,

On 7/30/21 5:50 PM, Richard Purdie wrote:
> SDKPATHINSTALL is the default installation path used for the SDK but is not
> the path encoded into every SDK binary as the default path. This change
> allows it to contain things like dates without requiring every nativesdk
> recipe to rebuild.


I realize that SDKPATHINSTALL is not documented while SDKPATH is.
Is it worth adding to the documentation?

Cheers,
Michael.

-- 

Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id C25D24C8086F
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 04:07:54 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06A9TDV024138; Thu, 6 Jan 2011 10:09:30 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id yB5yfl+RFZj8; Thu,  6 Jan 2011 10:09:29 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06A9OxS024134
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 6 Jan 2011 10:09:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <4D256E75.8090905@linux.intel.com>
References: <4D256E75.8090905@linux.intel.com>
Date: Thu, 06 Jan 2011 10:07:20 +0000
Message-ID: <1294308440.17519.24099.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL] Consolidated Pull Request
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Jan 2011 10:07:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-05 at 23:25 -0800, Saul Wold wrote:
> Please review this pull request made up of a number of updates and 
> tweaks to the build system.  Most notably is Kevin's fixes for sstate 
> and some of my fixes for the LIC_FILES_CHKSUM and world build enabling.
> 
> This does not have the Perl update as I ran into some issue and will be 
> in touch with Nitin on.

Thanks Saul. I took everything except the two sstate wrapper changes. I
have a suggestion I want to run past Kevin on those.

Cheers,

Richard



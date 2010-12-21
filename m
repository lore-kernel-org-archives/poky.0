Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 552844C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 08:08:24 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLE9ecB012042; Tue, 21 Dec 2010 14:09:41 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id JymBMNLFZ0Gm; Tue, 21 Dec 2010 14:09:40 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLE9WfJ012038
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 14:09:35 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9405051258@orsmsx504.amr.corp.intel.com>
References: <20101205125755.1B42C351@gemini.denx.de>
	<20101211104711.GB10409@gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE9404FAD617@orsmsx504.amr.corp.intel.com>
	<1292431496.18631.2.camel@scimitar> <1292431754.18631.4.camel@scimitar>
	<9DA5872FEF993D41B7173F58FCF6BE9405051258@orsmsx504.amr.corp.intel.com>
Date: Tue, 21 Dec 2010 14:07:46 +0000
Message-ID: <1292940466.25087.6094.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: elfutils build fails on Fedroa 14
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
X-List-Received-Date: Tue, 21 Dec 2010 14:08:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 17:19 -0800, Kamble, Nitin A wrote:
> Thanks Josh for looking at this. Actually we closed this bug. It was
> issue with PATH variable for the bug reporter. It had . in the path
> too early, causing wrong ld to be chosen. Look at
> http://bugzilla.pokylinux.org/show_bug.cgi?id=572 for more
> information.

With issues like this which we can easily detect we should add then to
sanity.bbclass. I added a test in commit 68030f4.

Cheers,

Richard





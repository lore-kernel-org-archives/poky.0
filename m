Return-Path: <Javier.Viguera@digi.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6B7BE007E2
	for <poky@yoctoproject.org>; Fri, 28 Feb 2014 03:07:46 -0800 (PST)
Received: from [216.82.254.211:43388] by server-12.bemta-7.messagelabs.com id
	4B/00-24038-FFD60135; Fri, 28 Feb 2014 11:07:43 +0000
X-Env-Sender: Javier.Viguera@digi.com
X-Msg-Ref: server-10.tower-201.messagelabs.com!1393585661!9810714!1
X-Originating-IP: [66.77.174.13]
X-StarScan-Received: 
X-StarScan-Version: 6.9.16; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 1873 invoked from network); 28 Feb 2014 11:07:42 -0000
Received: from mail.mx1.digi.com (HELO mcl-sms-ns1.digi.com) (66.77.174.13)
	by server-10.tower-201.messagelabs.com with RC4-SHA encrypted SMTP;
	28 Feb 2014 11:07:42 -0000
Received: from MTK-SMS-XCH03.digi.com (10.10.8.197) by mail.mx1.digi.com
	(172.16.1.13) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Fri, 28 Feb 2014 05:07:34 -0600
Received: from dor-sms-exch01.digi.com (10.49.8.100) by MTK-SMS-XCH03.digi.com
	(10.10.8.197) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Fri, 28 Feb 2014 05:07:40 -0600
Received: from [10.101.2.54] (10.101.2.54) by dor-sms-exch01.digi.com
	(10.49.8.100) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Fri, 28 Feb 2014 12:07:39 +0100
Message-ID: <53106DFA.6030308@digi.com>
Date: Fri, 28 Feb 2014 12:07:38 +0100
From: Javier Viguera <javier.viguera@digi.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <991B6481567A894BA8E18E29D118D85801558DEB1EF4@dor-sms-exch01.digi.com>
In-Reply-To: <991B6481567A894BA8E18E29D118D85801558DEB1EF4@dor-sms-exch01.digi.com>
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean
Subject: Re: [for-dora] backport bitbake git fetcher fix
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
X-List-Received-Date: Fri, 28 Feb 2014 11:07:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,

Seems that this didn't catch much attention. Maybe because this is not 
the correct list for bitbake fixes.

I had a look at bitbake git repo and they did not follow the branching 
scheme in openembedded/poky. So where do i need to send a fix for 
bitbake that i need to be included in already-released poky Dora?

-
Javier Viguera
Software Engineer
Digi International® Spain S.A.U.



On 21/02/14 17:54, Viguera, Javier wrote:
> Hi all,
>
> I'm using Dora with a customer kernel that happens to have two very
> similar branch names:
>
> af186b498eb8e39ffa419d356010d67d7fa6dee3 refs/heads/android/v3.10/master
> a094f655dc2ba623742a01dcb744ed0e8ebde3ed refs/heads/v3.10/master
>
> My custom linux recipe does the following to get 'v3.10/master' branch:
>
> KBRANCH_DEFAULT = "v3.10/master"
> KBRANCH = "${KBRANCH_DEFAULT}"
> SRC_URI = "${GIT_URL}linux-2.6.git;protocol=git;branch=${KBRANCH}"
>
> But it always fetchs the 'android/v3.10/master' branch.
>
> This seems to be already fixed in master:
>
> d21c1537b7052aa24ec56434b821fee67de33a83
>
> So could that fix be cherry-picked to Dora?
>
> Directly cherry-picking the commit does not apply cleanly so i attach
> here a reworked patch that applies to Dora.
>
> -
> Javier Viguera
> Software Engineer
> Digi International® Spain S.A.U.
>



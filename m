Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71EDE4C81081
	for <poky@pokylinux.org>; Thu, 23 Dec 2010 11:45:39 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNHl0Qo022872; Thu, 23 Dec 2010 17:47:00 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 2iusSvJ47GZ8; Thu, 23 Dec 2010 17:47:00 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNHktFl022867
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 17:46:57 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Xu, Jiajun" <jiajun.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A319A542A@shsmsx501.ccr.corp.intel.com>
References: <1293105324.1588.708.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A319A542A@shsmsx501.ccr.corp.intel.com>
Date: Thu, 23 Dec 2010 17:45:22 +0000
Message-ID: <1293126322.17519.129.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@pokylinux.org>
Subject: Re: Another sanity test tweak
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
X-List-Received-Date: Thu, 23 Dec 2010 17:45:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2010-12-23 at 23:19 +0800, Xu, Jiajun wrote:
> I tested above code and it works correctly on my machine. One thing
> needs modification is the count value we check.
> 
> diff --git a/scripts/qemuimage-testlib b/scripts/qemuimage-testlib
> index 608c6f0..684929a 100644
> --- a/scripts/qemuimage-testlib
> +++ b/scripts/qemuimage-testlib
> @@ -204,12 +204,12 @@ Test_Kill_Qemu()
>  # function to check if there is any qemu process
>  Test_Check_Qemu_UP()
>  {
> -       local count=`ps -ef | grep -c qemu`
> -       if [ ${count} -lt 2 ]; then
> +       local count=`ps -eo command | cut -d" " -f 1 | grep -c '\(^qemu\|.*/qemu\)'`
> +       if [ ${count} -ne 1 ]; then
>                 Test_Info "There is no Qemu process"
>                 return 1
>         else
> -               Test_Info "There is at least Qemu process running"
> +               Test_Info "There is at least one Qemu process running"
>                 return 0
>         fi
>  }
> 
> > Also, waiting 120 seconds for the qemu network to be up is fine. For
> > the actual process to be running I'd suggest we just wait 10 seconds
> > maximum as if it ever takes longer than that, we have a problem. I'd propose the following change:
> > 
> > @@ -383,9 +383,7 @@ Test_Create_Qemu()
> >         # Get the pid of the xterm processor, which will be used in
> >         Test_Kill_Qemu PID=$!
> > -       sleep 5
> > -
> > -       while [ ${up_time} -lt ${timeout} ]
> > +       while [ ${up_time} -lt 10 ]
> >         do
> >                 Test_Check_Qemu_UP
> >                 if [ $? -ne 0 ]; then
> > Are you ok with these changes?
> > 
> 
> Agree. We don’t' need to wait such a long time for qemu up.

Thanks, I've merged these along with another fix I noticed which I think
was stopping qemu starting on the autobuilder.

Cheers,

Richard


